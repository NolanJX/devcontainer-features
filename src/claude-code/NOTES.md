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
