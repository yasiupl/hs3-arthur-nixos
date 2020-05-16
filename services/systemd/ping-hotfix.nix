{ config, pkgs, ... }:
{
  systemd.services.ping-hotfix = {
      enable = true;
      description = "When you're a wireguard virgin, but a systemd CHAD";
      serviceConfig = {
          Type = "oneshot";
          ExecStart = "/run/wrappers/bin/ping -c 1 10.69.1.1";
          Restart = "no";
      };
      startAt = "*:0/15";
      wantedBy = [ "default.target" ];
  };
}
