
# DeepSeek Harness (dsh)

Installs the DeepSeek Harness. Requires Node.js. Requires VS Code — see NOTES.md.

## Example Usage

```json
"features": {
    "ghcr.io/NolanJX/devcontainer-features/dsh:1": {}
}
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| version | Select a dsh version to install ('latest' or a specific version, e.g. '0.1.0-rc.6'). | string | latest |

## Prerequisites

Requires Node.js. Pair it with the Dev Containers Node.js feature:

```json
"features": {
  "ghcr.io/devcontainers/features/node:2": {},
  "ghcr.io/NolanJX/devcontainer-features/dsh:1": {}
}
```

## Usage

The Web UI listens on `127.0.0.1:3080` inside the container. To open it from your host browser, open your project in VS Code (**Dev Containers: Reopen in Container**) and run `dsh web` from the integrated terminal — VS Code auto-forwards the port to `http://127.0.0.1:3080`.

## Stability

DeepSeek Harness is in **Developer Preview**. Pin a specific version to avoid surprises on each rebuild:

```json
"ghcr.io/NolanJX/devcontainer-features/dsh:1": {
  "version": "0.1.0-rc.6"
}
```


---

_Note: This file was auto-generated from the [devcontainer-feature.json](https://github.com/NolanJX/devcontainer-features/blob/main/src/dsh/devcontainer-feature.json).  Add additional notes to a `NOTES.md`._
