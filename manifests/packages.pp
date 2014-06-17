
class cmuphyscomp::packages {

  $course_packages =
  [
   "unison",
   "emacs",
   "gcc",
   "make",
   "git",
   "git-gui",
   "screen",
   "xrdp",
   "minicom",
   "python-scipy",
   "python-opencv",
   "python-pyode",
   "puppet",
   "puppet-el",
   "pd-zexy",
   "pd-cyclone",
   "pd-list-abs",
   "pd-osc",
   "ntpdate",
   "samba",
   "python-txosc",
   ]

  # Define packages to remove.
  $remove_packages =
  [
   "ntp",   # don't run a time server, just use ntpdate
   ]
  
  package { $course_packages:
    #  ensure => "installed",
    ensure => "latest",
  }

  package { $remove_packages:
    ensure => "purged",
  }

}
