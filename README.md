# hashicorp_install

Welcome to the hashicorp_install. This module can install the Hashicorp tools binaries.

## Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with hashicorp_install](#setup)
    * [What hashicorp_install affects](#what-hashicorp_install-affects)
    * [Beginning with hashicorp_install](#beginning-with-hashicorp_install)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

This module can install the tools developed by Hashicorp, hosted on https://releases.hashicorp.com.

The tools you can install using it are `consul`, `nomad`, `packer`, `terraform`, `vagrant` and `vault`.
Read more to learn how to use it.

## Setup

### What hashicorp_install affects

- This module will install the unzip package.
- It will also create a dummy file having the name on the pattern `/usr/bin/<package_name>_<version>_installed` to keep it idempotent.

### Beginning with hashicorp_install

The very basic steps needed for a user to get the module up and running. This
can include setup steps, if necessary, or it can be an example of the most basic
use of the module.

## Usage

- Quick run (not recommended): `puppet apply -e "include hashicorp_install"`

- Installing the packages you want (see more on [Reference](https://forge.puppet.com/igorolivei/hashicorp_install/reference)):

```puppet
class { 'hashicorp_install':
  packages => {
    'consul'    => '1.8.2',
    'terraform' => '0.13.0',
    # ...
  }
}
```

## Limitations

- This module does not validate which packages are available for an specific
OS architecture.
- This module does not uninstall any installed binary.
- This module does not configure anything, it only installs the binaries.

## Development

### Contributing

- Create a topic branch from where you want to base your work. This is usually the master branch.
- Push your changes to a topic branch in your fork of the repository.
- Add yourself as a contributor in the Contributors sections of this file.
- Update the module version on `metadata.json`.
- Make sure your commits messages are well-written and describe clearly what has been changed.
- Make sure you have tested your changes and nothing breaks.
- Validate your module using `pdk validate`.
- Submit a pull request to this repository.

## Release Notes/Contributors/Etc.

- Author: Igor Oliveira (igor.bezerra96@gmail.com)
