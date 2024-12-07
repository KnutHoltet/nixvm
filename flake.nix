{
  description = "Thursday, October 31st. The city streets are crowded for the holiday.";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    
  };

  outputs =
     { nixpkgs, ...  } @ inputs: 
   # let

   # in

  {
   nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
    specialArgs =  { inherit inputs; };
    modules = [
     ./hosts/billgates/default.nix
     inputs.home-manager.nixosModules.home-manager

    ];
   };

  };
}
