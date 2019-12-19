output "bucket_name" {
    value = aws_s3_bucket.b.bucket
}
output "sec_group" {
    value = aws_security_group.allow.tls.name
}
output "key_name" {
    value = aws_key_pair.deployer.key_name
}
output "username" {
    "some_username"
}
output "password" {
    value "password"
}
