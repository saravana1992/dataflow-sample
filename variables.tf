variable "project_id" {
  type        = string
  description = "The project in which the resource belongs. If it is not provided, the provider project is used."
    default = "encoded-obelisk-279400"
}

variable "region_name" {
    type =  string
    description = "The region in which the cluster and associated nodes will be created in"
    default = "us-west2"
}

variable "name" {
  type        = string
  description = "The name of the dataflow job"
  default = "test-df-job-df"
}

variable "template_gcs_path" {
  type        = string
  description = "The GCS path to the Dataflow job template."
  default = "gs://dataflow-templates/latest/Word_Count"
}

variable "temp_gcs_location" {
  type        = string
  description = "A writeable location on GCS for the Dataflow job to dump its temporary data."
  default = "test-encoded-obelisk-279400"
}

variable "parameters" {
  type        = map(string)
  description = "Key/Value pairs to be passed to the Dataflow job (as used in the template)."
  default     = {
    inputFile = "gs://dataflow-samples/shakespeare/kinglear.txt"
    output = "gs://test-encoded-obelisk-279400/wordcount/output"
  }
}

variable "max_workers" {
  type        = number
  description = " The number of workers permitted to work on the job. More workers may improve processing speed at additional cost."
  default     = 6
}

variable "on_delete" {
  type        = string
  description = "One of drain or cancel. Specifies behavior of deletion during terraform destroy. The default is cancel."
  default     = "cancel"
}

variable "region" {
  type        = string
  description = "The region in which the created job should run. Also determines the location of the staging bucket if created."
  default     = "us-west1"
}

variable "zone" {
  type        = string
  description = "The zone in which the created job should run."
  default     = "us-west1-a"
}

variable "service_account_email" {
  type        = string
  description = "The Service Account email that will be used to identify the VMs in which the jobs are running"
  default     = "test-213@encoded-obelisk-279400.iam.gserviceaccount.com"
}

variable "subnetwork_self_link" {
  type        = string
  description = "The subnetwork self link to which VMs will be assigned."
  default     = ""
}

variable "network_self_link" {
  type        = string
  description = "The network self link to which VMs will be assigned."
  default     = "default"
}

variable "machine_type" {
  type        = string
  description = "The machine type to use for the job."
  default     = "n1-highmem-16"
}

variable "ip_configuration" {
  type        = string
  description = "The configuration for VM IPs. Options are 'WORKER_IP_PUBLIC' or 'WORKER_IP_PRIVATE'." 
  default     = "WORKER_IP_PUBLIC"
}
