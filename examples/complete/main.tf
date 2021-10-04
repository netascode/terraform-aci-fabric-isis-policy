module "aci_fabric_isis_policy" {
  source  = "netascode/fabric-isis-policy/aci"
  version = ">= 0.0.1"

  redistribute_metric = 60
}
