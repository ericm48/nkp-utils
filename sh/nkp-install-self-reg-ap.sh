#!/usr/bin/env bash


#nkp-$NKP_VERSION create cluster nutanix -c $CLUSTER_NAME --endpoint https://$NUTANIX_ENDPOINT:$NUTANIX_PORT  --insecure  --control-plane-endpoint-ip $CONTROL_PLANE_ENDPOINT_IP
#--kubernetes-service-load-balancer-ip-range $LB_IP_RANGE --control-plane-vm-image $NUTANIX_MACHINE_TEMPLATE_IMAGE_NAME --control-plane-prism-element-cluster $NUTANIX_PRISM_ELEME
#NT_CLUSTER_NAME --control-plane-subnets $NUTANIX_SUBNET_NAME  --worker-vm-image $NUTANIX_MACHINE_TEMPLATE_IMAGE_NAME --worker-prism-element-cluster $NUTANIX_PRISM_ELEMENT_CLUSTE
#R_NAME --worker-subnets $NUTANIX_SUBNET_NAME --csi-storage-container $NUTANIX_STORAGE_CONTAINER_NAME --self-managed --bundle $IMAGES --cluster-hostname $CLUSTER_NAME.$DOMAIN --t
#imeout $TIMEOUT


nkp create cluster nutanix -c $CLUSTER_NAME \
  --endpoint https://$NUTANIX_ENDPOINT:$NUTANIX_PORT  
  --insecure  --control-plane-endpoint-ip $CONTROL_PLANE_ENDPOINT_IP \
	--kubernetes-service-load-balancer-ip-range $LB_IP_RANGE --control-plane-vm-image $NUTANIX_MACHINE_TEMPLATE_IMAGE_NAME --control-plane-prism-element-cluster $NUTANIX_PRISM_ELEME
NT_CLUSTER_NAME --control-plane-subnets $NUTANIX_SUBNET_NAME  --worker-vm-image $NUTANIX_MACHINE_TEMPLATE_IMAGE_NAME --worker-prism-element-cluster $NUTANIX_PRISM_ELEMENT_CLUSTE
R_NAME --worker-subnets $NUTANIX_SUBNET_NAME --csi-storage-container $NUTANIX_STORAGE_CONTAINER_NAME --self-managed --bundle $IMAGES --timeout $TIMEOUT