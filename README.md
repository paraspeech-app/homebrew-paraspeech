# Paraspeech Homebrew Tap

This tap hosts the Homebrew cask for Paraspeech, enabling `brew install --cask paraspeech` for notarized desktop releases.

## Usage

```bash
brew tap paraspeech-app/homebrew-paraspeech
brew install --cask paraspeech
```

## Updating the Cask

1. Run `scripts/release_build.sh` in the main repo to generate the notarized ZIP (it lands in `releases/`).
2. Execute `scripts/homebrew_release.sh`; it will upload the ZIP to the GitHub release, update `Casks/paraspeech.rb`, and run the brew audit/install cycle.
3. Commit and push the changes to `paraspeech-app/homebrew-paraspeech`.

See `docs/plans/homebrew-cask-plan.md` in the main Paraspeech repo for the full rollout procedure.
