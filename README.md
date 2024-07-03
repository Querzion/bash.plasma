# Plasma Tools Installation Script
This script installs some stuff list is further down. 
It automatically detects your package manager (apt, dnf, or pacman) and installs the necessary packages.

## Usage
### Clone the Repository
```bash
git clone https://github.com/querzion/bash.plasma-startup.git
cd bash.plasma-startup
```

### Make the Script Executable
```bash
chmod +x bash.plasma-startup.sh
```

### Run the Script
```bash
./bash.plasma-startup.sh
```

## What the Script Does
- Detects the package manager (apt, dnf, or pacman).
- Updates the package list.
### Installs:
  - Yakuake
  - Visual Studio Code
  - Latest .NET SDK
  - Discord
  - Brave Browser
  - KeePassXC

## Compatibility
### The script is compatible with:

- Debian-based systems (e.g., Ubuntu) using apt.
- Fedora-based systems using dnf.
- Arch-based systems using pacman.
