# Docker-open-vm-tools

This Docker container allows you to run open-vm-tools on VMware ESXi.

* Supports Shutdown/Restart
* Returns networking information to the VMware ESXi host

## Dependencies

* SSH must be enabled.
  * The shutdown and restart commands are sent over ssh.
  * This container will generate a unique ssh key pair when it is first launched.

## Usage

SSH run this command.

```
sudo mkdir /root/.ssh
sudo docker run -d --restart=always --net=host -v /root/.ssh/:/root/.ssh/ --name open-vm-tools waterlemons2k/open-vm-tools
```
