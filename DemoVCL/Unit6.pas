unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm6 = class(TForm)
    ButtonAuto: TButton;
    ButtonDisable: TButton;
    ButtonMica: TButton;
    ButtonAcrylic: TButton;
    ButtonTabbed: TButton;
    CheckBoxDarkMode: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure ButtonAutoClick(Sender: TObject);
    procedure ButtonDisableClick(Sender: TObject);
    procedure ButtonMicaClick(Sender: TObject);
    procedure ButtonAcrylicClick(Sender: TObject);
    procedure ButtonTabbedClick(Sender: TObject);
    procedure CheckBoxDarkModeClick(Sender: TObject);
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation
 uses DelphiWindowStyle.VCL;

{$R *.dfm}

procedure TForm6.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.ExStyle := Params.ExStyle or WS_EX_OVERLAPPEDWINDOW or WS_EX_LAYERED;
end;

procedure TForm6.ButtonAcrylicClick(Sender: TObject);
begin
  SetSystemBackdropType(TSystemBackdropType.DWMSBT_TRANSIENTWINDOW);
end;

procedure TForm6.ButtonAutoClick(Sender: TObject);
begin
  SetSystemBackdropType(TSystemBackdropType.DWMSBT_AUTO);
end;

procedure TForm6.ButtonDisableClick(Sender: TObject);
begin
  SetSystemBackdropType(TSystemBackdropType.DWMSBT_DISABLE);
end;

procedure TForm6.ButtonMicaClick(Sender: TObject);
begin
  SetSystemBackdropType(TSystemBackdropType.DWMSBT_MAINWINDOW);
end;

procedure TForm6.ButtonTabbedClick(Sender: TObject);
begin
  SetSystemBackdropType(TSystemBackdropType.DWMSBT_TABBEDWINDOW);
end;

procedure TForm6.CheckBoxDarkModeClick(Sender: TObject);
begin
  SetWindowColorMode(CheckBoxDarkMode.Checked);
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
  //SetSystemBackdropType(TSystemBackdropType.DWMSBT_MAINWINDOW);
  //SetExtendFrameIntoClientArea(TRect.Create(-1, -1, -1, -1));
  //SetWindowColorMode(True);
end;

end.
