{ pkgs, lib, ... }:
{
  home.packages = with pkgs; [
    hyprlock
  ];
 programs.hyprlock.extraConfig = ''
$font = Mononoki Nerd Font
'';
}
