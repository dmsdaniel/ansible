#!/bin/bash
tar xvzf  ../src/jre-8u171-linux-x64.tar.gz -C /home/$USER
echo 'export JAVA_HOME=/home/$USER/jre1.8.0_171' >> ~/.profile
echo 'export PATH=/home/$USER/jre1.8.0_171/bin:$PATH' >> ~/.profile
source ~/.profile
