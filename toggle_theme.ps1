# Registry key paths for theme modes
$systemThemeKey = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize"

# Get current theme value (Light=0, Dark=1)
$currentTheme = Get-ItemPropertyValue -Path $systemThemeKey -Name AppsUseLightTheme

# Toggle the theme: if it's Light (0), change to Dark (1), and vice versa
if ($currentTheme -eq 1) {
    Write-Host "Switching to Light Mode..."
    Set-ItemProperty -Path $systemThemeKey -Name AppsUseLightTheme -Value 0
    Set-ItemProperty -Path $systemThemeKey -Name SystemUsesLightTheme -Value 0
} else {
    Write-Host "Switching to Dark Mode..."
    Set-ItemProperty -Path $systemThemeKey -Name AppsUseLightTheme -Value 1
    Set-ItemProperty -Path $systemThemeKey -Name SystemUsesLightTheme -Value 1
}

# Send a Windows message to refresh the theme (WM_SETTINGCHANGE)
[void] [System.Runtime.InteropServices.Marshal]::PtrToStructure([System.IntPtr]::Zero, [type]::GetType("System.Windows.Forms.Application, System.Windows.Forms"))
[System.Windows.Forms.SystemParameters]::Info.Refresh()
[System.Windows.Forms.Application]::RaiseIdle([System.EventArgs]::Empty)

Write-Host "Theme has been changed!"
