terraform {
  required_providers {
    test = {
      source = "terraform.io/builtin/test"
    }

    aci = {
      source  = "netascode/aci"
      version = ">=0.2.0"
    }
  }
}

module "main" {
  source = "../.."

  redistribute_metric = 60
}

data "aci_rest" "isisDomPol" {
  dn = "uni/fabric/isisDomP-default"

  depends_on = [module.main]
}

resource "test_assertions" "isisDomPol" {
  component = "isisDomPol"

  equal "redistribMetric" {
    description = "redistribMetric"
    got         = data.aci_rest.isisDomPol.content.redistribMetric
    want        = "60"
  }
}
