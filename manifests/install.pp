# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include hashicorp_install::install
class hashicorp_install::install {
  package { 'unzip':
    ensure => installed,
  }

  case $facts['os']['architecture'] {
    'amd64', 'x86_64': {
      $os_arch = 'amd64'
    }

    'arm64', 'armhf': {
      $os_arch = 'arm'
    }

    'i386': {
      $os_arch = '386'
    }

    default: {
      fail('OS architecture not supported.')
    }
  }

  $hashicorp_install::packages.each |String $package, String $version| {
    $pkg_url = "https://releases.hashicorp.com/${package}/${version}/${package}_${version}_linux_${os_arch}.zip"

    archive { "/tmp/${package}-${version}.zip":
      ensure        => present,
      filename      => "/tmp/${package}-${version}.zip",
      source        => $pkg_url,
      extract       => true,
      extract_path  => '/usr/bin',
      extract_flags => '-o',
      creates       => "/usr/bin/${package}_${version}_installed",
      cleanup       => true,
    }

    file { "/usr/bin/${package}_${version}_installed":
      ensure => present,
    }
  }
}
