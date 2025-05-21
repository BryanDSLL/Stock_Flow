object dtmPrincipal: TdtmPrincipal
  Height = 480
  Width = 640
  object conexaoDB: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    SQLHourGlass = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 5432
    Database = 'StockFlow'
    User = 'postgres'
    Password = '#abc123#'
    Protocol = 'postgresql'
    LibraryLocation = 
      'C:\Users\bryan\OneDrive\Documentos\Embarcadero\Studio\Projects\S' +
      'tockFlow\libpq.dll'
    Left = 568
    Top = 16
  end
end
