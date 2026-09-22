# homebrew-uwview

[Homebrew](https://brew.sh) tap for [UwView](https://github.com/amru195704/UwView) — open and search huge text/log files, with the `uvf` command.

```sh
brew install --cask amru195704/uwview/uwview
```

This installs `UwView.app` into Applications and links `uvf` into Homebrew's `bin`.

```sh
uvf app.log 'ERROR'          # search
uvf app.log 'ERROR' -open    # search, then show the hits in the viewer
```

The cask downloads the official DMG (Developer ID signed, Apple notarized) from [GitHub Releases](https://github.com/amru195704/UwView/releases) and checks its SHA256. Nothing is re-hosted here.

License of UwView: PolyForm Internal Use 1.0.0 — see [LICENSE](https://github.com/amru195704/UwView/blob/main/LICENSE).
