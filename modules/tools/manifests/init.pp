class tools {

  # package install list
  $packages = [
    "curl",
    "vim",
    "htop",
    "imagemagick",
    "php5-imagick"
  ]

  # install packages
  package { $packages:
    ensure => present,
    require => Exec["apt-get update"]
  }
}
