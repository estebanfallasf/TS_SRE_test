
# -- root/outputs.tf -- # 

output "vpc_a_id" {
  value = module.vpc_a.vpc_id
}

output "bucket_name_failover" {
  value = module.s3Failover.bucket_name
}

output "bucket_regional_domain_name_failover" {
  value = module.s3Failover.bucket_regional_domain_name
}

output "bucket_name_primary" {
  value = module.s3Primary.bucket_name
}

output "bucket_regional_domain_name_primary" {
  value = module.s3Primary.bucket_regional_domain_name
}

output "cloudfront_domain_name" {
  value = module.cloud-front.cloudfront_domain_name
}

output "URL_verify_image_serving" {
  value = "https://${module.cloud-front.cloudfront_domain_name}/Hello_World.png"

}
