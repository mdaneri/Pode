using System;
using System.Threading;

namespace Pode
{
    public class PodeConnector : IDisposable
    {
        public bool IsConnected { get; private set; }
        public bool IsDisposed { get; private set; }
        public bool ErrorLoggingEnabled { get; set; }
        public string[] ErrorLoggingLevels { get; set; }
        public CancellationToken CancellationToken { get; private set; }

        public PodeConnector(CancellationToken cancellationToken = default(CancellationToken))
        {
            CancellationToken = cancellationToken == default(CancellationToken)
                ? cancellationToken
                : new CancellationTokenSource().Token;

            IsDisposed = false;
        }

        public virtual void Start()
        {
            IsConnected = true;
        }

        protected virtual void Close()
        {
            throw new NotImplementedException();
        }

        public void Dispose()
        {
            // stop connecting
            IsConnected = false;

            // close
            Close();

            // disposed
            IsDisposed = true;
        }
    }
}