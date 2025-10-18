variable "instances" {
    default = [ "mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend" ]
}

variable "zone_id" {
    default = "Z10359889FKJMOQK64P2"
}

variable "domain_name" {
    default = "gudida.fun"
}