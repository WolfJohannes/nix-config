{ config, pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [
    pkgs._1password-gui
  ];

  programs.firefox.enable = true;
}
