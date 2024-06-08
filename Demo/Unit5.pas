unit Unit5;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation;

type
  TFormMain = class(TForm)
    Panel27: TPanel;
    ButtonAuto: TButton;
    ButtonDisable: TButton;
    ButtonMica: TButton;
    ButtonAcrylic: TButton;
    ButtonTabbed: TButton;
    CheckBoxDarkMode: TCheckBox;
    procedure ButtonAutoClick(Sender: TObject);
    procedure ButtonDisableClick(Sender: TObject);
    procedure ButtonMicaClick(Sender: TObject);
    procedure ButtonAcrylicClick(Sender: TObject);
    procedure ButtonTabbedClick(Sender: TObject);
    procedure CheckBoxDarkModeChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

uses
  DelphiWindowStyle.FMX;

{$R *.fmx}

procedure TFormMain.ButtonAutoClick(Sender: TObject);
begin
  Self.SetSystemBackdropType(TSystemBackdropType.DWMSBT_AUTO);
end;

procedure TFormMain.ButtonDisableClick(Sender: TObject);
begin
  Self.SetSystemBackdropType(TSystemBackdropType.DWMSBT_DISABLE);
end;

procedure TFormMain.ButtonMicaClick(Sender: TObject);
begin
  Self.SetSystemBackdropType(TSystemBackdropType.DWMSBT_MAINWINDOW);
end;

procedure TFormMain.ButtonAcrylicClick(Sender: TObject);
begin
  Self.SetSystemBackdropType(TSystemBackdropType.DWMSBT_TRANSIENTWINDOW);
end;

procedure TFormMain.ButtonTabbedClick(Sender: TObject);
begin
  Self.SetSystemBackdropType(TSystemBackdropType.DWMSBT_TABBEDWINDOW);
end;

procedure TFormMain.CheckBoxDarkModeChange(Sender: TObject);
begin
  Self.SetWindowColorMode(CheckBoxDarkMode.IsChecked);
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  Self.SetExtendFrameIntoClientArea(TRect.Create(-1, -1, -1, -1));
  Fill.Kind := TBrushKind.Solid;
  Fill.Color := TAlphaColors.Null;
end;

end.

