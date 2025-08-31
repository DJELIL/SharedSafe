unit U_Comptes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ExtCtrls, CurvyControls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    CurvyPanel1: TCurvyPanel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  PanelSolde, PanelActivite, PanelAlertes, PanelVirements: TPanel;
  LblTitre, LblValeur: TLabel;
begin
  // خلفية
  Color := clWhite;
  Caption := 'Dashboard Comptes';
  {
  // Panel Solde Total
  PanelSolde := TPanel.Create(Self);
  PanelSolde.Parent := Self;
  PanelSolde.SetBounds(200, 50, 500, 120);
  PanelSolde.Color := $00FF8000; // أزرق غامق (BGR)
  PanelSolde.ParentBackground := False;
  PanelSolde.BevelOuter := bvNone;

  // عنوان
  LblTitre := TLabel.Create(PanelSolde);
  LblTitre.Parent := PanelSolde;
  LblTitre.Caption := 'Solde Total';
  LblTitre.Font.Size := 12;
  LblTitre.Font.Color := clWhite;
  LblTitre.Left := 20;
  LblTitre.Top := 15;

  // القيمة
  LblValeur := TLabel.Create(PanelSolde);
  LblValeur.Parent := PanelSolde;
  LblValeur.Caption := '1000,000 DT';
  LblValeur.Font.Size := 24;
  LblValeur.Font.Style := [fsBold];
  LblValeur.Font.Color := clWhite;
  LblValeur.Left := 20;
  LblValeur.Top := 50;

  // Panel Activité Récente
  PanelActivite := TPanel.Create(Self);
  PanelActivite.Parent := Self;
  PanelActivite.SetBounds(200, 200, 220, 120);
  PanelActivite.Color := $00F0F0F0; // رمادي فاتح
  PanelActivite.BevelOuter := bvNone;

  LblTitre := TLabel.Create(PanelActivite);
  LblTitre.Parent := PanelActivite;
  LblTitre.Caption := 'Activité Récente';
  LblTitre.Font.Size := 12;
  LblTitre.Left := 10;
  LblTitre.Top := 10;

  // Panel Alertes
  PanelAlertes := TPanel.Create(Self);
  PanelAlertes.Parent := Self;
  PanelAlertes.SetBounds(430, 200, 220, 120);
  PanelAlertes.Color := $00FFE0E0; // وردي فاتح
  PanelAlertes.BevelOuter := bvNone;

  LblTitre := TLabel.Create(PanelAlertes);
  LblTitre.Parent := PanelAlertes;
  LblTitre.Caption := 'Alertes';
  LblTitre.Font.Size := 12;
  LblTitre.Left := 10;
  LblTitre.Top := 10;

  // Panel Virements
  PanelVirements := TPanel.Create(Self);
  PanelVirements.Parent := Self;
  PanelVirements.SetBounds(660, 200, 220, 120);
  PanelVirements.Color := $00E0FFE0; // أخضر فاتح
  PanelVirements.BevelOuter := bvNone;

  LblTitre := TLabel.Create(PanelVirements);
  LblTitre.Parent := PanelVirements;
  LblTitre.Caption := 'Virements Programmés';
  LblTitre.Font.Size := 12;
  LblTitre.Left := 10;
  LblTitre.Top := 10;
  }
end;

end.
