#!/bin/bash

while true
do
	ethtool --set-eee eth0 eee off
	ethtool --show-eee eth0  
done