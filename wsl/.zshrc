export hostip=$(ip route show | grep -i default | awk '{ print $3}')
export https_proxy="http://${hostip}:7890"
export http_proxy="http://${hostip}:7890"