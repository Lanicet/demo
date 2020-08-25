API Platform Demo
=================

This a demonstration application for the [API Platform Framework](https://api-platform.com).
Try it online at <https://demo.api-platform.com>.

Install
=======

    $ git clone https://github.com/api-platform/demo.git
    $ cd demo
    $ docker-compose up

And go to https://localhost.

Loading Fixtures
================

    $ docker-compose exec php bin/console hautelook:fixtures:load

Deploy on Kubernetes (GCP)
==========================

Everything is pre-configured through GitHub Actions. Edit the `.github/workflows/deploy.yml` file to set your project
parameters, and declare the following secured environment variables:

 * `GKE_PROJECT`: GKE project id (i.e: `api-platform-demo-123456`)
 * `KUBECONFIG`: GKE service account
 * `GKE_SA_KEY`: GKE service account key
 * `CLOUDFLARE_API_KEY`: Cloudflare API key
 * `CLOUDFLARE_API_EMAIL`: Cloudflare email
 * `BLACKFIRE_SERVER_ID`: Blackfire server id (optional)
 * `BLACKFIRE_SERVER_TOKEN`: Blackfire server token (optional)

Deployment will be done automatically by the CI.
