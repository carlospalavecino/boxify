# Boxify

A simple cli application, made to simplify the creation of vagrant boxes.

### Requirements

- vmware hypervisor
- vagrant app
- vagrant-vmware-desktop plugin

## Comands
### 1. Download 
#### Download a Mac Installer
```bash
# Download installer from AppStore
boxify download macos [Sonoma]  
```
> [!NOTE]  
> The available options are:
> Sonoma |  Ventura | Monterey | BigSur | Catalina | Mojave | HighSierra | Sierra | ElCapitan | Yosemite | MountainLion | Lion

> [!IMPORTANT]
> You must be on a MacOS host to download the installer.

#### TODO: Download a Debian ISO
#### TODO: Download a Rocky ISO
#### TODO: Download a OpenSuse ISO

### 2. Build
#### Build an iso (Only for MacOS Installer)
You can build an iso from a MacInstaller.app located on your /Applications folder.
```bash
boxify build iso Sonoma  [-p ~/Desktop]
```

> [!NOTE]  
> The available options are:
> Sonoma |  Ventura | Monterey | BigSur | Catalina | Mojave | HighSierra | Sierra | ElCapitan | Yosemite | MountainLion | Lion

> [!TIP]
> You can specify a path to save the iso file.
> The default path is ~/Desktop

> [!IMPORTANT]
> The MacOS Installer App must be fullly downloaded.

### 3. Install the vm
You need to install and tweak the vm as you want.
You could install the vm with the iso provided by the iso builder or you can provide your own iso.
> [!IMPORTANT]
> - Install vmware tools.
> - Enble remote login.
> - You must create a user vagrant an set the password vagrant.
> - If you want to use the ssh to connect to the vm, you must create a ssh key and add it to the vm.

> [!IMPORTANT]
> Boxify can only build a box from a running vm. **The vm need to be powered off**.


#### TODO: Build the vagrant box

#### TODO: Push the vagrant box to the vagrant cloud