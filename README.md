# gitkass/dotfiles/README.md

This repo exists to make it easy to [call chezmoi](https://www.chezmoi.io/reference/commands/init/).

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

## Windows Quickstart

```
# Create the profile file if it doesn't exist
if (!(Test-Path -Path $PROFILE)) {
    New-Item -ItemType File -Path $PROFILE -Force
}

# Then add the mise activation
Add-Content -Path $PROFILE -Value "`nmise activate pwsh | Out-String | Invoke-Expression"
```
