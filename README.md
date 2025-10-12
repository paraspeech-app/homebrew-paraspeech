# Paraspeech Homebrew Tap

This tap hosts the Homebrew cask for Paraspeech, enabling `brew install --cask paraspeech` for notarized desktop releases.

## Usage

```bash
brew tap paraspeech-app/homebrew-paraspeech
brew install --cask paraspeech
```

## Updating the Cask

1. Publish the notarized Paraspeech release artifacts to GitHub Releases on `paraspeech-app/homebrew-paraspeech`.
2. Update `Casks/paraspeech.rb` with the new version, SHA-256, and download URL.
3. Run `brew audit --cask paraspeech` and `brew reinstall --cask paraspeech` to verify.
4. Commit and push the changes to `paraspeech-app/homebrew-paraspeech`.

See `docs/plans/homebrew-cask-plan.md` in the main Paraspeech repo for the full rollout procedure.
