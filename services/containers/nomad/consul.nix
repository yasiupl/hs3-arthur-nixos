{pkgs, config, ...}:
let
  whichPkg = pkg: "${builtins.getAttr pkg pkgs}/bin/${pkg}";
in
{
  systemd.services.consul-dev = {
      description = "Consul client and server";

      serviceConfig = {
         ExecStart = "${whichPkg "consul"} agent --dev --ui";
         Restart = "on-failure";
      };

      wantedBy = [ "multi-user.target" ];
  };
}
