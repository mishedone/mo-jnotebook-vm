# Jupyter notebook Vagrant setup

### Short description

The Vagrant configuration in this repository allows you to have a running jupyter notebook in no time (well... Anaconda is a bit slow to install but you can drink some coffee or whatevery you like during the provisioning). This way you can avoid the hustle of manually installing all required libraries and are able to reproduce the whole environment whenever / wherever it is needed. In addition - this approach keeps your host machine clean (tried upgrading your Ubuntu host python version?).

### Requirements:

1. Vagrant of course - check it out [here](https://www.vagrantup.com/)
2. [VirtualBox](https://www.virtualbox.org/) or other [VM provider](https://www.vagrantup.com/docs/providers/)
3. (optional) Windows hosts - install the [winnfsd Vagrant plugin](https://github.com/winnfsd/vagrant-winnfsd) so folder sharing is faster

That's all - now you can just vagrant up and wait for the provisioning to finish.

### Where are my notebooks

Once the VM is up and running you will have jupyter notebook available on port 9000 (just hit 127.0.0.1:9000 in your browser, modify the Vagrantfile if there are any collisions). All notebooks are saved under the notebooks folder in this repository so feel free to do whatever you want there.

Have fun!
