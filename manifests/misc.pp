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

  file { "/etc/udev/rules.d/90-gpio.rules":
    ensure => present,
    mode   => 0644,
    owner  => 'root',
    group  => 'root',
    source => "puppet:///modules/cmuphyscomp/etc/udev/rules.d/90-gpio.rules",
  }

}