{ pkgs, ... }: {
  time.timeZone = "Europe/Amsterdam";

  environment.systemPackages = with pkgs; [
    vim
    wget
    tree
    git
  ];

  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "25.05";
}
