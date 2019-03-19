resource "random_id" "bucket_id"{

byte_length = 2
}

resource "aws_s3_bucket" "tf_bucket"{

bucket = "${var.project_name"}-${random_id.bucket_id.dec}"
acl = "private"
force_destroy = true

tags{

Name = "tf_bucket"
}

}
