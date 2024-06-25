# FMXWindowStyle
Window stylization for FMX and VCL

The ability to stylize the window and background with modern WinAPI (WinUI 3). Mica, Acrylic, MicaAlt

You can control both the background of the application and the frame. Change the rounding of the window, add and change the color of the window stroke, change the color and text of the window header. You can also apply a dark mode without changing the window of the window of the window (only a dark frame)

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

# Light

## Auto

![Preview](https://github.com/HemulGM/DelphiWindowStyle/blob/main/Media/2024-06-12%20(1).png?raw=true)

## Mica

![Preview](https://github.com/HemulGM/DelphiWindowStyle/blob/main/Media/2024-06-12%20(3).png?raw=true)

## Acrilyc

![Preview](https://github.com/HemulGM/DelphiWindowStyle/blob/main/Media/2024-06-12%20(4).png?raw=true)

## Tabbed

![Preview](https://github.com/HemulGM/DelphiWindowStyle/blob/main/Media/2024-06-12%20(5).png?raw=true)

# Dark

## Auto

![Preview](https://github.com/HemulGM/DelphiWindowStyle/blob/main/Media/2024-06-12%20(9).png?raw=true)

## Mica

![Preview](https://github.com/HemulGM/DelphiWindowStyle/blob/main/Media/2024-06-12%20(8).png?raw=true)

## Acrilyc

![Preview](https://github.com/HemulGM/DelphiWindowStyle/blob/main/Media/2024-06-12%20(7).png?raw=true)

## Tabbed

![Preview](https://github.com/HemulGM/DelphiWindowStyle/blob/main/Media/2024-06-12%20(6).png?raw=true)
