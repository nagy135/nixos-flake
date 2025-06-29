{ config, pkgs, ... }:

{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    blueberry
    gcc
    git
    stow
    alacritty
    kitty
    google-chrome
    neovim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    rpi-imager
    rustc
    cargo
    gnumake
    rust-analyzer
    ncdu
    gammastep
    rofi-wayland
    sxiv
    wget
    google-chrome
    git
    lazygit
    # qutebrowser
    gopls
    mpv
    lsd
    zsh
    zsh-powerlevel10k
    gcc
    zig
    killall
    lua
    stow
    nautilus
    neofetch
    dmenu
    vifm
    tmux
    ffmpeg
    docker
    docker-compose
    fzf
    htop
    bun
    nodePackages.npm
    nodePackages.typescript
    nodePackages.prettier
    nodejs
    pavucontrol
    yt-dlp
    zsh-fzf-tab
    pipewire
    wireplumber
    xdg-desktop-portal-hyprland
    libnotify
    dunst
    spotify
    pamixer
    postman
    transmission_3
    ripgrep
    z-lua
    jq
    nix-prefetch-scripts
    steam
    stig
    zip
    unzip
    file
    sumneko-lua-language-server
    gh
    gimp
    wl-clipboard
    hyprshot
    spotify
    bambu-studio
    code-cursor
    teams-for-linux
    gnupg
    pinentry-gtk2
    portal
    wf-recorder
    zathura
    copyq
    wl-kbptr
    wlrctl
  ];

  environment.etc."zsh-fzf-tab/fzf-tab.plugin.zsh".source = "${pkgs.zsh-fzf-tab}/share/fzf-tab/fzf-tab.plugin.zsh";
  programs.zsh.enable = true;
  programs.zsh.promptInit = "source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme";


  nixpkgs.config.allowUnfree = true;

}
