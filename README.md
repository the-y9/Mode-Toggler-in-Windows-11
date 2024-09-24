# Mode Toggler in Windows 11

This repository contains a PowerShell script that toggles between Light and Dark modes in Windows 11 by modifying system registry keys and refreshing the theme settings.

## Features

- **Light Mode / Dark Mode Toggle**: Instantly switch between Light and Dark modes.
- **System-Wide Changes**: Applies changes to both applications and the system interface.
- **Shortcut Friendly**: Create a desktop shortcut to quickly toggle themes.

## Prerequisites

- **PowerShell**: Ensure you have PowerShell installed (default in Windows 11).
- **Administrator Access**: You may need to run the script as an administrator to modify the registry.

## How to Use

### Step 1: Clone the Repository

To get started, clone this repository to your local machine:

```bash
git clone https://github.com/the-y9/Mode-Toggler-in-Windows-11.git
```

Navigate to the cloned folder:

```bash
cd Mode-Toggler-in-Windows-11
```

### Step 2: Run the Script

Use PowerShell to run the script that toggles the theme:

```powershell
powershell -ExecutionPolicy Bypass -File .\toggleTheme.ps1
```

### Step 3: Create a Desktop Shortcut (Optional)

If you'd like to toggle between themes with one click, you can create a shortcut on your desktop:

1. **Right-click on the desktop** and select **New > Shortcut**.
2. Enter the following as the shortcut target:
   ```bash
   powershell -ExecutionPolicy Bypass -File "C:\path\to\Mode-Toggler-in-Windows-11\toggleTheme.ps1"
   ```
3. Click **Next**, name the shortcut (e.g., "Toggle Theme"), and click **Finish**.
4. (Optional) **Change the Shortcut Icon**:
   - Right-click the shortcut and select **Properties**.
   - Go to the **Shortcut** tab and click **Change Icon**.
   - Select an icon or upload your custom icon, then click **OK**.

Now you can quickly toggle between Light and Dark modes by simply clicking the shortcut!

## Script Explanation

The script interacts with the Windows Registry to manage the theme settings:

- **Registry Path**: 
  - `HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize`
  - It modifies the `AppsUseLightTheme` and `SystemUsesLightTheme` values.

- **Values**:
  - `0` for Dark Mode
  - `1` for Light Mode

The script also refreshes the system to apply the changes immediately after toggling the theme.

---

By following these steps, you can easily pull the project, run the script, and create a shortcut to toggle themes in Windows 11.
