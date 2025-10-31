{ pkgs }:
pkgs.mkShell {
  # Add build dependencies
  packages = [
    pkgs.esphome
    pkgs.esptool
    pkgs.just
    pkgs.openssl
  ];

  # Add environment variables
  env = { };

  # Load custom bash code
  shellHook = ''
    echo "ESPHome devshell: esphome dashboard .  # starta GUI"
  '';
}
