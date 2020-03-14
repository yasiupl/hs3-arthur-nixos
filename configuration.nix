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
      ./nomad.nix
      ./local.nix
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

  users.users.allgreed = {
      isNormalUser = true;
      extraGroups = [ "wheel" "docker" ];
      openssh.authorizedKeys.keys = [
          "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINKqfsyBaA0RAsa0vyMs499OwkU1IBTKcFwPWuez34/z allgreed@connor"
          "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAII8GU/UML1uxe/IwoPC/+T4RgbzOga9IoUtJtB2Q3dM0 allgreed@terminator"
      ];
  };

  users.users.psuwala = {
      isNormalUser = true;
      extraGroups = [ "wheel" "docker" ];
      openssh.authorizedKeys.keys = [
          "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCg5FmxYTCUiGE3PwPNqbeDJ1Qare4nkg7VDoJc33q9rXnr1qEb883/ghN/aP0cFpBleXU9WQvnOfaj/uEMk2lJwqtgfhMlIJj5jT6X1A7DsAV72uu8404gyD2tlYE4H9iLvg6uZVVUNWz3jsb+RmOXdcub0I++oT1JqrD45MQHA0bR6CZSzKqbG9xbq7qpfYz+vbc5MFHu7lX++691TlZ9ZKYwPMZzHDz8qsxwAcWhcDF+fBALdmg4K1CNKkPy6y9SL/fGAun+21HiwS7AC4mb24VMX5dFtIx+Rj/WMheuTXFuV0fIw26dEdd1FD7lQaa9JZfvqKhc0OTN7ocr2Pex psuwala@MacBook-Pro-Piotr.local"
      ];
  };


  users.users.critbit = {
      isNormalUser = true;
      extraGroups = [ "wheel" "docker" ];
      openssh.authorizedKeys.keys = [
          "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCebJpdjaPXKB2gscm6gvoVSLe+ci2Gd6xJiZpYy+37UkD9+wfJ46tXDRT7qNZnIGa20ySAt+vq+oWVe2RRtLo2hWYPieAfauawhhOVuXtjnN9cuJB3TtNcl7A8ZyvPwQbSxszdueXjUhYD/I5d082cx1eC4dzVM2pw33K2npUAlIXgM3WqBiMkgoL1eEnin7xlTIIu/7RaF4Thm2TNyGRQzRnWtXssgh0B9bd5FvPQ4Ywkbac9bR5gjUurPBP18Cy/oJGjrKs/JUALgxg9mD8F8U376b7Inxz3eKINtJZctEvzt2/Wz32PZORVGjNeGJ350BYXovi1zhqwO8gX1RZP vue95@Vue700"
      ];
  };

  systemd.services.consul-dev = {
      description = "Consul client and server";

      serviceConfig = {
         ExecStart = "${whichPkg "consul"} agent --dev --ui";
         Restart = "on-failure";
      };

      wantedBy = [ "multi-user.target" ];
  };

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




  # This value determines the NixOS release with which your system is to be
  # compatible, in order to avoid breaking some software such as database
  # servers. You should change this only after NixOS release notes say you
  # should.
  system.stateVersion = "19.03"; # Did you read the comment?

}
