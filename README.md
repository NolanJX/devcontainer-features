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
