resource "google_compute_instance" "default" {
  name         = "test-vm"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "packer-image-1679927813"
    }
  }

  # To keep the setup simple you can set the network_interface to default
  # For Advance network setup refer to Point-7 : Setup Network and Firewall for virtual machine
  network_interface {
    network = "default"
    
  }
}