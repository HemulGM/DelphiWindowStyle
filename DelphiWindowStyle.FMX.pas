unit DelphiWindowStyle.FMX;

interface

uses
  System.Types, FMX.Forms, System.UITypes, DelphiWindowStyle.Types, FMX.Types;

type
  TSystemBackdropType = DelphiWindowStyle.Types.TSystemBackdropType;

  TWindowCornerPreference = DelphiWindowStyle.Types.TWindowCornerPreference;

  TImmersiveHCCacheMode = DelphiWindowStyle.Types.TImmersiveHCCacheMode;

  TFormHelper = class helper for TCustomForm
    function SetSystemBackdropType(const Value: TSystemBackdropType): Boolean;
    function SetExtendFrameIntoClientArea(const Value: TRect): Boolean;
    function SetWindowCaptionColor(const Value: TColor): Boolean;
    function SetWindowTextColor(const Value: TColor): Boolean;
    function SetWindowBorderColor(const Value: TColor): Boolean;
    function SetWindowCorner(const Value: TWindowCornerPreference): Boolean;
    function SetWindowColorModeAsSystem: Boolean;
    function SetWindowColorMode(const IsDark: Boolean): Boolean;
    //
    function SetAccentPolicy(GradientColor: TAlphaColor): Boolean;
    //
    procedure RefreshTitleBarThemeColor;
    function IsHighContrast: Boolean;
    function SystemIsDarkMode: Boolean;
    function IsDarkModeAllowedForWindow: Boolean;
    function GetIsImmersiveColorUsingHighContrast(Mode: TImmersiveHCCacheMode): Boolean;
    function ShouldAppsUseDarkMode: Boolean;
  public
    procedure TestFuncs;
  end;

implementation

uses
  {$IFDEF MSWINDOWS}
  FMX.Platform.Win, DelphiWindowStyle.Core.Win,
  {$ENDIF}
  FMX.Platform;

{ TFormHelper }

function TFormHelper.GetIsImmersiveColorUsingHighContrast(Mode: TImmersiveHCCacheMode): Boolean;
begin
  {$IFDEF MSWINDOWS}
  Result := DelphiWindowStyle.Core.Win.GetIsImmersiveColorUsingHighContrast(Mode);
  {$ELSE}
  Result := False;
  {$ENDIF}
end;

function TFormHelper.IsDarkModeAllowedForWindow: Boolean;
begin
  {$IFDEF MSWINDOWS}
  Result := DelphiWindowStyle.Core.Win.IsDarkModeAllowedForWindow(FormToHWND(Self));
  {$ELSE}
  Result := False;
  {$ENDIF}
end;

function TFormHelper.IsHighContrast: Boolean;
begin
  {$IFDEF MSWINDOWS}
  Result := DelphiWindowStyle.Core.Win.IsHighContrast;
  {$ELSE}
  Result := False;
  {$ENDIF}
end;

procedure TFormHelper.RefreshTitleBarThemeColor;
begin
  {$IFDEF MSWINDOWS}
  DelphiWindowStyle.Core.Win.RefreshTitleBarThemeColor(FormToHWND(Self));
  {$ELSE}
  //
  {$ENDIF}
end;

function TFormHelper.SetAccentPolicy(GradientColor: TAlphaColor): Boolean;
begin
  {$IFDEF MSWINDOWS}
  Result := DelphiWindowStyle.Core.Win.SetAccentPolicy(FormToHWND(Self), GradientColor);
  {$ELSE}
  Result := False;
  {$ENDIF}
end;

function TFormHelper.SetExtendFrameIntoClientArea(const Value: TRect): Boolean;
begin
  {$IFDEF MSWINDOWS}
  Result := DelphiWindowStyle.Core.Win.SetExtendFrameIntoClientArea(FormToHWND(Self), Value);
  {$ELSE}
  Result := False;
  {$ENDIF}
end;

function TFormHelper.SetSystemBackdropType(const Value: TSystemBackdropType): Boolean;
begin
  {$IFDEF MSWINDOWS}
  Result := DelphiWindowStyle.Core.Win.SetSystemBackdropType(FormToHWND(Self), Value);
  {$ELSE}
  Result := False;
  {$ENDIF}
end;

function TFormHelper.SetWindowBorderColor(const Value: TColor): Boolean;
begin
  {$IFDEF MSWINDOWS}
  Result := DelphiWindowStyle.Core.Win.SetWindowBorderColor(FormToHWND(Self), Value);
  {$ELSE}
  Result := False;
  {$ENDIF}
end;

function TFormHelper.SetWindowCaptionColor(const Value: TColor): Boolean;
begin
  {$IFDEF MSWINDOWS}
  Result := DelphiWindowStyle.Core.Win.SetWindowCaptionColor(FormToHWND(Self), Value);
  {$ELSE}
  Result := False;
  {$ENDIF}
end;

function TFormHelper.SetWindowColorMode(const IsDark: Boolean): Boolean;
begin
  {$IFDEF MSWINDOWS}
  Result := DelphiWindowStyle.Core.Win.SetWindowColorMode(FormToHWND(Self), IsDark);
  {$ELSE}
  Result := False;
  {$ENDIF}
end;

function TFormHelper.SetWindowColorModeAsSystem: Boolean;
begin
  {$IFDEF MSWINDOWS}
  Result := DelphiWindowStyle.Core.Win.SetWindowColorModeAsSystem(FormToHWND(Self));
  {$ELSE}
  Result := False;
  {$ENDIF}
end;

function TFormHelper.SetWindowCorner(const Value: TWindowCornerPreference): Boolean;
begin
  {$IFDEF MSWINDOWS}
  Result := DelphiWindowStyle.Core.Win.SetWindowCorner(FormToHWND(Self), Value);
  {$ELSE}
  Result := False;
  {$ENDIF}
end;

function TFormHelper.SetWindowTextColor(const Value: TColor): Boolean;
begin
  {$IFDEF MSWINDOWS}
  Result := DelphiWindowStyle.Core.Win.SetWindowTextColor(FormToHWND(Self), Value);
  {$ELSE}
  Result := False;
  {$ENDIF}
end;

function TFormHelper.ShouldAppsUseDarkMode: Boolean;
begin
  {$IFDEF MSWINDOWS}
  Result := DelphiWindowStyle.Core.Win.ShouldAppsUseDarkMode;
  {$ELSE}
  Result := False;
  {$ENDIF}
end;

function TFormHelper.SystemIsDarkMode: Boolean;
begin
  {$IFDEF MSWINDOWS}
  Result := DelphiWindowStyle.Core.Win.SystemIsDarkMode;
  {$ELSE}
  Result := False;
  {$ENDIF}
end;

procedure TFormHelper.TestFuncs;
begin
  {$IFDEF MSWINDOWS}
  //Result :=
  DelphiWindowStyle.Core.Win.TestFuncs(FormToHWND(Self));
  {$ELSE}
  //Result := False;
  {$ENDIF}
end;

end.

