{ pkgs, ... }: {
  time.timeZone = "Europe/Amsterdam";

  environment.systemPackages = with pkgs; [
    vim
    wget
    tree
    git
    starship
  ];

  nixpkgs.config.allowUnfree = true;
  
  programs.starship = {
    enable = true;
    settings = {};
  };
  
  system.stateVersion = "25.05";
}
