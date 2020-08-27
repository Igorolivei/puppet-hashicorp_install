# Reference

## Public classes

### `hashicorp_install`

Interface class to manage the binaries installation.

#### Parameters

##### `packages`

Binaries to be installed. This parameter expects a **Hash** on the following format:

```puppet
{
  'consul'    => '1.8.2',
  'terraform' => '0.13.1',
  # ...
}
```

Or using Hiera to override the default value:

```yaml
hashicorp_install::packages:
  consul: 1.8.3
  terraform: 0.13.1
```

- The allowed strings for the hash keys (which are the packages names) are: 'consul', 'nomad', 'packer', 'terraform', 'vagrant' and 'vault'.
- The hash values (which are the binaries versions) must be a string. Please, be careful and make sure that the version exists (you can find it on [Hashicorp releases page](https://releases.hashicorp.com)).

Default: All the packages on the latest version at the time this module is being published.

**Note: It is highly recommended that you override the default value in order to prevent undesired installations.**

## Private classes

### `hashicorp_install::install`

Class responsible to install the packages.
