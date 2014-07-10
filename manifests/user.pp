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

  # this normally already exists
  file { "/home/ubuntu/Desktop":
    ensure => 'directory',
    mode   => 0755,
    owner  => ubuntu,
    group  => ubuntu,
  }

  # folder to hold ssh keys
  file { "/home/ubuntu/.ssh":
    ensure => 'directory',
    mode   => 0700,
    owner  => ubuntu,
    group  => ubuntu,
  }

  ################################################################
  # folder to hold Pure Data patches and externals
  file { "/home/ubuntu/pd-externals":
    ensure => 'directory',
    mode   => 0755,
    owner  => ubuntu,
    group  => ubuntu,
  }

  # Pure Data library provided with the course
  file { "/home/ubuntu/pd-externals/physcomp":
    ensure => 'link',
    target => '/opt/cmuphyscomp/course-demos/lib/physcomp',
    owner  => ubuntu,
    group  => ubuntu,
  }

  # Pure Data examples provided with the course
  file { "/home/ubuntu/pd-externals/demos":
    ensure => 'link',
    target => '/opt/cmuphyscomp/course-demos/demos',
    owner  => ubuntu,
    group  => ubuntu,
  }

  file { "/home/ubuntu/pd-externals/doc":
    ensure => 'link',
    target => '/opt/cmuphyscomp/course-demos/doc',
    owner  => ubuntu,
    group  => ubuntu,
  }

  ################################################################
  # folders to hold Arduino sketches and libraries
  file { "/home/ubuntu/Arduino":
    ensure => 'directory',
    mode   => 0755,
    owner  => ubuntu,
    group  => ubuntu,
  }

  file { "/home/ubuntu/Arduino/libraries":
    ensure => 'directory',
    mode   => 0755,
    owner  => ubuntu,
    group  => ubuntu,
  }

  # Arduino sketches provided with the course
  file { "/home/ubuntu/Arduino/cmuphyscomp":
    ensure => 'link',
    target => '/opt/cmuphyscomp/course-demos/Arduino/',
    owner  => ubuntu,
    group  => ubuntu,
  }

  # Arduino libraries provided with the course
  file { "/home/ubuntu/Arduino/libraries/OSC":
    ensure => 'link',
    target => '/opt/cmuphyscomp/src/OSC',
    owner  => ubuntu,
    group  => ubuntu,
  }
}
