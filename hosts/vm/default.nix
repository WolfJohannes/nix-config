{ pkgs, system }

{
  imports = [
    ../../modules/system/base.nix
    ../../modules/system/networking.nix
    ../../modules/users/mloeven.nix
    ./hardware.nix
  ];

  networking.hostName = "vm";
}
