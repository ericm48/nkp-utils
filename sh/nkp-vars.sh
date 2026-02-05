#!/bin/bash

#set -x

# NKP version to install
# Do not change it
export NUTANIX_NKP_VERSION='2.16.1'

# PC User & Password
export NUTANIX_USER=''
export NUTANIX_PASSWORD=''

# NKP cluster name.
# When using NKP Pro/Ultimate, this name is used to generate the license key
export NUTANIX_MGMT_CLUSTER_NAME='nkp-mgmt-eric-4'

# Prism Central username
#set as env var through GHA secrets
# Prism Central Password
# Keep the password enclosed between single quotes - Ex: 'password'
#set as env var through GHA secrets

# Prism Central IP address - Ex: 10.38.30.7
export NUTANIX_ENDPOINT='10.38.1.74'

# Prism Central port (default: 9440)
# Do not change it
export NUTANIX_PORT='9440'

# Kubernetes VIP. Must be in the same subnet as the VMs
# Check the table to find your IP

# *** STAY OUT OF DHCP RANGE ***
export NUTANIX_CONTROLPLANE_VIP='10.38.1.68'

# Load balancer IP range. Format: <first_ip>-<last_ip>
# Check the table to find your IP
export NUTANIX_METALLB_IP_RANGE='10.38.1.76-10.38.1.78' # 10.54.92.17-10.54.92.19


# NKP Rocky image name
# Do not change it
export NUTANIX_IMAGE='nkp-rocky-9.6-release-cis-1.33.5-20251108010758.qcow2'

# Prism Element cluster name - Ex: PHX-POC207
export NUTANIX_PE_CLUSTER='PHX-SPOC001-2'

# NKP cluster subnet
# Do not change it
export NUTANIX_SUBNET='primary-PHX-SPOC001-2'

export NUTANIX_DOMAIN='buildit.services'

# Prism storage container
# Do not change it
export TIMEOUT=60m
export NUTANIX_STORAGE_CONTAINER_NAME=SelfServiceContainer
export REGISTRY_MIRROR_URL=registry.nutanixdemo.com/docker.io
export IMAGES='/home/ubuntu/data/inet/nkp-v2.16.1/container-images/kommander-image-bundle-v2.16.1.tar,'
export IMAGES+='/home/ubuntu/data/inet/nkp-v2.16.1/container-images/konvoy-image-bundle-v2.16.1.tar'
