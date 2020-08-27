# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include hashicorp_install
class hashicorp_install (
  Hash[
    Enum[
      'consul',
      'nomad',
      'packer',
      'terraform',
      'vagrant',
      'vault'
    ],
    String
  ] $packages,
) {
  include hashicorp_install::install
}
