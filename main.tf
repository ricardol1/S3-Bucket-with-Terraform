provider "aws" {
  region = "${var.aws_region}"
}

resource "random_id" "tf_bucket_id" {
  byte_length = 2
}

resource "aws_s3_bucket" "tf_code" {
    bucket        = "${var.project_name}-${random_id.tf_bucket_id.dec}"
    acl           = "private"

    force_destroy =  true

    tags {
      Name = "tf_bucket"
    }
}



Access key ID,Secret access key
AKIA5OZNH2CBR5YMIO4H,MmkfGxplxdiNA46K7WFh8ibbJu4Xg6aI4mh/Hpuh
