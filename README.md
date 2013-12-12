Running Neos inside Docker
==========================

This project contains Dockerfiles to run Neos and Flow applications inside Docker, to be
used for testing instances, running unit and functional tests, and Behat tests.

It's currently *work in progress* and still being improved.


Development with Vagrant
------------------------

For development, I am using vagrant. To get started, run:

```
vagrant up

# wait a little until guest additions are installed

vagrant halt

vagrant up # sometimes, starting the VM does not always work. then, just re-run the command.

vagrant ssh
# now, check that /vagrant exists and has content. If not, reboot the vagrant VM.
```


Checking out Neos
-----------------

For further work, you need a Neos checkout inside the `neos-distribution` folder of
this directory. You can create one using the `./checkout-neos.sh` script; or alternatively
use `./checkout-neos-1-0-0.sh`.


Building and Running Neos
-------------------------

If running vagrant, enter the vagrant VM using `vagrant ssh`, and then `cd /vagrant` for
the following commands:


```
# build a neos image.
# in some cases, this does not run through yet; so in this case, just re-run this command.
./build-run-neos.sh

# start a neos container.
./run-neos.sh

# now, go to http://localhost:49080 and enjoy Neos. There is a backend user "admin/password"
# created already.
```