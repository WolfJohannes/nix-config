{ config, pkgs, lib, ... }:

{
  environment.systemPackages = config.environment.systemPackages ++ [
    pkgs._1password-gui
    pkgs.firefox
  ];

  programs.firefox.enable = true;
}
