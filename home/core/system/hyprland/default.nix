{ pkgs, lib, ... }: {
  

  imports = [
    ./bindings.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    systemd.enable = true;

    settings = {
      "$mod" = "SUPER";
    };

   
  };
}
