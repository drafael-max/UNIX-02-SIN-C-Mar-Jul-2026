#!/bin/bash

COLOR="red"

case "${COLOR}" in
 red)
  echo "The color is red."
  ;;
 blue)
  echo "The color is blue."
  ;;
esac

IP_ADDRESS="${1}"
case ${IP_ADDRESS} in
 192.168.*)
 echo "Network is 192.168.x.x"
 ;;
 10.0.*)
 echo "Network is 10.0.x.x"
 ;;
 *)
 echo "Could not identify the network"
 ;;
esac
