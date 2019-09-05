build:
    docker build . -t wg

init:
    docker run -it --rm --cap-add sys_module -v /lib/modules:/lib/modules wg install-module

run:
    docker run --cap-add net_admin --cap-add sys_module -v <config volume or host dir>:/etc/wireguard -p <externalport>:<dockerport>/udp wg

genkey:
    docker run -it --rm wg genkeys
