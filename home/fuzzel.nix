{ pkgs, lib, ... }:
{
  home.packages = with pkgs; [
    fuzzel
  ];
  programs.fuzzel.enable = true;
  programs.fuzzel.settings.colors = {
    background = "0b0b0bFF";
    foreground = "7daea3FF";
    text = "e3a84eFF";
  };
}
