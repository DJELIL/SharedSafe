unit UCoffre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.BaseImageCollection,
  Vcl.ImageCollection, dxBarBuiltInMenu, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, cxPC, cxGeometry, dxFramedControl, Vcl.VirtualImage,
  dxPanel, cxSplitter, Vcl.ComCtrls, dxtree, dxdbtree, cxContainer, cxEdit,
  cxDBLabel, cxTextEdit, cxDBEdit, cxLabel, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, UDM,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxClasses, dxLayoutControl;

type
  TFCoffre = class(TForm)
    ImageCollection1: TImageCollection;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    dxPanel1: TdxPanel;
    VirtualImage1: TVirtualImage;
    dxDBTreeView1: TdxDBTreeView;
    cxSplitter1: TcxSplitter;
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBLabel1: TcxDBLabel;
    QryCoffre: TFDQuery;
    DataSource1: TDataSource;
    cxLabel2: TcxLabel;
    VirtualImage2: TVirtualImage;
    cxDBLabel2: TcxDBLabel;
    cxLabel3: TcxLabel;
    LblNbrCss: TcxLabel;
    cxLabel4: TcxLabel;
    VirtualImage3: TVirtualImage;
    cxLabel5: TcxLabel;
    dxLayoutControl1: TdxLayoutControl;
    VirtualImage7: TVirtualImage;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    cxLabel11: TdxLayoutLabeledItem;
    cxLabel13: TdxLayoutLabeledItem;
    cxLabel14: TdxLayoutLabeledItem;
    cxLabel15: TdxLayoutLabeledItem;
    dxLayoutGroup1: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FCoffre: TFCoffre;

implementation

{$R *.dfm}

procedure TFCoffre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
free;
end;

procedure TFCoffre.FormCreate(Sender: TObject);
begin
QryCoffre.Close;
 if DM.Cnxn.Connected then
  begin
   QryCoffre.Connection := Dm.Cnxn;
   QryCoffre.SQL.Clear;
   QryCoffre.SQL.Add('SELECT * FROM COFFRE_FORT');
   QryCoffre.Open;

  end;

end;

end.
