unit UMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, 
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView, cxBarEditItem,
  dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinWXI,
  dxSkinXmas2008Blue, dxCore, dxRibbonCustomizationForm, cxTextEdit,
  cxContainer, cxEdit, dxSkinsForm, dxStatusBar, dxRibbonStatusBar, cxLabel,
  dxGallery, dxGalleryControl, dxRibbonBackstageViewGalleryControl, UAuthentification, UDM, UCoffre,
  dxLayoutContainer, dxLayoutControl, dxLayoutcxEditAdapters, Vcl.VirtualImage,
  dxLayoutLookAndFeels;

type
  TFMain = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbonBackstageView1: TdxRibbonBackstageView;
    dxRibbonBackstageViewTabSheet1: TdxRibbonBackstageViewTabSheet;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxRibbonBackstageViewGalleryControl1: TdxRibbonBackstageViewGalleryControl;
    cxLabel1: TcxLabel;
    dxRibbonBackstageViewGalleryControl1Group1: TdxRibbonBackstageViewGalleryGroup;
    dxSkinController1: TdxSkinController;
    dxRibbonBackstageViewGalleryControl1Group1Item1: TdxRibbonBackstageViewGalleryItem;
    dxBarManager1Bar2: TdxBar;
    cxBarEditItem1: TcxBarEditItem;
    dxRibbon1Tab2: TdxRibbonTab;
    dxBarManager1Bar3: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarManager1Bar4: TdxBar;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarManager1Bar5: TdxBar;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    VirtualImage2: TVirtualImage;
    procedure FormCreate(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMain: TFMain;
  AuthFrm : TFrmAuth;

implementation

{$R *.dfm}

{ TForm1 }

procedure TFMain.dxBarLargeButton1Click(Sender: TObject);

begin
  AuthFrm.Free;
  // Authentification
  AuthFrm:= TFrmAuth.Create(FMain);
  AuthFrm.Parent := FMain;
  AuthFrm.Align := alClient;
  AuthFrm.Visible := True;
  dxRibbon1.Visible := False;
end;

procedure TFMain.dxBarLargeButton9Click(Sender: TObject);
var
  ChildForm: TForm;
  FormExists: Boolean;
  i: Integer;
begin
  FormExists := False;

  // Vérifier si un ChildForm existe déjà
  for i := 0 to Self.MDIChildCount - 1 do
  begin
    ChildForm := Self.MDIChildren[i];  // Accéder à chaque enfant MDI
    if ChildForm.Caption = 'Coffre' then
    begin
      FormExists := True;
      // Si le formulaire existe, le rendre actif
      ChildForm.BringToFront;
      Break;
    end;
  end;

  // Si le ChildForm n'existe pas, le créer
  if not FormExists then
  begin
    // Créer le ChildForm
    ChildForm := TFCoffre.Create(Self);
    try
      ChildForm.Position := poScreenCenter;
      ChildForm.FormStyle := fsMDIChild;
      ChildForm.WindowState := TWindowState.wsMaximized;
      // Associer l'événement OnClose pour fermer le ChildForm
      //ChildForm.OnClose := ChildFormClose;
      {ChildForm.OnCloseQuery := CreateMessageDialog();}
      // Afficher le ChildForm
      ChildForm.Show;
    except
      ChildForm.Free;
      raise;
    end;
  end;

end;

procedure TFMain.FormCreate(Sender: TObject);

begin
  DisableAero := True;
  dxRibbon1.Visible := False;
  dxRibbon1.ColorSchemeName := dxSkinController1.SkinName;
end;

procedure TFMain.FormShow(Sender: TObject);
begin
  // Authentification
  AuthFrm:= TFrmAuth.Create(FMain);
  AuthFrm.Parent := FMain;
  AuthFrm.Align := alClient;
  AuthFrm.Visible := True;
  // Cache Copo
end;

end.
