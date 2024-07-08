unit DelphiWindowStyle.FMX;

interface

uses
  System.Types, FMX.Forms, System.UITypes, DelphiWindowStyle.Types, FMX.Types;

const
  AW_HOR_POSITIVE = $00000001; // Анимирует окно слева направо. Этот флаг можно использовать с анимацией наката или слайда. Он игнорируется при использовании с AW_CENTER или AW_BLEND.
  AW_HOR_NEGATIVE = $00000002; // Анимирует окно справа налево. Этот флаг можно использовать с анимацией наката или слайда. Он игнорируется при использовании с AW_CENTER или AW_BLEND.
  AW_VER_POSITIVE = $00000004; // Анимирует окно сверху вниз. Этот флаг можно использовать с анимацией наката или слайда. Он игнорируется при использовании с AW_CENTER или AW_BLEND.
  AW_VER_NEGATIVE = $00000008;  // Анимирует окно снизу вверх. Этот флаг можно использовать с анимацией наката или слайда. Он игнорируется при использовании с AW_CENTER или AW_BLEND.
  AW_CENTER = $00000010;       // Делает окно сворачиваться вовнутрь, если используется AW_HIDE , или разворачиваться наружу, если AW_HIDE не используется. Различные флаги направления не оказывают никакого влияния.
  AW_HIDE = $00010000;         // Скрывает окно. По умолчанию отображается окно .
  AW_ACTIVATE = $00020000;     // Активирует окно. Не используйте это значение с AW_HIDE.
  AW_SLIDE = $00040000;        // Использует анимацию слайдов. По умолчанию используется анимация наката. Этот флаг игнорируется при использовании с AW_CENTER.
  AW_BLEND = $00080000;        // Использует эффект исчезания. Этот флаг можно использовать только в том случае, если hwnd является окном верхнего уровня.

type
  TSystemBackdropType = DelphiWindowStyle.Types.TSystemBackdropType;

  TWindowCornerPreference = DelphiWindowStyle.Types.TWindowCornerPreference;

  TImmersiveHCCacheMode = DelphiWindowStyle.Types.TImmersiveHCCacheMode;

  TFormHelper = class helper for TCommonCustomForm
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
    procedure AnimateWindow(Time: Cardinal; Animate: Cardinal);
    //
    procedure WindowStyleExAdd(Value: NativeInt);
    procedure WindowStyleExRemove(Value: NativeInt);
    procedure WindowStyleAdd(Value: NativeInt);
    procedure WindowStyleRemove(Value: NativeInt);
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
  FMX.Platform.Win, DelphiWindowStyle.Core.Win, Winapi.Windows,
  {$ENDIF}
  FMX.Platform;

{ TFormHelper }

procedure TFormHelper.AnimateWindow(Time: Cardinal; Animate: Cardinal);
begin
  {$IFDEF MSWINDOWS}
  DelphiWindowStyle.Core.Win.AnimateWindow(FormToHWND(Self), Time, Animate);
  {$ELSE}

  {$ENDIF}
end;

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
  DelphiWindowStyle.Core.Win.TestFuncs(FormToHWND(Self));
  {$ELSE}
  //Result := False;
  {$ENDIF}
end;

procedure TFormHelper.WindowStyleExAdd(Value: NativeInt);
begin
  {$IFDEF MSWINDOWS}
  var Handle := FormToHWND(Self);
  SetWindowLongPtr(Handle, GWL_EXSTYLE, GetWindowLongPtr(Handle, GWL_EXSTYLE) or Value);
  {$ELSE}
  //
  {$ENDIF}
end;

procedure TFormHelper.WindowStyleExRemove(Value: NativeInt);
begin
  {$IFDEF MSWINDOWS}
  var Handle := FormToHWND(Self);
  SetWindowLongPtr(Handle, GWL_EXSTYLE, GetWindowLongPtr(Handle, GWL_EXSTYLE) and not Value);
  {$ELSE}
  //
  {$ENDIF}
end;

procedure TFormHelper.WindowStyleAdd(Value: NativeInt);
begin
  {$IFDEF MSWINDOWS}
  var Handle := FormToHWND(Self);
  SetWindowLongPtr(Handle, GWL_STYLE, GetWindowLongPtr(Handle, GWL_STYLE) or Value);
  {$ELSE}
  //
  {$ENDIF}
end;

procedure TFormHelper.WindowStyleRemove(Value: NativeInt);
begin
  {$IFDEF MSWINDOWS}
  var Handle := FormToHWND(Self);
  SetWindowLongPtr(Handle, GWL_STYLE, GetWindowLongPtr(Handle, GWL_STYLE) and not Value);
  {$ELSE}
  //
  {$ENDIF}
end;

end.

