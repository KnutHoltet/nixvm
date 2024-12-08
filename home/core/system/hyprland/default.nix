{ pkgs, lib, ... }: {
  

  imports = [];

  wayland.windowManager.hyprland = {
    enable = true;
  };

}
