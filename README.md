# NIXOS Conf

Hello to hackerspace nixos configuration

## Updating system

Nixos is mostly stateless.
Use: *nixos-rebuild switch* to rebuild it and switch to new version

## Important Places

### configuration.nix

Is main configuration file.
Read it and follow imports.

It contains the nginx configuration, so check it out!!!

### /etc/nixos/users/users.nix

Contains definitions of users.
Add One here, do not use usermod @CringeBit xD

### /services/containers/nomad/jobs

Contains definitions of nomad containers.
**If you want to add some service then you should look here**
Use: *nomad run $file* to run the job (the container)
Use: *nomad job status* to list all jobs

