resource "aws_route53_record" "roboshop" {
  count = 2
  zone_id = "${var.zone_id}"
  name    = "${var.instances[count.index]}.${var.domain_name}" # mongodb.gudida.fun
  type    = "A"
  ttl     = 1
  records = [aws_instance.terraform-new[count.index].private_ip]
  allow_overwrite = true
}