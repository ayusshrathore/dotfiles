configure-system:
	cd scripts && sudo ./configure-system.sh

configure-user:
	cd scripts && ./configure-user.sh

install:
	cd scripts && sudo ./install-packages.sh

install-aur:
	cd scripts && ./install-aur-packages.sh

update:
	cd scripts && ./update-config.sh
