========
gitolite
========

Install a gitolite server.

.. note::

   See the full `Salt Formulas installation and usage instructions
   <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.


Available states
================

.. contents::
    :local:

``gitolite``
------------

Install the gitolite server. The machine already needs to have a working sshd
with passwordless logins configured.


Configuration
=============

Supports just a few pillar values.

::

    gitolite:
      git_user: git
      admin_pubkey: |
        ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDf/thtXreVuTmGtFH/7Q5/5KxeR...
