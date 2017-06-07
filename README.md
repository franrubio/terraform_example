# Basic Two-Tier Architecture in Google Cloud

Simple two-tier architecture on Google Cloud.
Stateless app servers running behind
a load balancer serving traffic.

Running `terraform apply` on this configuration, it will
automatically output the public IP address of the load balancer.
After your instance registers, the LB should respond with a simple header:

```html
<h1>Welcome to instance 0</h1>
```

The index may differ once you increase `count` of `google_compute_instance`
(i.e. provision more instances).

Run with a command like this:

```
terraform apply \
	-var="region=us-central1" \
	-var="region_zone=us-central1-f" \
	-var="project_name=my-project-id-123" \
	-var="credentials_file_path=account.json" \
	-var="public_key_path=gcloud_id_rsa.pub" \
	-var="private_key_path=gcloud_id_rsa"
```
