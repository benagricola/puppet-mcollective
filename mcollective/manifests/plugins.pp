class mcollective::plugins {

  include mcollective

  $ensure = $mcollective::manage_package ? {
    default   => true,
    'absent'  => false,
  }

  # PuppetLabs Plugins
  mcollective::plugin { 'process':
    ensure         => $ensure,
    install_client => $mcollective::install_client,
    application    => 'pgrep.rb',
  }

  mcollective::plugin { 'iptables':
    ensure         => $ensure,
    install_client => $mcollective::install_client,
  }

  mcollective::plugin { 'filemgr':
    ensure         => $ensure,
    install_client => $mcollective::install_client,
  }

  mcollective::plugin { 'nettest':
    ensure         => $ensure,
    install_client => $mcollective::install_client,
  }

  mcollective::plugin { 'service':
    ensure         => $ensure,
    install_client => $mcollective::install_client,
  }

  mcollective::plugin { 'puppetd':
    ensure         => $ensure,
    install_client => $mcollective::install_client,
  }

  mcollective::plugin { 'puppetca':
    ensure         => $ensure,
    install_client => $mcollective::install_client,
    application    => false,
  }

  mcollective::plugin { 'puppetral':
    ensure         => $ensure,
    install_client => $mcollective::install_client,
    application    => false,
  }

  mcollective::plugin { 'package':
    ensure         => $ensure,
    install_client => $mcollective::install_client,
  }

  # These are usable on Mcollective > 2.1
  # mcollective::plugin { 'sysctl_data':
  #   plugin_type => 'data',
  # }

  # mcollective::plugin { 'resource_data':
  #   plugin_type => 'data',
  # }

}
