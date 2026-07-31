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
