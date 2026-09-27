import sys
import os

print("sudo pacman -S --noconfirm --needed neovim git ripgrep nodejs npm python base-devel")
os.system("sudo pacman -S --noconfirm --needed neovim git ripgrep nodejs npm python base-devel")

while (1):
    answer = input("The '~/.config/nvim' directory will be overwritten. Continue? [y/n]: ").lower()
    if answer == "y":
        os.system("mkdir ~/.config/nvim")
        os.system("mv lua init.lua lazy-lock.json ~/.config/nvim/")
        os.system("neovim")
        break
    elif answer == "n":
        print("Bye...")
        sys.exit()
    else:
        print("Invalid argument!")
