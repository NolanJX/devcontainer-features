
# Claude Code CLI (claude-code)

Installs the Claude Code CLI

## Example Usage

```json
"features": {
    "ghcr.io/NolanJX/devcontainer-features/claude-code:1": {}
}
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| version | Release channel ('latest' or 'stable') or a specific version (e.g. '2.1.212'). | string | latest |
| mattpocock-skills | Pre-install Matt Pocock's Skills. Requires setting CLAUDE_CODE_PLUGIN_SEED_DIR at runtime — see NOTES.md. | boolean | false |
| superpowers | Pre-install Superpowers. Requires setting CLAUDE_CODE_PLUGIN_SEED_DIR at runtime — see NOTES.md. | boolean | false |

## Using pre-installed plugins

Available plugins:

- `mattpocock-skills`
- `superpowers`

**Recommended:** Do not enable `mattpocock-skills` and `superpowers` at the same time — Their use cases overlap and clash.

The steps below use `mattpocock-skills` as an example:

1. Add to `devcontainer.json`:
    ```json
    "features": {
      "ghcr.io/NolanJX/devcontainer-features/claude-code:1": {
        "mattpocock-skills": true
      }
    },
    "remoteEnv": {
      "CLAUDE_CODE_PLUGIN_SEED_DIR": "/opt/claude-seed"
    }
    ```
2. Inside the container, add to `.claude/settings.json`:
    ```json
    "enabledPlugins": {
      "mattpocock-skills@claude-plugins-official": true
    }
    ```
3. Inside the container, run `/reload-plugins` in Claude Code.

For more, see [pre-populate-plugins-for-containers](https://code.claude.com/docs/en/plugin-marketplaces#pre-populate-plugins-for-containers).


---

_Note: This file was auto-generated from the [devcontainer-feature.json](https://github.com/NolanJX/devcontainer-features/blob/main/src/claude-code/devcontainer-feature.json).  Add additional notes to a `NOTES.md`._
