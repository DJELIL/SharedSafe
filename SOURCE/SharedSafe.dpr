program SharedSafe;

uses
  Vcl.Forms,
  UMain in 'UMain.pas' {FMain},
  UAuthentification in 'UAuthentification.pas' {FrmAuth: TFrame},
  UDM in 'UDM.pas' {DM: TDataModule},
  UCoffre in 'UCoffre.pas' {FCoffre};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFMain, FMain);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFCoffre, FCoffre);
  Application.Run;
end.
