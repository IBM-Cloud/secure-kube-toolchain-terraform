variable "ibmcloud_api_key" {
  type        = string
  description = "The IAM API Key for IBM Cloud access (https://cloud.ibm.com/iam/apikeys)"
}

variable "resource_group" {
  type        = string
  description = "Resource group name where the toolchain should be created (`ibmcloud resource groups`)"
}

variable "cluster_name" {
  type        = string
  description = "Name of new Kubernetes cluster to create"
}

variable "machine_type" {
   default = "b2c.4x16"
   description = "Name of machine type from `ibmcloud ks flavors --zone <ZONE>`"
}
variable "hardware" {
   default = "shared"
   description = "The level of hardware isolation for your worker node. Use 'dedicated' to have available physical resources dedicated to you only, or 'shared' to allow physical resources to be shared with other IBM customers. For IBM Cloud Public accounts, the default value is shared. For IBM Cloud Dedicated accounts, dedicated is the only available option."
}

variable "datacenter" {
  default = "dal10"
  description = "Zone from `ibmcloud ks zones --provider classic`"
}

variable "default_pool_size" {
  default = "3"
  description = "How many worker nodes for the new Kubernetes cluster"
}

variable "private_vlan_num" {
  default = "1256"
  description = "Number for private VLAN from `ibmcloud ks vlans --zone <ZONE>`"
}

variable "public_vlan_num" {
  default = "1410"
  description = "Number for public VLAN from `ibmcloud ks vlans --zone <ZONE>`"
}

variable kube_version {
  default = "4.5.18_openshift"
}

variable "cluster_namespace" {
  type        = string
  description = "Kubernetes namespace to deploy into. NOTE: If the namespace does not exist, it will be created."
}

variable "container_registry_namespace" {
  type        = string
  description = "IBM Container Registry namespace to save image into. NOTE: If the namespace does not exist, it will be created."
}

variable "language" {
  type        = string
  description = "Language of app to be deployed with the toolchain. Available options: [`node`, `java`, `liberty`]"
}
