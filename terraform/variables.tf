variable "az_region" {
  type    = string
  default = "UK South"
}
variable "az_region_abbr_map" {
  type        = map(any)
  description = "Map is used to obtain 3 letter azure region abreviation for naming resources"
  default = {
    "Central US"             = "cus"
    "East US 2"              = "eus2"
    "East US"                = "eus"
    "North Central US"       = "ncus"
    "South Central US"       = "nsus"
    "West US 2"              = "wus2"
    "West Central US"        = "wcus"
    "West US,US DoD Central" = "wusd"
    "US DoD East"            = "usde"
    "US Gov. Arizona"        = "usga"
    "US Gov. Iowa"           = "usgi"
    "US Gov. Texas"          = "usgt"
    "US Gov. Virginia"       = "usgv"
    "US Sec East"            = "usse"
    "US Sec West"            = "ussw"
    "Canada Central"         = "cc"
    "Canade East"            = "ce"
    "Brazil South"           = "bs"
    "North Europe"           = "eun"
    "West Europe"            = "euw"
    "UK South"               = "uks"
    "UK West"                = "ukw"
    "Germany North"          = "gn"
    "Germany West Central"   = "gwc"
    "Switzerland North"      = "sn"
    "Switzerland West"       = "sw"
    "Norway West"            = "nw"
    "Norway East"            = "ne"
    "East Asia"              = "ea"
    "Southeast Asia"         = "sa"
    "Australia Central"      = "ac"
    "Australia Central 2"    = "ac2"
    "Australia East"         = "ae"
    "Australia Southeast"    = "as"
    "China East"             = "ce"
    "China North"            = "cn"
    "China East 2"           = "ce2"
    "China North 2"          = "cn2"
    "Central India"          = "ci"
    "South India"            = "si"
    "West India"             = "wi"
    "Japan East"             = "je"
    "Japan West"             = "jw"
    "Korea Central"          = "kc"
    "Korea South"            = "ks"
    "South Africa North"     = "san"
    "South Africa West"      = "saw"
    "UAE Central"            = "uc"
    "UAE North"              = "un"
  }
}

variable "environment" {

}

variable "sku_tier" {
  type    = string
  default = "Standard"
}

variable "sku_size" {
  type    = string
  default = "S1"
}

variable "product" {
  type    = string
  default = "cloudponents"
}

variable "subscription_id" {
  type = string
}

variable "service_plan_kind" {
  type    = string
  default = "Linux"
}

variable "docker_repo" {
  type    = string
  default = "parttimelegend"
}

variable "docker_container" {
  type    = string
  default = "cloudponents"
}

variable "docker_container_version" {
  type    = string
  default = "latest"
}

variable "https_only" {
  type    = bool
  default = true

}

variable "app_service_plan_reserved" {
  type    = bool
  default = true
}

variable "client_affinity_enabled" {
  type    = bool
  default = true
}
