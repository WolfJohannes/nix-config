{ pkgs, ... }:

{
  users.users.mloeven = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
    packages = with pkgs; [ tree ];
  };
}
