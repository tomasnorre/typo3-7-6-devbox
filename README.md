# typo3-no-composer

##Vagrantbox for TYPO3

This box will run a TYPO3 7.6.x NOT installed with composer. Even though composer is extremely popular, for extension development it's sometimes nice to test extension branches in a non-composer environment to ensure class-loading works without composer as well.

That's the main purpose of this vagrant box.

### /etc/hosts

Add ip to /etc/hosts/

192.168.56.120 typo3-no-composer.local

### Configure which TYPO3 Version to installed

Go to ´puppet/files/exec-always/10-Install-TYPO3.sh´ and set 'VERSION'.

### mySQL credentials:

username: devbox
password: devbox
database: devbox
