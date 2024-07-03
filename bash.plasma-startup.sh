# Function to install Flatpak & Yakuake if not already installed
install_flatpak() {
    if ! command -v flatpak &> /dev/null; then
        if command -v apt-get &> /dev/null; then
            sudo apt update
            sudo apt install -y flatpak yakuake
        elif command -v dnf &> /dev/null; then
            sudo dnf install -y flatpak yakuake
        elif command -v pacman &> /dev/null; then
            sudo pacman -Syu --noconfirm flatpak yakuake
        else
            echo "Error: Unsupported package manager. Please install Flatpak manually."
            exit 1
        fi
    fi
}

# Function to install applications via Flatpak
install_flatpak_apps() {
    # Ensure Flathub repository is added
    flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

    # Install applications
    flatpak install flathub -y com.discordapp.Discord com.brave.Browser org.keepassxc.KeePassXC

    # List installed Flatpak apps for verification (optional)
    echo "Installed Flatpak applications:"
    flatpak list
}

# Main script execution
install_flatpak
install_flatpak_apps
