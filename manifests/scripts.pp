class cmuphyscomp::scripts {

  # Make sure some standard scripts are installed.

  file { "/usr/local/bin/udoo_update":
    ensure => present,
    mode   => 0755,
    owner  => root,
    group  => root,
    source => "puppet:///modules/cmuphyscomp/bin/udoo_update",
  }

}
