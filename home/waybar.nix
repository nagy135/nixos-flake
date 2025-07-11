{ pkgs, lib, ... }:
{
  home.packages = with pkgs; [
    waybar
  ];
  programs.waybar.enable = true;
  programs.waybar.style = ''
               * {
                 font-family: "JetBrainsMono Nerd Font";
                 font-size: 12pt;
                 font-weight: bold;
                 border-radius: 0px;
                 transition-property: background-color;
                 transition-duration: 0.5s;
               }
               @keyframes blink_red {
                 to {
                   background-color: rgb(242, 143, 173);
                   color: rgb(26, 24, 38);
                 }
               }
               .warning, .critical, .urgent {
                 animation-name: blink_red;
                 animation-duration: 1s;
                 animation-timing-function: linear;
                 animation-iteration-count: infinite;
                 animation-direction: alternate;
               }
               window#waybar {
                 background-color: transparent;
                 color: rgb(217, 224, 238);
               }
               window > box {
                 margin-left: 5px;
                 margin-right: 5px;
                 margin-top: 0px;
                 background-color: rgb(30, 30, 46);
               }
         #workspaces {
                 padding-left: 0px;
                 padding-right: 4px;
               }
         #workspaces button {
                 padding-top: 0px;
                 padding-bottom: 0px;
                 padding-left: 5px;
                 padding-right: 5px;
               }
         #workspaces button.active {
                 background-color: rgb(181, 232, 224);
                 color: rgb(26, 24, 38);
               }
         #workspaces button.urgent {
                 color: rgb(26, 24, 38);
               }
         #workspaces button:hover {
                 background-color: rgb(248, 189, 150);
                 color: rgb(26, 24, 38);
               }
               tooltip {
                 background: rgb(48, 45, 65);
               }
               tooltip label {
                 color: rgb(217, 224, 238);
               }
         #custom-launcher {
                 font-size: 20px;
                 padding-left: 8px;
                 padding-right: 6px;
                 color: #7ebae4;
               }
         #mode, #clock, #memory, #temperature,#cpu,#mpd, #custom-wall, #temperature, #backlight, #pulseaudio, #network, #battery, #custom-powermenu, #custom-cava-internal {
                 padding-left: 10px;
                 padding-right: 10px;
               }
               /* #mode { */
               /* 	margin-left: 10px; */
               /* 	background-color: rgb(248, 189, 150); */
               /*     color: rgb(26, 24, 38); */
               /* } */
         #memory {
                 color: rgb(181, 232, 224);
               }
         #cpu {
                 color: rgb(245, 194, 231);
               }
         #clock {
                 color: rgb(217, 224, 238);
               }
        /* #idle_inhibitor {
                 color: rgb(221, 182, 242);
               }*/
         #custom-wall {
                 color: rgb(221, 182, 242);
            }
         #temperature {
                 color: rgb(150, 205, 251);
               }
         #backlight {
                 color: rgb(248, 189, 150);
               }
         #pulseaudio {
                 color: rgb(245, 224, 220);
               }
         #network {
                 color: #ABE9B3;
               }
         #network.disconnected {
                 color: rgb(255, 255, 255);
               }
         #battery.charging, #battery.plugged, #battery.full, #battery.discharging {
                 color: rgb(250, 227, 176);
               }

         #battery.critical:not(.charging) {
                 color: rgb(242, 143, 173);
               }
         #custom-powermenu {
                 color: rgb(242, 143, 173);
               }
         #tray {
                 padding-right: 8px;
                 padding-left: 10px;
               }
         #mpd.paused {
                 color: #414868;
                 font-style: italic;
               }
         #mpd.stopped {
                 background: transparent;
               }
         #mpd {
                 color: #c0caf5;
               }
         #custom-cava-internal{
                 font-family: "Hack Nerd Font" ;
               }
  '';

programs.waybar.settings = {
  mainBar = {
    layer = "top";
    position = "top";
    height = 20;
    output = [
      "eDP-1"
      "HDMI-A-1"
    ];
    modules-left = [ "hyprland/workspaces" "tray"];
    modules-center = [ "hyprland/window" ];
    modules-right = [ "network" "battery" "cpu" "memory" "temperature" "clock" ];

    "cpu" = {
      format = " {usage}%";
      tooltip = true;
    };

    "memory" = {
      format = " {percentage}%";
    };

    "temperature" = {
      format = " {temperatureC}°C";
    };

    "battery" = {
      format = "{capacity}% ";
      format-charging = "{capacity}% ";
      format-plugged = "{capacity}% ";
      format-alt = "{time}";
    };

    "clock" = {
      format = "󰥔 {:%H:%M}";
      tooltip = true;
      tooltip-format = "{:%A, %d %B %Y | %H:%M:%S}";
    };
  };
};
}
