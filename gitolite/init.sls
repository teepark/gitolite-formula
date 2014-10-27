{% set git_user = salt['pillar.get']('gitolite:git_user', 'git') %}

{% if grains['os_family'] == 'Debian' and grains['oscodename'] == 'wheezy' %}

wheezy-backports-for-gitolite:
  pkgrepo.managed:
    - name: deb http://http.debian.net/debian wheezy-backports main
    - humanname: wheezy-backports
    - file: /etc/apt/sources.list.d/wheezy-backports.list
    - require_in:
      - pkg: gitolite-pkg

{% endif %}

gitolite-git-user:
  user.present:
    - name: {{ git_user }}
    - home: /var/lib/gitolite3
    - require:
      - pkg: gitolite-pkg

gitolite-git-homedir-ownership:
  cmd.wait:
    - name: chown -R {{ git_user }}:{{ git_user }} /var/lib/gitolite3
    - watch:
      - user: gitolite-git-user

gitolite-admin-pubkey:
  file.managed:
    - name: /var/lib/gitolite3/admin.pub
    - user: {{ git_user }}
    - group: {{ git_user }}
    - contents_pillar: gitolite:admin_pubkey
    - require:
      - user: gitolite-git-user

gitolite-initial-setup:
  cmd.wait:
    - name: gitolite setup -pk /var/lib/gitolite3/admin.pub
    - user: {{ git_user }}
    - require:
      - cmd: gitolite-git-homedir-ownership
    - watch:
      - file: gitolite-admin-pubkey

gitolite-pkg:
  pkg.installed:
    - name: gitolite3
