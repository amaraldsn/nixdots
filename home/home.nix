{ config, pkgs, ... }: {

  imports = [
    hyprland.homeManagerModules.default
    ./programs
  ];
  
  home.username = "anonuumne";
  home.homeDirectory = "/home/anonuumne";

  home.packages = (with pkgs; [
    
    #User Apps
    kitty
    libsForQt5.kdeconnect-kde # KDE Connect
    telegram-desktop
    vscode
    gimp
    inkscape
    vivaldi
    obs-studio
    libreoffice
    cool-retro-term
    bibata-cursors
    
	# Basics
	vim
    wget
    git
    curl
    fastfetch
    neofetch

    # Utils Hyprland
    waybar
    dunst # notificações
    libnotify
    swww # wallpaper
    rofi-wayland
    grim
    slurp
    wl-clipboard
    ags
    swappy
    playerctl # Audio Control
    hyprpicker

    # Thunar
    xarchiver
    zip
    unzip
    p7zip
    arj
    lzop
    cpio
    unrar
     
    #utils
    ranger
    wlr-randr
    appimage-run
    xflux
    dunst
    pavucontrol
    sqlite

    #misc 
    cava
    neovim
    pamixer
    mpc-cli
    tty-clock
    exa
    btop
    tokyo-night-gtk

  ]) ++ (with pkgs.gnome; [ 
    zenity
    gnome-tweaks
    eog
    gedit
  ]);

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
    };

    "org/gnome/shell/extensions/user-theme" = {
      name = "Tokyonight-Dark-B-LB";
    };
  };

  programs.home-manager.enable = true;

  home.stateVersion = "24.05";

}
