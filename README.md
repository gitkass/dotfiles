# gitkass/dotfiles/README.md

This repo exists to make it easy to [call chezmoi](https://www.chezmoi.io/reference/commands/init/).

<!-- markdownlint-disable MD013 -->

> [!CAUTION]
> this repo location (`$GITHUB_TRIGGERING_ACTOR/dotfiles`) is a hardcoded external requirement for chezmoi and [helpful for github](https://docs.github.com/en/codespaces/setting-your-user-preferences/personalizing-github-codespaces-for-your-account#dotfiles).

<!-- `chezmoi init --apply "${GITHUB_TRIGGERING_ACTOR}` -->

<!-- markdownlint-enable MD013 -->
> [!TIP]
> Quickstart

```
curl -fsSL https://tailscale.com/install.sh | sh
curl -sSf -L https://install.lix.systems/lix | sh -s -- install
curl -sfL https://direnv.net/install.sh | bash

sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply gitkass
```

```
chezmoi --interactive init gitkass
```

---

TODO

- [ ] todo Add delight to the experience when all tasks are complete :tada:


## Markdown Snippits

See also [markdown_examples.md](./markdown_snippits.md)

> [!NOTE]
> Useful information that users should know, even when skimming content.

> [!TIP]
> Helpful advice for doing things better or more easily.

> [!IMPORTANT]
> Key information users need to know to achieve their goal.

> [!WARNING]
> Urgent info that needs immediate user attention to avoid problems.

> [!CAUTION]
> Advises about risks or negative outcomes of certain actions.



<!-- This content will not appear in the rendered Markdown -->
<!-- Below are markdown snippits; -->
<!-- This content will not appear in the rendered Markdown -->


<details>
<summary>My top THINGS-TO-RANK</summary>

| Left-aligned | Center-aligned | Right-aligned |
| :---         |     :---:      |          ---: |
| git status   | git status     | git status    |
| git diff     | git diff       | git diff      |
