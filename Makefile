update-config:
	cd scripts && ./update-config.sh

configure:
	cd scripts && sudo ./configure-system.sh && ./configure-user.sh

install-packages:
	cd scripts && sudo ./install-packages.sh && ./install-aur-packages.sh


	
