unit DelphiWindowStyle.VCL;

interface

uses
  System.Types, Vcl.Forms, System.UITypes, DelphiWindowStyle.Types;

type
  TSystemBackdropType = DelphiWindowStyle.Types.TSystemBackdropType;

  TWindowCornerPreference = DelphiWindowStyle.Types.TWindowCornerPreference;

  TImmersiveHCCacheMode = DelphiWindowStyle.Types.TImmersiveHCCacheMode;

  TFormHelper = class helper for TForm
    function SetSystemBackdropType(const Value: TSystemBackdropType): Boolean;
    function SetExtendFrameIntoClientArea(const Value: TRect): Boolean;
    function SetWindowCaptionColor(const Value: TColor): Boolean;
    function SetWindowTextColor(const Value: TColor): Boolean;
    function SetWindowBorderColor(const Value: TColor): Boolean;
    function SetWindowCorner(const Value: TWindowCornerPreference): Boolean;
    function SetWindowColorModeAsSystem: Boolean;
    function SetWindowColorMode(const IsDark: Boolean): Boolean;
    //
    procedure RefreshTitleBarThemeColor;
    function IsHighContrast: Boolean;
    function SystemIsDarkMode: Boolean;
    function IsDarkModeAllowedForWindow: Boolean;
    function GetIsImmersiveColorUsingHighContrast(Mode: TImmersiveHCCacheMode): Boolean;
    function ShouldAppsUseDarkMode: Boolean;
  end;

implementation

uses
  DelphiWindowStyle.Core.Win;

{ TFormHelper }

function TFormHelper.GetIsImmersiveColorUsingHighContrast(Mode: TImmersiveHCCacheMode): Boolean;
begin
  Result := DelphiWindowStyle.Core.Win.GetIsImmersiveColorUsingHighContrast(Mode);
end;

function TFormHelper.IsDarkModeAllowedForWindow: Boolean;
begin
  Result := DelphiWindowStyle.Core.Win.IsDarkModeAllowedForWindow(Handle);
end;

function TFormHelper.IsHighContrast: Boolean;
begin
  Result := DelphiWindowStyle.Core.Win.IsHighContrast;
end;

procedure TFormHelper.RefreshTitleBarThemeColor;
begin
  DelphiWindowStyle.Core.Win.RefreshTitleBarThemeColor(Handle);
end;

function TFormHelper.SetExtendFrameIntoClientArea(const Value: TRect): Boolean;
begin
  Result := DelphiWindowStyle.Core.Win.SetExtendFrameIntoClientArea(Handle, Value);
end;

function TFormHelper.SetSystemBackdropType(const Value: TSystemBackdropType): Boolean;
begin
  Result := DelphiWindowStyle.Core.Win.SetSystemBackdropType(Handle, Value);
end;

function TFormHelper.SetWindowBorderColor(const Value: TColor): Boolean;
begin
  Result := DelphiWindowStyle.Core.Win.SetWindowBorderColor(Handle, Value);
end;

function TFormHelper.SetWindowCaptionColor(const Value: TColor): Boolean;
begin
  Result := DelphiWindowStyle.Core.Win.SetWindowCaptionColor(Handle, Value);
end;

function TFormHelper.SetWindowColorMode(const IsDark: Boolean): Boolean;
begin
  Result := DelphiWindowStyle.Core.Win.SetWindowColorMode(Handle, IsDark);
end;

function TFormHelper.SetWindowColorModeAsSystem: Boolean;
begin
  Result := DelphiWindowStyle.Core.Win.SetWindowColorModeAsSystem(Handle);
end;

function TFormHelper.SetWindowCorner(const Value: TWindowCornerPreference): Boolean;
begin
  Result := DelphiWindowStyle.Core.Win.SetWindowCorner(Handle, Value);
end;

function TFormHelper.SetWindowTextColor(const Value: TColor): Boolean;
begin
  Result := DelphiWindowStyle.Core.Win.SetWindowTextColor(Handle, Value);
end;

function TFormHelper.ShouldAppsUseDarkMode: Boolean;
begin
  Result := DelphiWindowStyle.Core.Win.ShouldAppsUseDarkMode;
end;

function TFormHelper.SystemIsDarkMode: Boolean;
begin
  Result := DelphiWindowStyle.Core.Win.SystemIsDarkMode;
end;

end.

