resource "aws_security_group" "ddemo_sg" {
    name = "terraform_ccreated_sg"
    ingress{
        from_port = 22
        to_port = 22
        protocol = "TCP"
        cidr_blocks =["0.0.0.0/0"]
    }
        egress{
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks =["0.0.0.0/0"]
    }
}