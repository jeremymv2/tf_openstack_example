provider "openstack" {
  user_name   = "xxxxx"
  tenant_name = "xxxxx"
  password    = "xxxxx"
  auth_url    = "https://iad2.xxx.io:5000/v2.0"
}

resource "openstack_compute_instance_v2" "terraform" {
  name = "terraform"
  image_name = "Ubuntu-14.04"
  flavor_name = "gp1.subsonic"
  key_pair = "jmiller"
  network {
    name = "my-public"
  }
}
