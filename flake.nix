{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
  };

  outputs = { self, nixpkgs, ... }@inputs:
    let
      system = "x86_64-linux";
      lib = nixpkgs.lib;
    in {
      nixosConfigurations = {
        desktop-elaris = lib.nixosSystem {
          inherit system;
          modules = [ ./hosts/desktop-elaris/default.nix ];
        };

        laptop = lib.nixosSystem {
          inherit system;
          modules = [ ./hosts/laptop/default.nix ];
        };

        vm = lib.nixosSystem {
          inherit system;
          modules = [ ./hosts/vm/default.nix ];
        };
      };
    };
}
