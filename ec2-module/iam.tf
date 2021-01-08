resource "aws_iam_instance_profile" "ec2_profile" {
  name = "${var.product}.${var.environment}-ec2-profile"
  role = "${aws_iam_role.ec2_role.name}"
}

resource "aws_iam_role" "ec2_role" {
  name = "${var.product}.${var.environment}-ec2-role-new"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}
