{ pkgs, config, ... }: {
 

  imports = [
    ./variables.nix

    ./../../home
  ]; 

  neofetch.enable = true;
  

  home = {


    inherit (config.var) username;
    homeDirectory = "/home/" + config.var.username;
    
    packages = with pkgs; []; # TODO: test and add packages

    stateVersion = "24.05"; 
     
  };
  
  programs.home-manager.enable = true;

}



