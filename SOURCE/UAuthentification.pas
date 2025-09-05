unit UAuthentification;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, dxMessageDialog,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinWXI, dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, dxGDIPlusClasses,
  Vcl.ExtCtrls, dxCoreGraphics, cxButtonEdit, IBX.IBDatabase, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmAuth = class(TFrame)
    cxLabelUser: TcxLabel;
    cxLabelPass: TcxLabel;
    cxButton3: TcxButton;
    cxButton2: TcxButton;
    cxLabel4: TcxLabel;
    cxLblTitre: TcxLabel;
    Image1: TImage;
    cxMEditPass: TcxButtonEdit;
    cxCmbBxUser: TcxComboBox;
    FDTable1: TFDTable;
    Image2: TImage;
    cxLabel1: TcxLabel;
    procedure cxButton3Click(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton2Click(Sender: TObject);
    procedure ConnectToDatabase;
    procedure Image1DblClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

implementation

{$R *.dfm}

uses UMain, UDM;

procedure TFrmAuth.cxButton2Click(Sender: TObject);
begin
       // Affiche une boîte de dialogue de confirmation
    if MessageDlg('Voulez-vous vraiment quitter l''application ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      //ModalResult := mrCancel;
      Application.Terminate; // Quitte l'application
    end
    else
    begin
       Exit;  //Action := caNone; // Annule la fermeture du formulaire
    end;
end;

procedure TFrmAuth.cxButton3Click(Sender: TObject);
begin
ConnectToDatabase;
// fee



// cxMEditPass.Text := '';


end;

procedure TFrmAuth.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
{ if cxButtonEdit1.Properties.PasswordChar = #0 then
   cxButtonEdit1.Properties.PasswordChar := '*'
   else cxButtonEdit1.Properties.PasswordChar := #0;     ])}
end;

procedure TFrmAuth.Image1DblClick(Sender: TObject);
begin
   cxCmbBxUser.Text  := 'sysdba';
   cxMEditPass.Text  := 'masterkey';
end;

procedure TFrmAuth.ConnectToDatabase;
var
  DBPath, Username, Password: string;
  i: Integer;
begin
  //try
    // Récupération des valeurs depuis les champs utilisateur et mot de passe
    Username := Trim(cxCmbBxUser.Text);
    Password := Trim(cxMEditPass.Text);

    // Vérifier si les champs ne sont pas vides
    if (Username = '') or (Password = '') then
    begin
      dxShowMessage('Veuillez saisir un utilisateur et un mot de passe.');
      Exit;
    end;

    // Définition du chemin de la base de données (modifiez selon votre cas)
    DBPath := 'C:\SharedSafe\DATA\SHARED_SAFE.FDB'; // Chemin vers votre fichier .fdb

    with DM.Cnxn do
       begin
          Connected := False;
          Params.Clear;

          DriverName := 'FB'; // 'IB' pour InterBase
          Params.Values['Database'] := DBPath; // chemin vers la base
          Params.Values['User_Name'] := Username;     // Nom d'utilisateur
          Params.Values['Password'] := Password;   // Mot de passe
          Params.Values['Protocol'] := 'Local';
          Params.Values['Server'] := '127.0.0.1';     // facultatif en local Ou adresse IP du serveur
          Params.Values['Port'] := '3060';            // Port par défaut InterBase
          // DMGEPA.FDCnxn.Params.Values['Protocol'] := 'TCPIP';       // ou 'Local' si base locale
       end;

    try
      DM.Cnxn.Connected := True;
      dxShowMessage('Connexion réussie');

       if cxCmbBxUser.Properties.Items.IndexOf(Username) = -1 then
             cxCmbBxUser.Properties.Items.Add(Username);


        // Ouvrir les tables

      for i := 0 to DM.ComponentCount - 1 do
        begin
          if DM.Components[i] is TFDTable then
          begin
            with TFDTable(DM.Components[i]) do
            begin
              try
                if not Active then Open;
              except
                on E: Exception do
                  dxShowMessage('Erreur table : ' + Name + #13 + E.Message);
              end;
            end;
          end;
        end;

        //if NOT DM.FDQuery1.Active then DM.FDQuery1.Open;

    // Libérer le frame d'authentification
    // Self.Free;
                //
    Parent := nil;
    CloseWindow(self.Handle);

      FMain.dxRibbon1.Visible := True;
      FMain.dxRibbonStatusBar1.Visible := True;

    except
      on E: Exception do
        dxShowMessage('Erreur de connexion : ' + #13 + E.Message);
    end;


    end;



end.
