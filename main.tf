resource "aws_instance" "my_ec2"{
    ami="ami-060d3509162bcc386"
    instance_type="t2.micro"
    tags = {
      Name = "Isra"
    }
}
resource "aws_eip" "my-eip"{
  vpc = true
}
resource "aws_eip_association" "associate"{
 instance_id=aws_instance.my-ec2.id
 allocation_id=aws_eip.my-eip.id

}





