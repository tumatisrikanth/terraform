resource "aws_s3_bucket" "s3statebucket" {
    bucket = "devopssrikanthtestbucket"

    tags = {
      name  = "terraformbuckets"
      env  =  "dev"
    }

    depends_on = [ aws_vpc.myvpc ]
  
}