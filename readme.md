# AWS Workshop Website skeleton

This project contains a skeleton project (excluding the template) for a Hugo based AWS Workshop website.

This workshop is driven via a `Makefile`, clone this repository, `cd` into it and run `make` to get an overview of available commands.

## First set up
1. Install [Hugo](https://gohugo.io/getting-started/quick-start/) - `make install-hugo`
0. Clone the template into your repository - `make download-theme`
0. Start the local dev server - `make run`
0. Customise content
0. Build the static website in `website/public` - `make build`
0. Copy the contents of the `public` folder into your S3 bucket, and set up static website hosting.
