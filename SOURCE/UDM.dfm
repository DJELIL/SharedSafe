object DM: TDM
  OnCreate = DataModuleCreate
  Height = 596
  Width = 233
  object Cnxn: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=127.0.0.1'
      'Port=3060'
      'Database=C:\SharedSafe\DATA\SHARED_SAFE.FDB'
      'CharacterSet=UTF8'
      'DriverID=FB')
    LoginPrompt = False
    Transaction = Trn
    UpdateTransaction = Trn
    Left = 16
    Top = 8
  end
  object Trn: TFDTransaction
    Connection = Cnxn
    Left = 56
    Top = 8
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 32
    Top = 480
  end
end
