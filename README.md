# FMXWindowStyle
 Window stylization for FMX and VCL

 ```pascal
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
```