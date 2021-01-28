# setup-wrangler

This [composite run step action](https://docs.github.com/en/actions/creating-actions/creating-a-composite-run-steps-action) sets up [Wrangler](https://github.com/cloudflare/wrangler) for [Cloudflare Workers](https://workers.cloudflare.com) projects.  The action makes the `wrangler` command available in subsequent workflow steps.

The action can be useful to those looking for additional flexibility and performance when compared with [wrangler-action](https://github.com/cloudflare/wrangler-action), while also helping avoid the [permission issues](https://docs.npmjs.com/resolving-eacces-permissions-errors-when-installing-packages-globally) you may face when trying to install wrangler as a global npm package in a run step.  

## Usage

Basic use installs latest version of wrangler:

```sh
steps:
- uses: bradyjoslin/setup-wrangler@v1.0.0
- run: wrangler --help
```

Optionally, specify the wrangler version:

```sh
steps:
- uses: bradyjoslin/setup-wrangler@v1.0.0
  with:
    wrangler_version: '1.6.0'
- run: wrangler --help
```

## Dependencies

npm
