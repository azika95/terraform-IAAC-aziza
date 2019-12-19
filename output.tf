output "bucket_name" {
    value = aws_s3_bucket.b.bucket 
}
output "sec_group" {
    value = aws_security_group.allow_tls.name
     }
 output "key_name" {
    value = aws_key_pair.deployer.key_name
}
output "username" {
    value = "some_username" 
}
output "password" {
    value = "password"
}
output "wordpress_username" {
    value = "some_username"
}
output "wordpress_paswword" {
    value = "password"
}

