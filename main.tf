resource "aci_rest" "isisDomPol" {
  dn         = "uni/fabric/isisDomP-default"
  class_name = "isisDomPol"
  content = {
    redistribMetric = var.redistribute_metric
  }
}
