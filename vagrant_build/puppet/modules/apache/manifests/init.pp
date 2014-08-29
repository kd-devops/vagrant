class apache {
    package { "apache2":
       ensure => present,
       require => class ["system-update"],
    }

    service { "apache2":
        ensure => "running",
        require => package ["apache2"],
    }
}
