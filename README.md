# gitkass/dotfiles/README.md

<!-- git@github.com:gitkass/dotfiles.git -->
<!-- https://github.com/gitkass/dotfiles/blob/main/README.md -->

This repo exists to make it easy to [call chezmoi](https://www.chezmoi.io/reference/commands/init/).

<!-- markdownlint-disable MD013 -->

> [!CAUTION]
> this repo location (`$GITHUB_TRIGGERING_ACTOR/dotfiles`) is a hardcoded external requirement for chezmoi and [helpful for github](https://docs.github.com/en/codespaces/setting-your-user-preferences/personalizing-github-codespaces-for-your-account#dotfiles).

<!-- `chezmoi init --apply "${GITHUB_TRIGGERING_ACTOR}` -->

<!-- markdownlint-enable MD013 -->

## Quickstart

```
curl -fsSL https://tailscale.com/install.sh | sh
curl -sSf -L https://install.lix.systems/lix | sh -s -- install
curl -sfL https://direnv.net/install.sh | bash

sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply gitkass
```

```
chezmoi --interactive init gitkass
```


Or install via nix:

```
nix profile install nixpkgs#chezmoi
```

## Chezmoi notes

- [chezmoi concepts](https://www.chezmoi.io/reference/concepts/)
  - The destination directory is the directory that chezmoi manages, usually your home directory, `~`.
  - A target is a file, directory, or symlink in the destination directory.
  - The source directory is where chezmoi stores the source state. By default it is `~/.local/share/chezmoi`
- This repo uses a [.chezmoiroot file](https://www.chezmoi.io/reference/special-files/chezmoiroot/) to store `source` files in the `dotfiles` subdirectory. [more info](https://www.chezmoi.io/user-guide/advanced/customize-your-source-directory/#use-a-subdirectory-of-your-dotfiles-repo-as-the-root-of-the-source-state)
  - Confirm with `cat ~/.local/share/chezmoi/.chezmoiroot`
- [quick-start](https://www.chezmoi.io/quick-start/)

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
