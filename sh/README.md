#
# NKP Setup:
#

Below are base instructions on how to use these scripts.

## Create Directories:

For Pre-Staged Files:
```
mkdir -p /data/inet
```

For Text Files:
```
mkdir -p /data/txt
```

## Set Permissions:

***Above may need to be chown'd to appropo user:
```
chown -R x-user:root /data/inet
```
```
chown -R x-user:root /data/txt
```

## Pre-Stage the following:

The files below need to be downloaded from the portal, and stagged in the folder `/data/inet/`

```
/data/inet/nkp_v2.16.1_linux_amd64.tar.gz
/data/inet/nkp-bundle_v2.16.1_linux_amd64.tar.gz
```

## Expand the files:
```
tar -xf /data/inet/nkp_v2.16.1_linux_amd64.tar.gz
```
```
tar -xf /data/inet/nkp-bundle_v2.16.1_linux_amd64.tar.gz
```

## Install nkp-cli:
```
install -o root -g root -m 0755 /data/inet/nkp /usr/local/bin/nkp
```

## Determine Correct IP-Address
If you know your IPs you can skip this step.
Otherwise you can run the ipv4-add-check.sh to determine IP availability.

## Edit nkp-vars.sh
Edit file, fill-in your info (Includes Target IP-Addresses)

## Set This Alias:
```
alias eme='env |grep $@'
```

## Set Variables:
```
. ./nkp-vars.sh
```

## Verify Variables:
```
eme NUTAN
```
Look these over.
```
eme NUTAN |wc -l
```

** You should see at least 11.

## Load boot-strap image:
```
docker load -i /data/inet//nkp-v2.16.1/konvoy-bootstrap-image-v2.16.1.tar
```

## Create Cluster:
```
./nkp-install-self-reg.sh
```
