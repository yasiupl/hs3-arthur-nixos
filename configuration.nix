# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:
let
  whichPkg = pkg: "${builtins.getAttr pkg pkgs}/bin/${pkg}";
in
{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      # Allows to run nomad containers + consul is graphical manager 
      ./services/containers/nomad/nomad.nix
      ./services/containers/nomad/consul.nix
      # Wireguard Passes + Hotfix for dropping connection
      ./local.nix
      ./services/systemd/ping-hotfix.nix
      # Users files 
      ./users/users.nix
    ];

  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  boot.loader.grub.device = "/dev/sda"; # or "nodev" for efi only

  networking.hostName = "arthur";

  # Select internationalisation properties.
  # i18n = {
  #   consoleFont = "Lat2-Terminus16";
  #   consoleKeyMap = "us";
  #   defaultLocale = "en_US.UTF-8";
  # };

  virtualisation.docker.enable = true;

  time.timeZone = "Europe/Warsaw";

  environment.systemPackages = with pkgs; [
    consul
    direnv
    wget
    vim
    git
    linuxPackages.wireguard
  ];

  services.openssh.enable = true;
  
  networking.firewall.enable = false;

  services.openssh.gatewayPorts = "yes";
  networking.wireguard.interfaces.wg0 = {
      ips = [ "10.69.10.6/32" ];
      peers = [ 
        { 
          allowedIPs = [ "10.69.0.0/16" ];
          endpoint = "vpn.hs3.pl:58008";
          publicKey = "5pnN3CIdsMFT1se6fm+FMasD2EPxAC9p+6mIQYj+nmo=";
          persistentKeepalive = 25;
        } 
      ];
    }; 

  services.nginx = {
      enable = true;
      recommendedProxySettings = true;
      recommendedTlsSettings = true;
      # other Nginx options
      virtualHosts."events.hs3.pl" =  {
        locations."/" = {
          proxyPass = "http://10.14.10.69:2137";# need to add localhost to loopback as it aint working
        };
      };
  };



  # This value determines the NixOS release with which your system is to be
  # compatible, in order to avoid breaking some software such as database
  # servers. You should change this only after NixOS release notes say you
  # should.
  system.stateVersion = "19.03"; # Did you read the comment?

}
