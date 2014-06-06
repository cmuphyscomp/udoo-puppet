class cmuphyscomp::user {

  # Default 'ubuntu' user account configuration.

  # Make sure some additional folders exist in the standard user home folder.

  # file { "/home/ubuntu/bin":
  #   ensure => 'directory',
  #   mode   => 0755,
  #   owner  => ubuntu,
  #   group  => ubuntu,
  # }

  # file { "/home/ubuntu/etc":
  #     ensure => 'directory',
  #        mode   => 0755,
  #     owner  => ubuntu,
  #     group  => ubuntu,
  # }

  file { "/home/ubuntu/Desktop":
    ensure => 'directory',
    mode   => 0755,
    owner  => ubuntu,
    group  => ubuntu,
  }

  file { "/home/ubuntu/.ssh":
    ensure => 'directory',
    mode   => 0700,
    owner  => ubuntu,
    group  => ubuntu,
  }

}
