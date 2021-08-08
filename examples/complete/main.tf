module "aci_fabric_isis_policy" {
  source = "netascode/fabric_isis_policy/aci"

  redistribute_metric = 60
}
