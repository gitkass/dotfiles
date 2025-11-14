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

---

TODO

- [ ] todo Add delight to the experience when all tasks are complete :tada:


## Markdown Demo

<!-- This content will not appear in the rendered Markdown -->
<!-- Below are markdown snippits; -->
<!-- This content will not appear in the rendered Markdown -->

# A first-level heading
## A second-level heading
### A third-level heading



<details>
<summary>My top THINGS-TO-RANK</summary>

YOUR TABLE

</details>


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

| Rank | THING-TO-RANK |
|-----:|---------------|
|     1|               |
|     2|               |
|     3|               |

| Left-aligned | Center-aligned | Right-aligned |
| :---         |     :---:      |          ---: |
| git status   | git status     | git status    |
| git diff     | git diff       | git diff      |


Here is a simple flow chart:

```mermaid
graph TD;
    A-->B;
    A-->C;
    B-->D;
    C-->D;
```

---

```geojson
{
  "type": "FeatureCollection",
  "features": [
    {
      "type": "Feature",
      "id": 1,
      "properties": {
        "ID": 0
      },
      "geometry": {
        "type": "Polygon",
        "coordinates": [
          [
              [-90,35],
              [-90,30],
              [-85,30],
              [-85,35],
              [-90,35]
          ]
        ]
      }
    }
  ]
}
```

**The Cauchy-Schwarz Inequality**\
$$\left( \sum_{k=1}^n a_k b_k \right)^2 \leq \left( \sum_{k=1}^n a_k^2 \right) \left( \sum_{k=1}^n b_k^2 \right)$$
