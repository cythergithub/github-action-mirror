# GitHub Action: Git Repository Mirror

Fork Universal mirroring repository tool (pkgstore).

## Example

### Bitbucket > Github

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
          source_repo: "https://github.com/${{ bitbucket.repository }}.git"
          source_user: "${{ secrets.MIRROR_SOURCE_USER_BITBUCKET }}"
          source_token: "${{ secrets.MIRROR_SOURCE_TOKEN_BITBUCKET }}"
          target_repo: "https://gitlab.com/${{ github.repository }}.git"
          target_user: "${{ secrets.MIRROR_TARGET_USER_GITHUB }}"
          target_token: "${{ secrets.MIRROR_TARGET_TOKEN_GITHUB }}"
```

## Legend

- `source_repo` - source repository URL.
- `source_user` - source user.
- `source_token` - source token.
- `target_repo` - target repository URL.
- `target_user` - target user.
- `target_token` - target token.
