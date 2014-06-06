class cmuphyscomp::network {
  
  # Network configuration for the CMU campus.
  file { "/etc/resolv.conf":
    ensure => present,
    mode   => 0644,
    owner  => 'root',
    group  => 'root',
    source => "puppet:///modules/cmuphyscomp/etc/resolv.conf",
  }

  file { "/etc/default/ntpdate":
    ensure => present,
    mode   => 0644,
    owner  => 'root',
    group  => 'root',
    source => "puppet:///modules/cmuphyscomp/etc/default/ntpdate",
  }

  # set up Wifi for CMU
  file { "/etc/NetworkManager/system-connections/CMU":
    mode   => 0600,
    owner  => 'root',
    group  => 'root',
    source => "puppet:///modules/cmuphyscomp/etc/NetworkManager/system-connections/CMU",
  }


  # set up the hardwired ethernet for static local IP
  file { "/etc/NetworkManager/system-connections/wired-ethernet-eth0":
    mode   => 0600,
    owner  => 'root',
    group  => 'root',
    source => "puppet:///modules/cmuphyscomp/etc/NetworkManager/system-connections/wired-ethernet-eth0",
  }
}
