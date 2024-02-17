{ ... }: {
  imports = [
    ./debian
    ./www.nix
  ];

  systemd.tmpfiles.rules = [
    "d  /var/cache/mirror/        0755  root  root"
    "L  /var/cache/mirror/debian  -     -     -     - /var/lib/ftpsync/"
  ];
}
