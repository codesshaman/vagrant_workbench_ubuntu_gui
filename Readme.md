# Vagrant virual machine with mysql workbench

Your need install vagrant and virtualbox for up this configuration.

Your need install [vagrant](https://github.com/hashicorp/vagrant-installers/releases/tag/v2.3.4.dev%2Bmain "vagrant") and  [virtualbox](https://www.virtualbox.org/ "virtualbox") for up this configuration. Optional you can use [make](https://www.gnu.org/software/make/ "make").

### Step 1

Download box bento/ubuntu-22.04 for virtualbox from [vagrantup](https://app.vagrantup.com/bento/boxes/ubuntu-22.04 "vagrantup").

### Step 2

Clonr this repository: 

``git clone https://github.com/codesshaman/vagrant_workbench_ubuntu_gui.git``

### Step 3

Copy/move box and named it "ubuntu". In the terminal go inside the project folder:

``cp ~/Downloads/3bb5d30a-67c6-43a4-b3e5-56b24b604656 path_to/vagrant_workbench_ubuntu_gui/ubuntu``

or

``mv 3bb5d30a-67c6-43a4-b3e5-56b24b604656 vagrant_workbench_ubuntu_gui/ubuntu``

``cd vagrant_workbench_ubuntu_gui/project``

### Step 4

If necessary, put your database dump to "project" folder. This folder be shared with virtual machine disk.

### Step 5

Up to vagrant_workbench_ubuntu_gui folder and init configuration:

``cd ..``

Inicialize configuration:

``vagrant box add bento/ubuntu-22.04 ubuntu``

or with make:

``make build``

### Step 6

Install configuration:

``vagrant up --provider=virtualbox``

or with make:

``make``

### Step 7

reboot virtual machine and login with login and password "vagrant".

### Step 8

Connect to VM from terminal:

``ssh vagrant@192.168.58.93``

or with make:

``make connect``

## Howto use this configuration?

1. Open external folder "<myproject>" or "<myproject>/src" in Pycharm
2. Use VM for project creation and external project folder for use git

Start: ``vagrant up`` or ``make``

Stop: ``vagrant halt`` or ``make down``

Restart: ``vagrant reload`` or ``make re``

Hybernation: ``vagrant suspend``

Delete VM: ``vagrant destroy`` or ``make clean``
