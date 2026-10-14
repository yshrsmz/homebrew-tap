# yshrsmz/homebrew-tap

Homebrew tap for apps by [@yshrsmz](https://github.com/yshrsmz).

## Casks

| Cask | Description | Install |
| --- | --- | --- |
| [mewbell](https://github.com/yshrsmz/mewbell) | Menu bar app for GitHub notifications across gh CLI accounts | `brew install --cask yshrsmz/tap/mewbell` |

## Usage

Homebrew loads casks from third-party taps only after you trust them.

```bash
brew tap yshrsmz/tap
brew trust --tap yshrsmz/tap        # or trust a single cask: brew trust --cask yshrsmz/tap/<cask>
brew install --cask yshrsmz/tap/<cask>
```

## Gatekeeper

Casks in this tap may install apps that are ad-hoc signed and not notarized. macOS blocks such an app on its first launch, and again after each upgrade. To open it, go to System Settings → Privacy & Security and click "Open Anyway" for the app. Each cask's caveats say whether this applies.

This tap never removes the quarantine attribute or bypasses Gatekeeper for you.

## Documentation

`brew help`, `man brew` or [Homebrew's documentation](https://docs.brew.sh).
