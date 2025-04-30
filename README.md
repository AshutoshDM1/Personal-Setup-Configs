# Windows Commands

# Oh-My-Posh Re-Installation:

### ✅ 1. set the profile of Power-shell in that place

```powershell
$PROFILE
```

---

### ✅ 2. **Reinstall the required modules after reset**

After reinstalling Windows, you'll need to run these:

```powershell
# Reinstall required modules
Install-Module Terminal-Icons -Scope CurrentUser -Force
Install-Module PSReadLine -Scope CurrentUser -Force

# Reinstall Oh My Posh
winget install JanDeDobbeleer.OhMyPosh
```

---

### ✅ 3. Installing WSL

```powershell
wsl --install
```

### **Restart your PC when prompted**

After reboot:

- A terminal will open to complete Ubuntu installation.
- Verify Installation

```powershell
wsl --version
wsl --list --verbose
```

### ✅ 4. Other

- Install Nerd Font
- Change the BG-Image

---

### ✅ 5. Installing N-Vim:

### First Install SCOOP

### Steps to Install Scoop (PowerShell):

1. **Run this command to enable script execution:**
    
    ```powershell
    Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
    ```
    
    Type `Y` and press Enter if it asks for confirmation.
    
2. **Install Scoop by running:**
    
    ```powershell
    irm get.scoop.sh | iex
    ```
    
3. **After install, restart PowerShell or Windows Terminal** and test it by typing:
    
    ```powershell
    scoop --version
    ```
    

**Install Neo-vim via Scoop or manually**:

- With **Scoop** (recommended if you have it):
    
    ```bash
    scoop install neovim
    ```
    
- **Open PowerShell and run**:
    
    ```bash
    nvim
    ```
    
- Install Nv-Chad Now
    
    ```bash
    git clone https://github.com/NvChad/starter %USERPROFILE%\AppData\Local\nvim && nvim
    ```
