using System;
using System.Threading;

namespace Pode
{
    /// <summary>
    /// Represents a base connector that manages connection state, suspension, and lifecycle.
    /// </summary>
    public class PodeConnector : IDisposable
    {
        // Fields
        private CancellationTokenSource _combinedTokenSource;
        // Indicates whether the object has been disposed.
        private bool _disposed;

        // Properties
        public bool IsConnected { get; private set; }
        public bool IsDisposed => _disposed;
        public bool ErrorLoggingEnabled { get; set; }
        public string[] ErrorLoggingLevels { get; set; }
        public CancellationToken CancellationToken { get; private set; }
        public CancellationToken SuspensionToken { get; private set; }


        /// <summary>
        /// A token that reflects both the CancellationToken and SuspensionToken.
        /// </summary>
        public CancellationToken CombinedToken => _combinedTokenSource.Token;


        // Constructor
        public PodeConnector(CancellationToken cancellationToken = default, CancellationToken suspensionToken = default)
        {
            CancellationToken = cancellationToken == default
                ? new CancellationTokenSource().Token
                : cancellationToken;

            SuspensionToken = suspensionToken == default
                            ? new CancellationTokenSource().Token
                            : suspensionToken;

            // Create a combined token
            _combinedTokenSource = CancellationTokenSource.CreateLinkedTokenSource(CancellationToken, SuspensionToken);

            IsConnected = false;
            _disposed = false;
        }

        /// <summary>
        /// Starts the connection process.
        /// </summary>
        public virtual void Start()
        {
            ThrowIfDisposed();

            IsConnected = true;
        }


        /// <summary>
        /// Disposes of the resources used by this instance.
        /// </summary>
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this); // Prevent finalizer from running
        }

        /// <summary>
        /// Releases resources used by the object.
        /// </summary>
        /// <param name="disposing">Indicates whether the method is called from Dispose (true) or the finalizer (false).</param>
        protected virtual void Dispose(bool disposing)
        {
            if (!_disposed)
            {

                // stop connecting
                IsConnected = false;

                // close
                Close();
                if (disposing)
                {
                    // Dispose managed resources here.
                    _combinedTokenSource?.Dispose();
                }

                // Free unmanaged resources here, if any.

                _disposed = true;
            }
        }

        /// <summary>
        /// Closes the connection and releases resources. Override this for specific cleanup logic.
        /// </summary>
        protected virtual void Close()
        {
            ThrowIfDisposed();
            throw new NotImplementedException("Close method must be implemented in a derived class.");
        }

        /// <summary>
        /// Throws an exception if the object has been disposed.
        /// </summary>
        protected void ThrowIfDisposed()
        {
#pragma warning disable CA1513 // Use ObjectDisposedException throw helper
            if (_disposed)
            {
                throw new ObjectDisposedException(nameof(PodeConnector));
            }
#pragma warning restore CA1513 // Use ObjectDisposedException throw helper
        }


        ~PodeConnector()
        {
            Dispose(false); // Call Dispose with false in the finalizer
        }
    }
}
