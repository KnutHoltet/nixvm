{ pkgs, ... }: {
  
  wayland.windowManager.hyprland.settings = {
    bind = [
      "$mod, Q, exec, ${pkgs.kitty}/bin/kitty" # Kitty
    ];
    
  };


}
