# claude-skills

Lee Norris's skill library. Every folder in `.claude/skills/` loads automatically in any Claude Code session that has this repo attached or cloned as the working directory.

| Source | Skills | License |
|---|---|---|
| [blader/humanizer](https://github.com/blader/humanizer) | `humanizer` | MIT |
| [nateherkai/scroll-craft](https://github.com/nateherkai/scroll-craft) | `scroll-craft` | MIT |
| [addyosmani/agent-skills](https://github.com/addyosmani/agent-skills) | 25 engineering skills (spec, TDD, review, ship, etc.) | MIT |
| [googleworkspace/cli](https://github.com/googleworkspace/cli) | 95 `gws-*`, `persona-*`, `recipe-*` skills | Apache 2.0 |

Original license texts are in `licenses/`.

## Notes

- `gws-*` skills need the `gws` CLI installed (`npm install -g @googleworkspace/cli`) and authenticated (`gws auth setup`).
- `scroll-craft` uses its bundled `scripts/` and `engine/`; keep the folder intact.

## Updating

Re-run `scripts/sync.sh` to pull the latest version of every upstream repo and overwrite the copies here.
