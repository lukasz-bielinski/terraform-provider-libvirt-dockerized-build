docker build -t terraform-provider-libvirt .
docker run --name terraform-provider-libvirt-plugin -v /$(pwd):/home/go/bin terraform-provider-libvirt
docker rm -f terraform-provider-libvirt-plugin
