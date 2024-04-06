{config, pkgs, ...}:
{
  imports = [
    ./home
  ];
  home.username = "victor";
  home.homeDirectory = "/home/victor";
  
  #the size of mouse and fontsize
  #xresources.properties = {
  #  "Xcursor.size" = 32;
  #  "Xft.dpi" = 124;
  #};
  home.packages = with pkgs;[
    neofetch

    zip
    unzip
    tree
    #nix-output-mmonitor
    which
    #starship
    microsoft-edge
    vscode
    fish
    rofi
    eww-wayland
    neovim
#    waybar
  ];
  #programs.starship = {
  #  enable = true;
  #  settings = {
  #    add_newline = true;
  #    aws.disabled = true;
  #    gcloud.disabled = true;
  #    line_break.disabled = true;
  #  };
  #};


  home.stateVersion = "23.11";
  programs.home-manager.enable = true;
}
