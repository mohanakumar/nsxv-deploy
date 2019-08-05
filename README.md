# NSXV-DEPLOY

This repo is to deploy NSXv in a vsphere environment where the environment parameters can be defined through a completely customizable 
configuration file.

Underthe hood this uses nsxansible for deploying the environment. 

STEPS TO USE THIS TOOL:

1) Create a directory /home/nsx-bootstrap
2) Cd /home/nsx-bootstrap
3) copy the configuration file to /home/nsx-bootstrap
4) git clone n
4) docker build ./ -t nsxvautomation:v1.0
5) docker run -it -v /home/nsx-bootstrap:/nsx-bootstrap nsxvautomation:v1.0
