{
  imports = [
    ../../modules/system/base.nix
    ../../modules/system/networking.nix
    ../../modules/system/bootloader.nix
    ../../modules/users/mloeven.nix

    ../../modules/desktop/gnome.nix
    ../../modules/desktop/pipewire.nix

    ../../modules/hardware/nvidia.nix

    ./hardware.nix
    ./overrides.nix
  ];

  networking.hostName = "elaris-desktop";
}
