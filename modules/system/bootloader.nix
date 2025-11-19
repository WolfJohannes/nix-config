{
  boot.loader.systemd-boot = {
    enable = true;
    editor = false;
    configurationLimit = 10;
  };

  boot.loader.efi = {
    efiSysMountPoint = "/boot";
    canTouchEfiVariables = false;
  };
}
