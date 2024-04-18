terraform {
 backend "s3" {
    bucket = "devopssrikanthtestbucket"
    key = "devopstestbucket"
    region = "us-east-1"
    dynamodb_table = "srikanth-terraform-lock"
   
 } 
}