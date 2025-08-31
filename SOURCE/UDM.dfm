object DM: TDM
  Height = 596
  Width = 233
  object Cnxn: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=127.0.0.1'
      'Port=3050'
      'Database=C:\SharedSafe\DATA\SHARED_SAFE.FDB'
      'CharacterSet=UTF8'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Transaction = Trn
    UpdateTransaction = Trn
    Left = 32
    Top = 8
  end
  object Trn: TFDTransaction
    Connection = Cnxn
    Left = 96
    Top = 8
  end
end
