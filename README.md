# MacBook Quality of Life Setup
This guide helps you set up your new MacBook with essential apps and settings automatically.

---

## What This Setup Does
- Installs essential apps (Chrome, Firefox, 1Password, etc.).
- Configures macOS settings (key repeat rate, Finder, Dock).
- Optionally installs developer tools (if you choose, they are off by default).
- Everything works idempotently, meaning it won’t cause issues if apps are already installed or settings are already configured

### Troubleshooting
- If you see errors, don’t worry! The script continues with the next step.
- If an app fails to install, you can install it manually later.

### Customisation
- Edit apps-to-install.txt to add or remove apps.
- Edit macos-settings.sh or dock-apps.sh to change settings.

---

## How to Use

### Step 1: Download the Setup
1. Click the green **"Code"** button above.
2. Select **"Download ZIP"**.
3. Unzip the downloaded file.

### Step 2: Open Terminal
1. Open **Finder**.
2. Go to **Applications** > **Utilities** > **Terminal**.
3. Drag the unzipped `macos-setup` folder to your Desktop.

### Step 3: Run the Setup
1. In Terminal, type:
   ```bash
   cd ~/Desktop/macos-setup
2. Press **Enter**.
3. Type:
    ```bash
    chmod +x setup_mac.sh
    ./setup_mac.sh
    ```
4. Press **Enter** and follow the prompts.

### Step 4: Restart Your Mac
After the script finishes, restart your MacBook for all changes to take effect.

---

## Customizing App Installation
- Open `apps-to-install.txt` in a text editor.
- To skip an app, add `#` or `--` at the start of the line.
- Examples:
#### This app will NOT be installed
    --google-chrome

#### This app WILL be installed
    firefox

---

## Key Features
- **Error Handling**: Scripts continue even if a command fails.
- **Modular**: Each script is independent and optional.
- **User-Friendly**: `README.md` guides non-technical users step-by-step.

---

## Safety
- The script is safe to run multiple times.
- If an app or setting is already installed/configured, the script will skip or overwrite it without errors.

---

