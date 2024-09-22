@{
    schemaValidationRequiresPowerShell610ExceptionMessage             = 'La validación del esquema requiere PowerShell versión 6.1.0 o superior.'
    customAccessPathOrScriptBlockRequiredExceptionMessage             = 'Se requiere una ruta o un ScriptBlock para obtener los valores de acceso personalizados.'
    operationIdMustBeUniqueForArrayExceptionMessage                   = 'OperationID: {0} debe ser único y no puede aplicarse a un array.'
    endpointNotDefinedForRedirectingExceptionMessage                  = "No se ha definido un punto de conexión llamado '{0}' para la redirección."
    filesHaveChangedMessage                                           = 'Los siguientes archivos han cambiado:'
    iisAspnetcoreTokenMissingExceptionMessage                         = 'Falta el token IIS ASPNETCORE_TOKEN.'
    minValueGreaterThanMaxExceptionMessage                            = 'El valor mínimo para {0} no debe ser mayor que el valor máximo.'
    noLogicPassedForRouteExceptionMessage                             = 'No se pasó lógica para la Ruta: {0}'
    scriptPathDoesNotExistExceptionMessage                            = 'La ruta del script no existe: {0}'
    mutexAlreadyExistsExceptionMessage                                = 'Ya existe un mutex con el siguiente nombre: {0}'
    listeningOnEndpointsMessage                                       = 'Escuchando en los siguientes {0} punto(s) de conexión [{1} hilo(s)]:'
    unsupportedFunctionInServerlessContextExceptionMessage            = 'La función {0} no es compatible en un contexto sin servidor.'
    expectedNoJwtSignatureSuppliedExceptionMessage                    = 'No se esperaba que se proporcionara una firma JWT.'
    secretAlreadyMountedExceptionMessage                              = "Un Secreto con el nombre '{0}' ya ha sido montado."
    failedToAcquireLockExceptionMessage                               = 'No se pudo adquirir un bloqueo en el objeto.'
    noPathSuppliedForStaticRouteExceptionMessage                      = '[{0}]: No se proporcionó una ruta para la Ruta estática.'
    invalidHostnameSuppliedExceptionMessage                           = 'Nombre de host no válido proporcionado: {0}'
    authMethodAlreadyDefinedExceptionMessage                          = 'Método de autenticación ya definido: {0}'
    csrfCookieRequiresSecretExceptionMessage                          = "Al usar cookies para CSRF, se requiere un Secreto. Puedes proporcionar un Secreto o establecer el secreto global de la Cookie - (Set-PodeCookieSecret '<value>' -Global)"
    nonEmptyScriptBlockRequiredForPageRouteExceptionMessage           = 'Se requiere un ScriptBlock no vacío para crear una Ruta de Página.'
    noPropertiesMutuallyExclusiveExceptionMessage                     = "El parámetro 'NoProperties' es mutuamente excluyente con 'Properties', 'MinProperties' y 'MaxProperties'."
    incompatiblePodeDllExceptionMessage                               = 'Se ha cargado una versión incompatible existente de Pode.DLL {0}. Se requiere la versión {1}. Abra una nueva sesión de Powershell/pwsh e intente de nuevo.'
    accessMethodDoesNotExistExceptionMessage                          = 'El método de acceso no existe: {0}.'
    scheduleAlreadyDefinedExceptionMessage                            = '[Programador] {0}: Programador ya definido.'
    secondsValueCannotBeZeroOrLessExceptionMessage                    = 'El valor en segundos no puede ser 0 o menor para {0}'
    pathToLoadNotFoundExceptionMessage                                = 'No se encontró la ruta para cargar {0}: {1}'
    failedToImportModuleExceptionMessage                              = 'Error al importar el módulo: {0}'
    endpointNotExistExceptionMessage                                  = "No existe un punto de conexión con el protocolo '{0}' y la dirección '{1}' o la dirección local '{2}'."
    terminatingMessage                                                = 'Terminando...'
    noCommandsSuppliedToConvertToRoutesExceptionMessage               = 'No se proporcionaron comandos para convertir a Rutas.'
    invalidTaskTypeExceptionMessage                                   = 'El tipo de tarea no es válido, se esperaba [System.Threading.Tasks.Task] o [hashtable].'
    alreadyConnectedToWebSocketExceptionMessage                       = "Ya conectado al WebSocket con el nombre '{0}'"
    crlfMessageEndCheckOnlySupportedOnTcpEndpointsExceptionMessage    = 'La verificación de final de mensaje CRLF solo es compatible con endpoints TCP.'
    testPodeOAComponentSchemaNeedToBeEnabledExceptionMessage          = "'Test-PodeOAComponentSchema' necesita ser habilitado usando 'Enable-PodeOpenApi -EnableSchemaValidation'"
    adModuleNotInstalledExceptionMessage                              = 'El módulo de Active Directory no está instalado.'
    cronExpressionInvalidExceptionMessage                             = 'La expresión Cron solo debe consistir en 5 partes: {0}'
    noSessionToSetOnResponseExceptionMessage                          = 'No hay ninguna sesión disponible para configurar en la respuesta.'
    valueOutOfRangeExceptionMessage                                   = "El valor '{0}' para {1} no es válido, debe estar entre {2} y {3}"
    loggingMethodAlreadyDefinedExceptionMessage                       = 'Método de registro ya definido: {0}'
    noSecretForHmac256ExceptionMessage                                = 'No se suministró ningún secreto para el hash HMAC256.'
    eolPowerShellWarningMessage                                       = '[ADVERTENCIA] Pode {0} no se ha probado en PowerShell {1}, ya que está en fin de vida.'
    runspacePoolFailedToLoadExceptionMessage                          = '{0} RunspacePool no se pudo cargar.'
    noEventRegisteredExceptionMessage                                 = 'No hay evento {0} registrado: {1}'
    scheduleCannotHaveNegativeLimitExceptionMessage                   = '[Programador] {0}: No puede tener un límite negativo.'
    openApiRequestStyleInvalidForParameterExceptionMessage            = 'El estilo de la solicitud OpenApi no puede ser {0} para un parámetro {1}.'
    openApiDocumentNotCompliantExceptionMessage                       = 'El documento OpenAPI no cumple con las normas.'
    taskDoesNotExistExceptionMessage                                  = "La tarea '{0}' no existe."
    scopedVariableNotFoundExceptionMessage                            = 'Variable de alcance no encontrada: {0}'
    sessionsRequiredForCsrfExceptionMessage                           = 'Se requieren sesiones para usar CSRF a menos que desee usar cookies.'
    nonEmptyScriptBlockRequiredForLoggingMethodExceptionMessage       = 'Se requiere un ScriptBlock no vacío para el método de registro.'
    credentialsPassedWildcardForHeadersLiteralExceptionMessage        = 'Cuando se pasan las Credenciales, el comodín * para los Encabezados se tomará como una cadena literal y no como un comodín.'
    podeNotInitializedExceptionMessage                                = 'Pode no se ha inicializado.'
    multipleEndpointsForGuiMessage                                    = 'Se han definido múltiples puntos de conexión, solo se usará el primero para la GUI.'
    operationIdMustBeUniqueExceptionMessage                           = 'OperationID: {0} debe ser único.'
    invalidJsonJwtExceptionMessage                                    = 'Valor JSON no válido encontrado en JWT'
    noAlgorithmInJwtHeaderExceptionMessage                            = 'No se proporcionó un algoritmo en el encabezado JWT.'
    openApiVersionPropertyMandatoryExceptionMessage                   = 'La propiedad de versión OpenApi es obligatoria.'
    limitValueCannotBeZeroOrLessExceptionMessage                      = 'El valor del límite no puede ser 0 o menor para {0}'
    timerDoesNotExistExceptionMessage                                 = "El temporizador '{0}' no existe."
    openApiGenerationDocumentErrorMessage                             = 'Error en el documento de generación de OpenAPI:'
    routeAlreadyContainsCustomAccessExceptionMessage                  = "La ruta '[{0}] {1}' ya contiene acceso personalizado con el nombre '{2}'"
    maximumConcurrentWebSocketThreadsLessThanMinimumExceptionMessage  = 'El número máximo de hilos concurrentes de WebSocket no puede ser menor que el mínimo de {0}, pero se obtuvo: {1}'
    middlewareAlreadyDefinedExceptionMessage                          = '[Middleware] {0}: Middleware ya definido.'
    invalidAtomCharacterExceptionMessage                              = 'Carácter de átomo cron no válido: {0}'
    invalidCronAtomFormatExceptionMessage                             = 'Formato de átomo cron inválido encontrado: {0}'
    cacheStorageNotFoundForRetrieveExceptionMessage                   = "No se encontró el almacenamiento en caché con el nombre '{0}' al intentar recuperar el elemento en caché '{1}'."
    headerMustHaveNameInEncodingContextExceptionMessage               = 'El encabezado debe tener un nombre cuando se usa en un contexto de codificación.'
    moduleDoesNotContainFunctionExceptionMessage                      = 'El módulo {0} no contiene la función {1} para convertir en una Ruta.'
    pathToIconForGuiDoesNotExistExceptionMessage                      = 'La ruta del icono para la GUI no existe: {0}'
    noTitleSuppliedForPageExceptionMessage                            = 'No se proporcionó título para la página {0}.'
    certificateSuppliedForNonHttpsWssEndpointExceptionMessage         = 'Certificado proporcionado para un endpoint que no es HTTPS/WSS.'
    cannotLockNullObjectExceptionMessage                              = 'No se puede bloquear un objeto nulo.'
    showPodeGuiOnlyAvailableOnWindowsExceptionMessage                 = 'Show-PodeGui actualmente solo está disponible para Windows PowerShell y PowerShell 7+ en Windows.'
    unlockSecretButNoScriptBlockExceptionMessage                      = 'Se suministró un secreto de desbloqueo para el tipo de bóveda secreta personalizada, pero no se suministró ningún ScriptBlock de desbloqueo.'
    invalidIpAddressExceptionMessage                                  = 'La dirección IP suministrada no es válida: {0}'
    maxDaysInvalidExceptionMessage                                    = 'MaxDays debe ser igual o mayor que 0, pero se obtuvo: {0}'
    noRemoveScriptBlockForVaultExceptionMessage                       = "No se suministró ningún ScriptBlock de eliminación para eliminar secretos de la bóveda '{0}'"
    noSecretExpectedForNoSignatureExceptionMessage                    = 'Se esperaba que no se suministrara ningún secreto para ninguna firma.'
    noCertificateFoundExceptionMessage                                = "No se encontró ningún certificado en {0}{1} para '{2}'"
    minValueInvalidExceptionMessage                                   = "El valor mínimo '{0}' para {1} no es válido, debe ser mayor o igual a {2}"
    accessRequiresAuthenticationOnRoutesExceptionMessage              = 'El acceso requiere autenticación en las rutas.'
    noSecretForHmac384ExceptionMessage                                = 'No se suministró ningún secreto para el hash HMAC384.'
    windowsLocalAuthSupportIsForWindowsOnlyExceptionMessage           = 'El soporte de autenticación local de Windows es solo para Windows.'
    definitionTagNotDefinedExceptionMessage                           = 'La etiqueta de definición {0} no está definida.'
    noComponentInDefinitionExceptionMessage                           = 'No hay componente del tipo {0} llamado {1} disponible en la definición de {2}.'
    noSmtpHandlersDefinedExceptionMessage                             = 'No se han definido controladores SMTP.'
    sessionMiddlewareAlreadyInitializedExceptionMessage               = 'El Middleware de Sesión ya se ha inicializado.'
    reusableComponentPathItemsNotAvailableInOpenApi30ExceptionMessage = "La característica del componente reutilizable 'pathItems' no está disponible en OpenAPI v3.0."
    wildcardHeadersIncompatibleWithAutoHeadersExceptionMessage        = 'El comodín * para los Encabezados es incompatible con el interruptor AutoHeaders.'
    noDataForFileUploadedExceptionMessage                             = "No se han subido datos para el archivo '{0}' en la solicitud."
    sseOnlyConfiguredOnEventStreamAcceptHeaderExceptionMessage        = 'SSE solo se puede configurar en solicitudes con un valor de encabezado Accept de text/event-stream.'
    noSessionAvailableToSaveExceptionMessage                          = 'No hay sesión disponible para guardar.'
    pathParameterRequiresRequiredSwitchExceptionMessage               = "Si la ubicación del parámetro es 'Path', el parámetro switch 'Required' es obligatorio."
    noOpenApiUrlSuppliedExceptionMessage                              = 'No se proporcionó URL de OpenAPI para {0}.'
    maximumConcurrentSchedulesInvalidExceptionMessage                 = 'Las programaciones simultáneos máximos deben ser >=1 pero se obtuvo: {0}'
    snapinsSupportedOnWindowsPowershellOnlyExceptionMessage           = 'Los Snapins solo son compatibles con Windows PowerShell.'
    eventViewerLoggingSupportedOnWindowsOnlyExceptionMessage          = 'El registro en el Visor de Eventos solo se admite en Windows.'
    parametersMutuallyExclusiveExceptionMessage                       = "Los parámetros '{0}' y '{1}' son mutuamente excluyentes."
    pathItemsFeatureNotSupportedInOpenApi30ExceptionMessage           = 'La función de elementos de ruta no es compatible con OpenAPI v3.0.x'
    openApiParameterRequiresNameExceptionMessage                      = 'El parámetro OpenApi requiere un nombre especificado.'
    maximumConcurrentTasksLessThanMinimumExceptionMessage             = 'El número máximo de tareas concurrentes no puede ser menor que el mínimo de {0}, pero se obtuvo: {1}'
    noSemaphoreFoundExceptionMessage                                  = "No se encontró ningún semáforo llamado '{0}'"
    singleValueForIntervalExceptionMessage                            = 'Solo puede suministrar un único valor {0} cuando utiliza intervalos.'
    jwtNotYetValidExceptionMessage                                    = 'El JWT aún no es válido.'
    verbAlreadyDefinedForUrlExceptionMessage                          = '[Verbo] {0}: Ya está definido para {1}'
    noSecretNamedMountedExceptionMessage                              = "No se ha montado ningún Secreto con el nombre '{0}'."
    moduleOrVersionNotFoundExceptionMessage                           = 'No se encontró el módulo o la versión en {0}: {1}@{2}'
    noScriptBlockSuppliedExceptionMessage                             = 'No se suministró ningún ScriptBlock.'
    noSecretVaultRegisteredExceptionMessage                           = "No se ha registrado un Cofre de Secretos con el nombre '{0}'."
    nameRequiredForEndpointIfRedirectToSuppliedExceptionMessage       = 'Se requiere un nombre para el endpoint si se proporciona el parámetro RedirectTo.'
    openApiLicenseObjectRequiresNameExceptionMessage                  = "El objeto OpenAPI 'license' requiere la propiedad 'name'. Use el parámetro -LicenseName."
    sourcePathDoesNotExistForStaticRouteExceptionMessage              = '{0}: La ruta de origen proporcionada para la Ruta estática no existe: {1}'
    noNameForWebSocketDisconnectExceptionMessage                      = 'No se proporcionó ningún nombre para desconectar el WebSocket.'
    certificateExpiredExceptionMessage                                = "El certificado '{0}' ha expirado: {1}"
    secretVaultUnlockExpiryDateInPastExceptionMessage                 = 'La fecha de expiración para desbloquear el Cofre de Secretos está en el pasado (UTC): {0}'
    invalidWebExceptionTypeExceptionMessage                           = 'La excepción es de un tipo no válido, debe ser WebException o HttpRequestException, pero se obtuvo: {0}'
    invalidSecretValueTypeExceptionMessage                            = 'El valor del secreto es de un tipo no válido. Tipos esperados: String, SecureString, HashTable, Byte[], o PSCredential. Pero se obtuvo: {0}'
    explicitTlsModeOnlySupportedOnSmtpsTcpsEndpointsExceptionMessage  = 'El modo TLS explícito solo es compatible con endpoints SMTPS y TCPS.'
    discriminatorMappingRequiresDiscriminatorPropertyExceptionMessage = "El parámetro 'DiscriminatorMapping' solo se puede usar cuando está presente la propiedad 'DiscriminatorProperty'."
    scriptErrorExceptionMessage                                       = "Error '{0}' en el script {1} {2} (línea {3}) carácter {4} al ejecutar {5} en el objeto {6} '{7}' Clase: {8} ClaseBase: {9}"
    cannotSupplyIntervalForQuarterExceptionMessage                    = 'No se puede proporcionar un valor de intervalo para cada trimestre.'
    scheduleEndTimeMustBeInFutureExceptionMessage                     = '[Programador] {0}: El valor de EndTime debe estar en el futuro.'
    invalidJwtSignatureSuppliedExceptionMessage                       = 'Firma JWT proporcionada no válida.'
    noSetScriptBlockForVaultExceptionMessage                          = "No se suministró ningún ScriptBlock de configuración para actualizar/crear secretos en la bóveda '{0}'"
    accessMethodNotExistForMergingExceptionMessage                    = 'El método de acceso no existe para fusionarse: {0}'
    defaultAuthNotInListExceptionMessage                              = "La autenticación predeterminada '{0}' no está en la lista de autenticación proporcionada."
    parameterHasNoNameExceptionMessage                                = "El parámetro no tiene nombre. Asigne un nombre a este componente usando el parámetro 'Name'."
    methodPathAlreadyDefinedForUrlExceptionMessage                    = '[{0}] {1}: Ya está definido para {2}'
    fileWatcherAlreadyDefinedExceptionMessage                         = "Un Observador de Archivos llamado '{0}' ya ha sido definido."
    noServiceHandlersDefinedExceptionMessage                          = 'No se han definido controladores de servicio.'
    secretRequiredForCustomSessionStorageExceptionMessage             = 'Se requiere un secreto cuando se utiliza el almacenamiento de sesión personalizado.'
    secretManagementModuleNotInstalledExceptionMessage                = 'El módulo Microsoft.PowerShell.SecretManagement no está instalado.'
    noPathSuppliedForRouteExceptionMessage                            = 'No se proporcionó una ruta para la Ruta.'
    validationOfAnyOfSchemaNotSupportedExceptionMessage               = "La validación de un esquema que incluye 'anyof' no es compatible."
    iisAuthSupportIsForWindowsOnlyExceptionMessage                    = 'El soporte de autenticación IIS es solo para Windows.'
    oauth2InnerSchemeInvalidExceptionMessage                          = 'OAuth2 InnerScheme solo puede ser Basic o Form, pero se obtuvo: {0}'
    noRoutePathSuppliedForPageExceptionMessage                        = 'No se proporcionó ruta de acceso para la página {0}.'
    cacheStorageNotFoundForExistsExceptionMessage                     = "No se encontró el almacenamiento en caché con el nombre '{0}' al intentar comprobar si el elemento en caché '{1}' existe."
    handlerAlreadyDefinedExceptionMessage                             = '[{0}] {1}: Manejador ya definido.'
    sessionsNotConfiguredExceptionMessage                             = 'Las sesiones no se han configurado.'
    propertiesTypeObjectAssociationExceptionMessage                   = 'Solo las propiedades de tipo Objeto pueden estar asociadas con {0}.'
    sessionsRequiredForSessionPersistentAuthExceptionMessage          = 'Se requieren sesiones para usar la autenticación persistente de sesión.'
    invalidPathWildcardOrDirectoryExceptionMessage                    = 'La ruta suministrada no puede ser un comodín o un directorio: {0}'
    accessMethodAlreadyDefinedExceptionMessage                        = 'Método de acceso ya definido: {0}'
    parametersValueOrExternalValueMandatoryExceptionMessage           = "Los parámetros 'Value' o 'ExternalValue' son obligatorios."
    maximumConcurrentTasksInvalidExceptionMessage                     = 'El número máximo de tareas concurrentes debe ser >=1, pero se obtuvo: {0}'
    cannotCreatePropertyWithoutTypeExceptionMessage                   = 'No se puede crear la propiedad porque no se ha definido ningún tipo.'
    authMethodNotExistForMergingExceptionMessage                      = 'El método de autenticación no existe para la fusión: {0}'
    maxValueInvalidExceptionMessage                                   = "El valor máximo '{0}' para {1} no es válido, debe ser menor o igual a {2}"
    endpointAlreadyDefinedExceptionMessage                            = "Ya se ha definido un punto de conexión llamado '{0}'."
    eventAlreadyRegisteredExceptionMessage                            = 'Evento {0} ya registrado: {1}'
    parameterNotSuppliedInRequestExceptionMessage                     = "No se ha proporcionado un parámetro llamado '{0}' en la solicitud o no hay datos disponibles."
    cacheStorageNotFoundForSetExceptionMessage                        = "No se encontró el almacenamiento en caché con el nombre '{0}' al intentar establecer el elemento en caché '{1}'."
    methodPathAlreadyDefinedExceptionMessage                          = '[{0}] {1}: Ya está definido.'
    valueForUsingVariableNotFoundExceptionMessage                     = "No se pudo encontrar el valor para '`$using:{0}'."
    rapidPdfDoesNotSupportOpenApi31ExceptionMessage                   = 'La herramienta de documentación RapidPdf no admite OpenAPI 3.1'
    oauth2ClientSecretRequiredExceptionMessage                        = 'OAuth2 requiere un Client Secret cuando no se usa PKCE.'
    invalidBase64JwtExceptionMessage                                  = 'Valor Base64 no válido encontrado en JWT'
    noSessionToCalculateDataHashExceptionMessage                      = 'No hay ninguna sesión disponible para calcular el hash de datos.'
    cacheStorageNotFoundForRemoveExceptionMessage                     = "No se encontró el almacenamiento en caché con el nombre '{0}' al intentar eliminar el elemento en caché '{1}'."
    csrfMiddlewareNotInitializedExceptionMessage                      = 'El Middleware CSRF no se ha inicializado.'
    infoTitleMandatoryMessage                                         = 'info.title es obligatorio.'
    typeCanOnlyBeAssociatedWithObjectExceptionMessage                 = 'El tipo {0} solo se puede asociar con un Objeto.'
    userFileDoesNotExistExceptionMessage                              = 'El archivo de usuario no existe: {0}'
    routeParameterNeedsValidScriptblockExceptionMessage               = 'El parámetro Route necesita un ScriptBlock válido y no vacío.'
    nextTriggerCalculationErrorExceptionMessage                       = 'Parece que algo salió mal al intentar calcular la siguiente fecha y hora del disparador: {0}'
    cannotLockValueTypeExceptionMessage                               = 'No se puede bloquear un [ValueType].'
    failedToCreateOpenSslCertExceptionMessage                         = 'Error al crear el certificado OpenSSL: {0}'
    jwtExpiredExceptionMessage                                        = 'El JWT ha expirado.'
    openingGuiMessage                                                 = 'Abriendo la GUI.'
    multiTypePropertiesRequireOpenApi31ExceptionMessage               = 'Las propiedades de tipo múltiple requieren OpenApi versión 3.1 o superior.'
    noNameForWebSocketRemoveExceptionMessage                          = 'No se proporcionó ningún nombre para eliminar el WebSocket.'
    maxSizeInvalidExceptionMessage                                    = 'MaxSize debe ser igual o mayor que 0, pero se obtuvo: {0}'
    iisShutdownMessage                                                = '(Apagado de IIS)'
    cannotUnlockValueTypeExceptionMessage                             = 'No se puede desbloquear un [ValueType].'
    noJwtSignatureForAlgorithmExceptionMessage                        = 'No se proporcionó una firma JWT para {0}.'
    maximumConcurrentWebSocketThreadsInvalidExceptionMessage          = 'El número máximo de hilos concurrentes de WebSocket debe ser >=1, pero se obtuvo: {0}'
    acknowledgeMessageOnlySupportedOnSmtpTcpEndpointsExceptionMessage = 'El mensaje de reconocimiento solo es compatible con endpoints SMTP y TCP.'
    failedToConnectToUrlExceptionMessage                              = 'Error al conectar con la URL: {0}'
    failedToAcquireMutexOwnershipExceptionMessage                     = 'No se pudo adquirir la propiedad del mutex. Nombre del mutex: {0}'
    sessionsRequiredForOAuth2WithPKCEExceptionMessage                 = 'Se requieren sesiones para usar OAuth2 con PKCE.'
    failedToConnectToWebSocketExceptionMessage                        = 'Error al conectar con el WebSocket: {0}'
    unsupportedObjectExceptionMessage                                 = 'Objeto no compatible'
    failedToParseAddressExceptionMessage                              = "Error al analizar '{0}' como una dirección IP/Host:Puerto válida"
    mustBeRunningWithAdminPrivilegesExceptionMessage                  = 'Debe estar ejecutándose con privilegios de administrador para escuchar en direcciones que no sean localhost.'
    specificationMessage                                              = 'Especificación'
    cacheStorageNotFoundForClearExceptionMessage                      = "No se encontró el almacenamiento en caché con el nombre '{0}' al intentar vaciar la caché."
    restartingServerMessage                                           = 'Reiniciando el servidor...'
    cannotSupplyIntervalWhenEveryIsNoneExceptionMessage               = "No se puede proporcionar un intervalo cuando el parámetro 'Every' está configurado en None."
    unsupportedJwtAlgorithmExceptionMessage                           = 'El algoritmo JWT actualmente no es compatible: {0}'
    websocketsNotConfiguredForSignalMessagesExceptionMessage          = 'WebSockets no están configurados para enviar mensajes de señal.'
    invalidLogicTypeInHashtableMiddlewareExceptionMessage             = 'Un Middleware Hashtable suministrado tiene un tipo de lógica no válido. Se esperaba ScriptBlock, pero se obtuvo: {0}'
    maximumConcurrentSchedulesLessThanMinimumExceptionMessage         = 'Las programaciones simultáneos máximos no pueden ser inferiores al mínimo de {0} pero se obtuvo: {1}'
    failedToAcquireSemaphoreOwnershipExceptionMessage                 = 'No se pudo adquirir la propiedad del semáforo. Nombre del semáforo: {0}'
    propertiesParameterWithoutNameExceptionMessage                    = 'Los parámetros de propiedades no se pueden usar si la propiedad no tiene nombre.'
    customSessionStorageMethodNotImplementedExceptionMessage          = "El almacenamiento de sesión personalizado no implementa el método requerido '{0}()'."
    authenticationMethodDoesNotExistExceptionMessage                  = 'El método de autenticación no existe: {0}'
    webhooksFeatureNotSupportedInOpenApi30ExceptionMessage            = 'La función de Webhooks no es compatible con OpenAPI v3.0.x'
    invalidContentTypeForSchemaExceptionMessage                       = "'content-type' inválido encontrado para el esquema: {0}"
    noUnlockScriptBlockForVaultExceptionMessage                       = "No se suministró ningún ScriptBlock de desbloqueo para desbloquear la bóveda '{0}'"
    definitionTagMessage                                              = 'Definición {0}:'
    failedToOpenRunspacePoolExceptionMessage                          = 'Error al abrir RunspacePool: {0}'
    failedToCloseRunspacePoolExceptionMessage                         = 'No se pudo cerrar el RunspacePool: {0}'
    verbNoLogicPassedExceptionMessage                                 = '[Verbo] {0}: No se pasó ninguna lógica'
    noMutexFoundExceptionMessage                                      = "No se encontró ningún mutex llamado '{0}'"
    documentationMessage                                              = 'Documentación'
    timerAlreadyDefinedExceptionMessage                               = '[Temporizador] {0}: Temporizador ya definido.'
    invalidPortExceptionMessage                                       = 'El puerto no puede ser negativo: {0}'
    viewsFolderNameAlreadyExistsExceptionMessage                      = 'El nombre de la carpeta Views ya existe: {0}'
    noNameForWebSocketResetExceptionMessage                           = 'No se proporcionó ningún nombre para restablecer el WebSocket.'
    mergeDefaultAuthNotInListExceptionMessage                         = "La autenticación MergeDefault '{0}' no está en la lista de autenticación proporcionada."
    descriptionRequiredExceptionMessage                               = 'Se requiere una descripción para la Ruta:{0} Respuesta:{1}'
    pageNameShouldBeAlphaNumericExceptionMessage                      = 'El nombre de la página debe ser un valor alfanumérico válido: {0}'
    defaultValueNotBooleanOrEnumExceptionMessage                      = 'El valor predeterminado no es un booleano y no forma parte del enum.'
    openApiComponentSchemaDoesNotExistExceptionMessage                = 'El esquema del componente OpenApi {0} no existe.'
    timerParameterMustBeGreaterThanZeroExceptionMessage               = '[Temporizador] {0}: {1} debe ser mayor que 0.'
    taskTimedOutExceptionMessage                                      = 'La tarea ha agotado el tiempo después de {0}ms.'
    scheduleStartTimeAfterEndTimeExceptionMessage                     = "[Programador] {0}: No puede tener un 'StartTime' después del 'EndTime'"
    infoVersionMandatoryMessage                                       = 'info.version es obligatorio.'
    cannotUnlockNullObjectExceptionMessage                            = 'No se puede desbloquear un objeto nulo.'
    nonEmptyScriptBlockRequiredForCustomAuthExceptionMessage          = 'Se requiere un ScriptBlock no vacío para el esquema de autenticación personalizado.'
    nonEmptyScriptBlockRequiredForAuthMethodExceptionMessage          = 'Se requiere un ScriptBlock no vacío para el método de autenticación.'
    validationOfOneOfSchemaNotSupportedExceptionMessage               = "La validación de un esquema que incluye 'oneof' no es compatible."
    routeParameterCannotBeNullExceptionMessage                        = "El parámetro 'Route' no puede ser nulo."
    cacheStorageAlreadyExistsExceptionMessage                         = "Ya existe un almacenamiento en caché con el nombre '{0}'."
    loggingMethodRequiresValidScriptBlockExceptionMessage             = "El método de salida proporcionado para el método de registro '{0}' requiere un ScriptBlock válido."
    scopedVariableAlreadyDefinedExceptionMessage                      = 'La variable con alcance ya está definida: {0}'
    oauth2RequiresAuthorizeUrlExceptionMessage                        = 'OAuth2 requiere que se proporcione una URL de autorización.'
    pathNotExistExceptionMessage                                      = 'La ruta no existe: {0}'
    noDomainServerNameForWindowsAdAuthExceptionMessage                = 'No se ha proporcionado un nombre de servidor de dominio para la autenticación AD de Windows.'
    suppliedDateAfterScheduleEndTimeExceptionMessage                  = 'La fecha proporcionada es posterior a la hora de finalización del programación en {0}'
    wildcardMethodsIncompatibleWithAutoMethodsExceptionMessage        = 'El comodín * para los Métodos es incompatible con el interruptor AutoMethods.'
    cannotSupplyIntervalForYearExceptionMessage                       = 'No se puede proporcionar un valor de intervalo para cada año.'
    missingComponentsMessage                                          = 'Componente(s) faltante(s)'
    invalidStrictTransportSecurityDurationExceptionMessage            = 'Duración de Strict-Transport-Security no válida proporcionada: {0}. Debe ser mayor que 0.'
    noSecretForHmac512ExceptionMessage                                = 'No se suministró ningún secreto para el hash HMAC512.'
    daysInMonthExceededExceptionMessage                               = '{0} solo tiene {1} días, pero se suministró {2}.'
    nonEmptyScriptBlockRequiredForCustomLoggingExceptionMessage       = 'Se requiere un ScriptBlock no vacío para el método de salida de registro personalizado.'
    encodingAttributeOnlyAppliesToMultipartExceptionMessage           = 'El atributo de codificación solo se aplica a cuerpos de solicitud multipart y application/x-www-form-urlencoded.'
    suppliedDateBeforeScheduleStartTimeExceptionMessage               = 'La fecha proporcionada es anterior a la hora de inicio del programación en {0}'
    unlockSecretRequiredExceptionMessage                              = "Se requiere una propiedad 'UnlockSecret' al usar Microsoft.PowerShell.SecretStore"
    noLogicPassedForMethodRouteExceptionMessage                       = '[{0}] {1}: No se pasó lógica.'
    bodyParserAlreadyDefinedForContentTypeExceptionMessage            = 'Un analizador de cuerpo ya está definido para el tipo de contenido {0}.'
    invalidJwtSuppliedExceptionMessage                                = 'JWT proporcionado no válido.'
    sessionsRequiredForFlashMessagesExceptionMessage                  = 'Se requieren sesiones para usar mensajes Flash.'
    semaphoreAlreadyExistsExceptionMessage                            = 'Ya existe un semáforo con el siguiente nombre: {0}'
    invalidJwtHeaderAlgorithmSuppliedExceptionMessage                 = 'Algoritmo del encabezado JWT proporcionado no válido.'
    oauth2ProviderDoesNotSupportPasswordGrantTypeExceptionMessage     = "El proveedor de OAuth2 no admite el tipo de concesión 'password' requerido al usar un InnerScheme."
    invalidAliasFoundExceptionMessage                                 = 'Se encontró un alias {0} no válido: {1}'
    scheduleDoesNotExistExceptionMessage                              = "El programación '{0}' no existe."
    accessMethodNotExistExceptionMessage                              = 'El método de acceso no existe: {0}'
    oauth2ProviderDoesNotSupportCodeResponseTypeExceptionMessage      = "El proveedor de OAuth2 no admite el tipo de respuesta 'code'."
    untestedPowerShellVersionWarningMessage                           = '[ADVERTENCIA] Pode {0} no se ha probado en PowerShell {1}, ya que no estaba disponible cuando se lanzó Pode.'
    secretVaultAlreadyRegisteredAutoImportExceptionMessage            = "Ya se ha registrado un Bóveda Secreta con el nombre '{0}' al importar automáticamente Bóvedas Secretas."
    schemeRequiresValidScriptBlockExceptionMessage                    = "El esquema proporcionado para el validador de autenticación '{0}' requiere un ScriptBlock válido."
    serverLoopingMessage                                              = 'Bucle del servidor cada {0} segundos'
    certificateThumbprintsNameSupportedOnWindowsExceptionMessage      = 'Las huellas digitales/nombres de certificados solo son compatibles con Windows.'
    sseConnectionNameRequiredExceptionMessage                         = "Se requiere un nombre de conexión SSE, ya sea de -Name o `$WebEvent.Sse.Name"
    invalidMiddlewareTypeExceptionMessage                             = 'Uno de los Middlewares suministrados es de un tipo no válido. Se esperaba ScriptBlock o Hashtable, pero se obtuvo: {0}'
    noSecretForJwtSignatureExceptionMessage                           = 'No se suministró ningún secreto para la firma JWT.'
    modulePathDoesNotExistExceptionMessage                            = 'La ruta del módulo no existe: {0}'
    taskAlreadyDefinedExceptionMessage                                = '[Tarea] {0}: Tarea ya definida.'
    verbAlreadyDefinedExceptionMessage                                = '[Verbo] {0}: Ya está definido'
    clientCertificatesOnlySupportedOnHttpsEndpointsExceptionMessage   = 'Los certificados de cliente solo son compatibles con endpoints HTTPS.'
    endpointNameNotExistExceptionMessage                              = "No existe un punto de conexión con el nombre '{0}'."
    middlewareNoLogicSuppliedExceptionMessage                         = '[Middleware]: No se suministró lógica en el ScriptBlock.'
    scriptBlockRequiredForMergingUsersExceptionMessage                = 'Se requiere un ScriptBlock para fusionar múltiples usuarios autenticados en un solo objeto cuando Valid es All.'
    secretVaultAlreadyRegisteredExceptionMessage                      = "Un Cofre de Secretos con el nombre '{0}' ya ha sido registrado{1}."
    deprecatedTitleVersionDescriptionWarningMessage                   = "ADVERTENCIA: Título, Versión y Descripción en 'Enable-PodeOpenApi' están obsoletos. Utilice 'Add-PodeOAInfo' en su lugar."
    undefinedOpenApiReferencesMessage                                 = 'Referencias OpenAPI indefinidas:'
    doneMessage                                                       = 'Hecho'
    swaggerEditorDoesNotSupportOpenApi31ExceptionMessage              = 'Esta versión de Swagger-Editor no admite OpenAPI 3.1'
    durationMustBeZeroOrGreaterExceptionMessage                       = 'La duración debe ser igual o mayor a 0, pero se obtuvo: {0}s'
    viewsPathDoesNotExistExceptionMessage                             = 'La ruta de las Views no existe: {0}'
    discriminatorIncompatibleWithAllOfExceptionMessage                = "El parámetro 'Discriminator' es incompatible con 'allOf'."
    noNameForWebSocketSendMessageExceptionMessage                     = 'No se proporcionó ningún nombre para enviar un mensaje al WebSocket.'
    hashtableMiddlewareNoLogicExceptionMessage                        = 'Un Middleware Hashtable suministrado no tiene lógica definida.'
    openApiInfoMessage                                                = 'Información OpenAPI:'
    invalidSchemeForAuthValidatorExceptionMessage                     = "El esquema '{0}' proporcionado para el validador de autenticación '{1}' requiere un ScriptBlock válido."
    sseFailedToBroadcastExceptionMessage                              = 'SSE no pudo transmitir debido al nivel de transmisión SSE definido para {0}: {1}.'
    adModuleWindowsOnlyExceptionMessage                               = 'El módulo de Active Directory solo está disponible en Windows.'
    invalidAccessControlMaxAgeDurationExceptionMessage                = 'Duración inválida para Access-Control-Max-Age proporcionada: {0}. Debe ser mayor que 0.'
    openApiDefinitionAlreadyExistsExceptionMessage                    = 'La definición de OpenAPI con el nombre {0} ya existe.'
    renamePodeOADefinitionTagExceptionMessage                         = "Rename-PodeOADefinitionTag no se puede usar dentro de un 'ScriptBlock' de Select-PodeOADefinition."
    fnDoesNotAcceptArrayAsPipelineInputExceptionMessage               = "La función '{0}' no acepta una matriz como entrada de canalización."
    loggingAlreadyEnabledExceptionMessage                             = "El registro '{0}' ya ha sido habilitado."
    invalidEncodingExceptionMessage                                   = 'Codificación inválida: {0}'
    syslogProtocolExceptionMessage                                    = 'El protocolo Syslog solo puede usar RFC3164 o RFC5424.'
    taskProcessDoesNotExistExceptionMessage                           = "El proceso de la tarea '{0}' no existe."
    scheduleProcessDoesNotExistExceptionMessage                       = "El proceso del programación '{0}' no existe."
    definitionTagChangeNotAllowedExceptionMessage                     = 'La etiqueta de definición para una Route no se puede cambiar.'
    getRequestBodyNotAllowedExceptionMessage                          = 'Las operaciones {0} no pueden tener un cuerpo de solicitud.'
    unsupportedStreamCompressionEncodingExceptionMessage              = 'La codificación de compresión de transmisión no es compatible: {0}'
}