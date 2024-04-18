resource "aws_flow_log" "vpcflowlogs" {
  log_destination      = aws_s3_bucket.s3statebucket.arn
  log_destination_type = "s3"
  traffic_type         = "ALL"
  vpc_id               = "${aws_vpc.myvpc.id}"
}


