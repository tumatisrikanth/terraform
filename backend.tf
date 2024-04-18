terraform {
 backend "s3" {
    bucket = "srikanthtumatibucketterraform"
    key = "devopssrikanthtestbucket"
    region = "us-east-1"
   
 } 
}