#  Pivotal Cloud Foundry Service Broker for AWS

## About this Repo

* This book repo is for building the Pivotal Cloud Foundry Service Broker for AWS content, that is, content for the next unreleased version of the product. 

* The content repo is in [**pivotal-cf/docs-aws-services**](https://github.com/pivotal-cf/docs-aws-services). 

* The production version of this doc is now built as part of **pivotal-cf/docs-book-aws-services*. 

* The `master_middleman` folder contains the templates used for publishing.

## Stylesheet for this Repo

Here are some consistency items:

+ Product name: **Pivotal Cloud Foundry Service Broker for AWS**

+ Abbreviated product name: **Service Broker for AWS**

+ The _services_ supported are described by AWS as **products**, so we should do the same. 
  See [aws.amazon.com](https://aws.amazon.com)

## The Docs Toolchain

The Cloud Foundry documentation is written in markdown and published using the [Bookbinder gem](http://github.com/pivotal-cf/docs-bookbinder) to generate the documentation as a web application with [Middleman](http://middlemanapp.com/).

Bookbinder enables us to single-source docs content for multiple contexts.

So, for example, the docs for the Cloud Foundry command-line tool (cf CLI) exist in a single repo and are published to all three documentation sets:

* [Pivotal Cloud Foundry (PCF), PCF Services, PCF Partner Services, and PCF Add-ons](http://docs.pivotal.io)
* [run.pivotal](http://docs.run.pivotal.io)
* [Open Source](http://docs.cloudfoundry.org)

## Contributing to the Documentation

The docs team prefers to receive documentation contributions as pull requests rather than having engineering teams push directly to the docs repos.
This gives us a chance to review the changes for consistency and understand the new content.

If you are planning to initiate a large documentation effort, please coordinate with the docs team in advance to make sure we're not going to step on each other. 
You can reach the docs team by email at [cf-docs@pivotal.io](mailto:cf-docs@pivotal.io).

If you are trying to figure out where a particular bit of information should live, please reach out and ask. 
We're happy to help you ensure information goes to the right place.

Note that content often lives in more than one context.
Please make sure that any contribution you offer takes these multiple contexts into account.
So, for example, if you are working on docs that are also used in for open source, please do not refer to Pivotal's commercial offerings.

## Submitting a Pull Request

This is a Bookbinder project. See [its README](https://github.com/pivotal-cf/bookbinder/blob/master/README.md) for instructions on how edits are made.

## Continuous Integration Technical Details

We deploy this documentation as an app using Concourse pipelines, at https://concourse.run.pivotal.io/teams/cf-docs/pipelines/cf-services?groups=aws-services


## Deployment Details

Staging and Production are both on run.pivotal.io:

- [Staging](https://docs-pcf-staging.cfapps.io/aws-services/index.html)
- [Production](http://docs.pivotal.io/aws-services/index.html)

See the config.yml for details.

## Notes on the config.yml 

Template variables for the PCF docs are stored in a separate YML file, `template_variables.yml`, stored in the config folder. 

## Determine Content Repos and Branches of a Book

The `config.yml` defines the content repos for each book.
The `config.yml` file of each book contains the list of content repos and branches that appear in the doc set.
In the `config.yml` file, each content repo is specified in the `repository` subsection.
This subsection includes an optional `ref` key-value pair which defines the branch of the content repo the book uses.

Make sure that you are adding your content to the correct branches of the content repos.

To determine which branch of a content repo a book version uses:

1. Confirm that you are on the correct book branch. For example, the currently published doc might be on the `master` branch
or on the branch corresponding to its version number.

2. Open the `config.yml` file.

3. Search for the name of the content repo, for example, `docs-cloudfoundry-concepts`.

4. Review the `repository` subsection for the content repo. If there is no `ref:` tag, then the repo uses the master branch. If there is a `ref` key-value pair, it specifies the branch name of the content repo. For example,

  ```
  - repository:
    name: cloudfoundry/docs-cloudfoundry-concepts
    ref: '225'
  ```

  `ref: '225'` refers to the 225 branch of the docs-cloudfoundry-concepts repo. Cloud Foundry v225 is associated with the PCF v1.6 release.

