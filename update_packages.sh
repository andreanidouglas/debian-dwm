#!/bin/sh

package_list="system_packages xorg_packages general_packages dwm_packages" 

for f in $package_list; do
	apt install $(cat $f ) -y
done
