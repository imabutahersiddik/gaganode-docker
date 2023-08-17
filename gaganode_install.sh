#!/bin/bash

cpu_arch="$(uname -m)"
echo "cpu_arch=$cpu_arch"
AMD="https://www.learningcontainer.com/wp-content/uploads/2020/05/sample.tar"
ARM="https://www.learningcontainer.com/wp-content/uploads/2020/05/sample.tar"

if [ "${cpu_arch}" = "x86_64" ]; then
DOWNLOADLINK=$AMD
FILENAME="sample.tar"
elif [[ "${cpu_arch}" = "arm64" ]] || [[ "${cpu_arch}" = "aarch64" ]]; then
DOWNLOADLINK=$ARM
FILENAME="sample.tar"
else
echo "Your CPU type dose not support" 
exit 1
fi

echo "DOWNLOADLINK=$DOWNLOADLINK"

sudo git clone https://github.com/imabutahersiddik/gaganode.git &&
cd gaganode &&
sudo chmod +x gaganode &&
sudo ./gaganode 

/bin/bash
