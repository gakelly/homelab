# Proxmox Full-Clone
# ---
# Create a new VM from a clone

resource "proxmox_vm_qemu" "lab-vm" {
    
    # VM General Settings
    target_node = var.proxmox_node
    vmid = var.vmid
    name = var.vm_name
    desc = "automated build"

    # VM Advanced General Settings
    onboot = true 

    # VM OS Settings
    clone = var.clone
    full_clone = true
    # VM System Settings
    agent = 1
    
    # VM CPU Settings
    cores = var.vm_cores
    sockets = 1
    cpu = "host"    
    
    # VM Memory Settings
    memory = var.vm_memory
    tags = "terraform-created"
    # VM Network Settings
    network {
        bridge = "vmbr0"
        model  = "e1000"
        firewall = "false"
        tag = var.vlantag
    }

     disk {
         slot = 0
         storage = "galloway"
         size = "35G"
         type = "virtio"
         format ="qcow2"
        

    }

    # VM Cloud-Init Settings
    os_type = "cloud-init"

    # (Optional) IP Address and Gateway
    # ipconfig0 = "ip=0.0.0.0/0,gw=0.0.0.0"
    
    # (Optional) Default User
    ciuser = "automation"
    
    # (Optional) Add your SSH KEY
    sshkeys = var.ssh_key
}