# Output variable for the lambda function.
output "lambda" {
  value = aws_lambda_function.greet_lambda.qualified_arn
}
