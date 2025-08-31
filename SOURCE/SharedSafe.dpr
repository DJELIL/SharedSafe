program SharedSafe;

uses
  Vcl.Forms,
  UMain in 'UMain.pas' {FMain},
  U_Comptes in 'U_Comptes.pas' {Form1},
  UDM in 'UDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFMain, FMain);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
