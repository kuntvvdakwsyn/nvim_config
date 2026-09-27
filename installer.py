import sys
import subprocess
import os

while (1):
    choice = input(
            "Select your Linux distribution:\n"
            "1) Arch Linux (pacman)\n"
            "2) Debian / Ubuntu (apt)\n"
            "3) Fedora (dnf)\n"
            "4) Other\n"
            "Enter choice [1-4]: "
            ).strip()
    
    packages = "neovim git curl wget unzip tar gzip ripgrep fd tree-sitter-cli nodejs npm python python-pip python-pynvim base-devel luarocks ttf-jetbrains-mono-nerd wl-clipboard xclip"
    
    if choice == "1":
        print(f"sudo pacman -S --noconfirm --needed {packages}")
        os.system(f"sudo pacman -S --noconfirm --needed {packages}")
        break
    elif choice == "2":
        print(f"sudo pacman -S --noconfirm --needed {packages}")
        os.system(f"sudo pacman -S --noconfirm --needed {packages}")
        break
    elif choice == "3":
        print(f"sudo pacman -S --noconfirm --needed {packages}")
        os.system(f"sudo pacman -S --noconfirm --needed {packages}")
        break
    elif choice == "4":
        print(f"Install this packages: {packages}")
        break
    else:
        print("Invalid argument! Please choose 1, 2, 3 or 4.\n")

os.system("clear")

while (1):
    answer = input("The '~/.config/nvim' directory will be overwritten. Continue? [y/n]: ").lower().strip()
    if answer == "y":
        os.system("mkdir ~/.config/nvim")
        os.system("mv lua init.lua lazy-lock.json ~/.config/nvim/")
        os.chdir("..")
        os.system("rm -rf nvim_config")
        os.system("nvim")
        break
    elif answer == "n":
        print("Bye...")
        sys.exit()
    else:
        print("Invalid argument!")
