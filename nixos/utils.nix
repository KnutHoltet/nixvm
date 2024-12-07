{ pkgs, config, ... }:

let
  hostname = config.var.hostname;
  keyboardLayout = config.var.keyboardLayout;
in
{
  
  services = {

    xserver = {
      enable = true;
      xkb.layout = keyboardLayout;
      xkb.variant = "";
    };
  };
  
  console.keyMap = keyboardLayout;

  environment.systemPackages = with pkgs; [
    wget
    curl
  ];


}
