# Basic Two-Tier Architecture in Google Cloud

Simple two-tier architecture on Google Cloud.
Stateless app servers running behind
a load balancer serving traffic.

Running `terraform apply` on this configuration, it will
automatically output the public IP address of the load balancer.
After terraform apply command, you need to put the ID of Google Cloud Project:
verdant-sprite-170019


After your instance registers, the LB should respond with a simple header:

```html
<h1>Welcome to instance 0</h1>
```

The index may differ once you increase `count` of `google_compute_instance`
(i.e. provision more instances).

Run with a command like this:

```
terraform apply
