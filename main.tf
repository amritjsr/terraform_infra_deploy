module s3_bucket {
    source = "./modules/s3_bucket"
    bucket_name = "my-bucket-amrit-2025"
}

module vpc {
    source = "./modules/vpc"
    cidr_block = "10.0.0.0/16"
    region = "us-east-1"
    tags = {
        Name = "main_vpc"
    }   
}