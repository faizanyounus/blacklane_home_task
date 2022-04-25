resource "aws_s3_bucket" "demo_bucket" {
  bucket = "blacklane-task-bucket"

  tags = {
    Name        = "blacklane bucket"
    Environment = "task"
  }
}

resource "aws_s3_bucket_acl" "demo_bucket_acl" {
  bucket = aws_s3_bucket.demo_bucket.id
  acl    = "private"
}
