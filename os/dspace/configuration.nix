{ config, ... }:

let
  user = config.global.userdata.name;
in
{
  imports = [
    ../common/configuration.nix
    ../server/configuration.nix
    ./hardware-configuration.nix

    ./modules/network.nix
    ./modules/www.nix
  ];


  users.users.${user}.openssh.authorizedKeys.keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILvR5FliFLq1FJWotnBk9deWmbeGi2uq2XVmx0uAr1Lw sinan@fscusat"
  ];
}
