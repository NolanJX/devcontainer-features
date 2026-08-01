# devcontainer-features

A collection of Dev Container Features.

## Contents

### `claude-code`

Installs the Claude Code CLI via the official standalone installer.

**Test:**

```shell
devcontainer features test -f claude-code --base-image mcr.microsoft.com/devcontainers/base:2.1.13-trixie
```

### `codex`

Installs the Codex CLI via the official standalone installer.

**Test:**

```shell
devcontainer features test -f codex --base-image mcr.microsoft.com/devcontainers/base:2.1.13-trixie
```

## Development

All feature install and test scripts are `644` (non-executable), consistent with [`devcontainers/feature-starter`](https://github.com/devcontainers/feature-starter).

### Feature documentation

Feature `README.md` files are generated — don't edit them by hand. The `Release` workflow uses `devcontainers/action` (`generate-docs: "true"`) to produce each `src/<feature>/README.md` from its `devcontainer-feature.json` and open a PR with the result. For notes the generator won't overwrite, use `src/<feature>/NOTES.md` — its content is merged into the generated README.
