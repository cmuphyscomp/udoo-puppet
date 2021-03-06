cmuphyscomp/udoo-puppet
=======================

This package contains administration configuration scripts for the Udoo
microcontroller systems for the Physical Computing Lab in the IDeATe program at
Carnegie Mellon University.

We are using the Udoo platform for the Fall 2014 iteration of Introduction to
Physical Computing.  The Udoo board combines a small Linux computer with the
equivalent of an Arduino Due.

The Linux CPU runs a Linux distribution provided by Udoo.org.  The scripts in
this package use the 'puppet' administration system to customize the stock
configuration for use on the Carnegie Mellon campus and with the course
curriculum.

This package is cloned into the following path on the Udoo boards:
/etc/puppet/modules/cmuphyscomp.

Once installed, this package provides scripts for a student to initiate a
software update.  During the update, this package is updated from github and
puppet is run to apply any required system changes.


References
----------
  * http://physcomp.org
  * https://github.com/cmuphyscomp/udoo-puppet
  * http://www.udoo.org
  * http://puppetlabs.com/puppet/puppet-open-source
  * http://www.cmu.edu/ideate/


Installation
------------

This package can be installed on a stock Udoo Linux distribution as follows.

First, the network needs to manually configured to the point where the public
internet is accessible.

Make sure that puppet and git are installed:

    $ sudo apt-get update
    $ sudo apt-get install git puppet

Clone this package from github into a new folder:

    $ cd /etc/puppet/modules
    $ sudo git clone https://github.com/cmuphyscomp/udoo-puppet cmuphyscomp

Run the update script once in-place for initial configuration:

    $ sudo python /etc/puppet/modules/cmuphyscomp/files/bin/udoo_update

After the initial configuration, full updates can be performed as follows:

    $ sudo udoo_update

