# homebrew-tap

Homebrew tap for [@uded](https://github.com/uded)'s apps.

## Usage

```bash
brew install --cask uded/tap/brew-services-controller
```

The apps here are not yet notarized, so macOS Gatekeeper may block them. If so,
add `--no-quarantine` (or right-click the app in `/Applications` → Open once):

```bash
brew install --cask --no-quarantine uded/tap/brew-services-controller
```

## Casks

| Cask | Description |
|------|-------------|
| [`brew-services-controller`](https://github.com/uded/brew-services-controller) | Native macOS menubar + dashboard to monitor, control, and tail Homebrew services. |
