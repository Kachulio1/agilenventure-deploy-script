resource "google_compute_instance" "agileventrue-instance" {
  project      = "agileventures"
  zone         = "us-east1-b"
  name         = "agileventure-front-end"
  machine_type = "g1-small"

   network_interface {
    network = "default"
    access_config {
      nat_ip = "35.244.139.114"
    }
  }

  metadata_startup_script = "${file("start.sh")}"

}