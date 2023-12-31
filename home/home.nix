{ inputs, pkgs, hyprland, ... }:
{
  imports = [
     hyprland.homeManagerModules.default
	 ./apps 
   ./theme
  ];

  home = {
    username = "nocta";
    homeDirectory = "/home/nocta";

  };
  home.packages = (with pkgs; [
    #default
    kitty
    firefox
	  dunst
	  swww
	  starship
    git
    btop
    gh
    ffmpeg_6-full
    imv
    mpv
    vlc
    starship
    vscode
  ]);

programs.kitty.shellIntegration.enableFishIntegration = true;
   programs.fish = {
     enable = true;
     shellInit = ''
       starship init fish | source
     '';
  };
  programs.home-manager.enable = true;
  home.stateVersion = "23.05";
}
