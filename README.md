# GitHub Action: Git Repository Mirror

Fork Universal mirroring repository tool (pkgstore).

## Workflow Syntax

### GitHub > GitLab

```yml
name: "Repository Mirror"

on:
  - push

jobs:
  mirror:
    runs-on: ubuntu-latest
    name: "Mirror"
    steps:
      - uses: cythergithub/github-action-mirror@main
        with:
          source_repo: "https://github.com/${{ github.repository }}.git"
          source_user: "${{ secrets.MIRROR_SOURCE_USER_GITHUB }}"
          source_token: "${{ secrets.MIRROR_SOURCE_TOKEN_GITHUB }}"
          target_repo: "https://gitlab.com/${{ github.repository }}.git"
          target_user: "${{ secrets.MIRROR_TARGET_USER_GITLAB }}"
          target_token: "${{ secrets.MIRROR_TARGET_TOKEN_GITLAB }}"
```

## Legend

- `source_repo` - source repository URL.
- `source_user` - source user.
- `source_token` - source token.
- `target_repo` - target repository URL.
- `target_user` - target user.
- `target_token` - target token.
