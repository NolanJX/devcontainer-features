
# Claude Code CLI (claude-code)

Installs the Claude Code CLI globally via npm

## Example Usage

```json
"features": {
    "ghcr.io/NolanJX/devcontainer-features/claude-code:1": {}
}
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| version | Version of @anthropic-ai/claude-code to install: a dist-tag (e.g. 'latest'), a specific version (e.g. '2.1.212'), or a version range (e.g. '~2.1.0'). | string | latest |
| mattpocock-skills | Pre-install Matt Pocock's Skills. Requires setting CLAUDE_CODE_PLUGIN_SEED_DIR at runtime — see NOTES.md. | boolean | false |

## Using pre-installed plugins

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
2. Add to `.claude/settings.json`:
    ```json
    "enabledPlugins": {
      "mattpocock-skills@claude-plugins-official": true
    }
    ```
3. Run `/reload-plugins` in Claude Code.

For more, see [pre-populate-plugins-for-containers](https://code.claude.com/docs/en/plugin-marketplaces#pre-populate-plugins-for-containers).


---

_Note: This file was auto-generated from the [devcontainer-feature.json](https://github.com/NolanJX/devcontainer-features/blob/main/src/claude-code/devcontainer-feature.json).  Add additional notes to a `NOTES.md`._
