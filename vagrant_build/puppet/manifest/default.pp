Exec { path => ["/bin/", "/sbin/", "/usr/bin/", "/usr/sbin/"] }

class system-update {
	exec { 'apt-get update':
	   command => 'apt-get update',
	}
	
	$sysPackages = ["build-essential" ]
	package { $sysPackages:
		ensure => "installed",
		require => Exec['apt-get update'],
	}
	
}

class apache {
     package { "apache2":
	    ensure => present,
        require => Class["system-update"],
     }
     
     service { "apache2":
        ensure => "running",
	    require => Package ["apache2"],
	}
}

 include apache
 include system-update
	
if $operatingsystem == 'ubuntu' {
    notice ('Cool ! I like you')
}
elsif $operatingsystem == 'Windows' {
    warning ('what the hell you are doing here')
}
else {
    notice("I dont know what to think about ${operaingsystem}. Its a ${osfamily}, isn't it ?")
}
