# human-connectome-pipelines-installer (beta)

## Using with WSL (Windows Subsystem for Linux)

I tested the setup using WSL2 and Ubuntu 19.04 (using those instructions: https://wiki.ubuntu.com/WSL). 
On Windows side it should be enough to download this Ubuntu image: https://cloud-images.ubuntu.com/disco/current/disco-server-cloudimg-amd64-wsl.rootfs.tar.gz

Then, install it using the following command in PowerShell:

```
mkdir C:\WSL
wsl --import ubuntu-disco-server C:\WSL\ubuntu-disco-server .\disco-server-cloudimg-amd64-wsl.rootfs.tar.gz
```

On Linux side, by default you will be authenticated as root, it should be enough to clone this repo into the 
`/root` directory and execute `make install`.

All packages will be installed to `/opt`. 

### Recommended software

#### vcxsrv

This is the native XServer for Windows. It is possible to delegate GUI Apps rendering to the Windows host.
It supports OpenGL.

https://sourceforge.net/projects/vcxsrv/
