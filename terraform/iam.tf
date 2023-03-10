resource "aws_iam_user" "codica" {
  name = "user"
}

resource "aws_iam_policy" "state" {
  name = "s3-policy"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "s3:ListBucket"
        ]
        Effect = "Allow"
        Resource = "arn:aws:s3:::codica__bucket"
      },
      {
        Action = [
          "s3:PutObject",
          "s3:GetObject",
          "s3:DeleteObject"
        ]
        Effect = "Allow"
        Resource = "arn:aws:s3:::codica__bucket/*"
      }
    ]
  })
}
