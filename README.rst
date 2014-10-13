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
        ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDf/thtXreVuTmGtFH/7Q5/5KxeRixtKqmuYs10CKSSYXCyMuU9yIDCDmGeNiywjhQxFKUF2khkpZm7A0oU16V9pvpSiOBXfx7SxwkEiw6qF5jnasrKITRpiMxOiVnlZZ5lwPoM7QXeYZMApDkK6h3XVYXZ3QuJ5eZ/QQHU6MViNfXWFzO4VbOxgqWU0+tFnivVG4U8LLkEtgUOqH5CsqacUvC3ivSid64jqD+nWlQEKewzF+iBezpVtsTOva1LDfupzVLBo+0TkvsXMLfw1AQ/BqsYPDcdZwAqc6MqQUgfmmy07yQQEfzrr7xX1kfH9JjsMCet/E8nuLZ4WuES0/X1 travis@spaceghost
