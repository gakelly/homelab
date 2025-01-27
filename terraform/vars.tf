variable "proxmox_api_url" {
    type = string
}

variable "proxmox_api_token_id" {
    type = string
}

variable "proxmox_api_token_secret" {
    type = string
}

variable "vm_name" {
    type = string
}

variable "proxmox_node" {
    type = string
}

variable "ssh_key" {
    type = string
}

variable "clone" {
    type = string
}

variable "vlantag" {
    type = string
}

variable "vmid" {
    type = string
}

variable "vm_memory" {
    type = string
    default = "4092"
}

variable "vm_cores" {
    type = string
    default = "2"
}