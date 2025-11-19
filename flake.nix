{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
  };

  outputs = { self, nixpkgs, ... }@inputs:
    let
      system = "x86_64-linux";
      mkHost = name: nixpkgs.lib.nixosSystem {
        system = system;
        modules = [ ./hosts/${name}/default.nix ];
	specialArgs = { inherit inputs; };
      };
    in 
    {
      nixosConfigurations = {
        desktop-elaris = mkHost "desktop-elaris";
        laptop         = mkHost "laptop";
        vm             = mkHost "vm";
      };
    };
}
