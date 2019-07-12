
#!/bin/bash
URL=https://download.netbeans.org/netbeans/8.2/final/bundles/netbeans-8.2-javaee-linux.sh

#URL=https://www-us.apache.org/dist/incubator/netbeans/incubating-netbeans/incubating-10.0/incubating-netbeans-10.0-bin.zip

# install required applications
sudo apt -y install wget unzip

# download netbeans package
wget ${URL} -O /tmp/netbeans-8.2-javaee-linux.sh

# unip netbeans
#sudo unzip -d /opt /tmp/incubating-netbeans-bin.zip
sh /tmp/netbeans-8.2-javaee-linux.sh

# create netbeans starter
cat <<EOF> /tmp/netbeans.desktop
[Desktop Entry]
Encoding=UTF-8
Name=NetBeans IDE
Exec=/opt/netbeans/bin/netbeans
Icon=/opt/netbeans/nb/netbeans.png
Terminal=false
Type=Application
Categories=GNOME;Application;Development;
EOF

sudo mv /tmp/netbeans.desktop /usr/share/applications/netbeans.desktop
sudo chmod +r /usr/share/applications/netbeans.desktop
