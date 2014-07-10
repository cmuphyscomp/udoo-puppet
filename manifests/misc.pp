class cmuphyscomp::misc {
  
  file { "/etc/update-motd.d/20-physcomp":
    ensure => present,
    mode   => 0755,
    owner  => 'root',
    group  => 'root',
    source => "puppet:///modules/cmuphyscomp/etc/update-motd.d/20-physcomp",
  }

  file { "/etc/default/locale":
    ensure => present,
    mode   => 0644,
    owner  => 'root',
    group  => 'root',
    source => "puppet:///modules/cmuphyscomp/etc/default/locale",
  }

  file { "/etc/samba/smb.conf":
    ensure => present,
    mode   => 0644,
    owner  => 'root',
    group  => 'root',
    source => "puppet:///modules/cmuphyscomp/etc/samba/smb.conf",
  }

  file { "/var/lib/samba/passdb.tdb":
    ensure => present,
    mode   => 0600,
    owner  => 'root',
    group  => 'root',
    source => "puppet:///modules/cmuphyscomp/var/lib/samba/passdb.tdb",
  }

  file { "/etc/minicom/minirc.dfl":
    ensure => present,
    mode   => 0644,
    owner  => 'root',
    group  => 'root',
    source => "puppet:///modules/cmuphyscomp/etc/minicom/minirc.dfl",
  }

  # global folder to hold locally installed Pure Data patches and externals
  file { "/usr/local/lib/pd-externals":
    ensure => 'directory',
    mode   => 0755,
    owner  => root,
    group  => root,
  }

  # global folder to hold course package materials in one place
  file { "/opt/cmuphyscomp":
    ensure => 'directory',
    mode   => 0755,
    owner  => root,
    group  => root,
  }

  # locally compiled Pure Data library, kept in the course package
  file { "/usr/local/lib/pd-externals/mrpeach":
    ensure => 'link',
    target => '/opt/cmuphyscomp/lib/pd-externals/mrpeach/',
    owner  => root,
    group  => root,
  }

  # The following was an attempt to fix permissions on /sys/class/gpio/export and /sys/class/gpio/unexport, but
  # I believe it is slowing down boot too much, probably from the rules triggering redundantly.

  # file { "/etc/udev/rules.d/90-gpio.rules":
  #   ensure => present,
  #   mode   => 0644,
  #   owner  => 'root',
  #   group  => 'root',
  #   source => "puppet:///modules/cmuphyscomp/etc/udev/rules.d/90-gpio.rules",
  # }

}
