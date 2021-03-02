data "aws_iam_policy_document" "shiftright_assume_role_policy" {
  version = "2012-10-17"
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::${var.shiftright_aws_account_id}:root"]
    }

    condition {
      test     = "StringEquals"
      variable = "sts:ExternalId"
      values   = [var.shiftright_external_id]
    }
  }
}

data "aws_iam_policy" "security_audit" {
  arn = "arn:aws:iam::aws:policy/SecurityAudit"
}

resource "aws_iam_role" "shiftright_iam_role" {
  name               = var.iam_role_name
  assume_role_policy = data.aws_iam_policy_document.shiftright_assume_role_policy.json
  tags               = var.tags
}

resource "aws_iam_role_policy_attachment" "sts_security_audit_role_policy_attach" {
  role       = aws_iam_role.shiftright_iam_role.name
  policy_arn = data.aws_iam_policy.security_audit.arn
}