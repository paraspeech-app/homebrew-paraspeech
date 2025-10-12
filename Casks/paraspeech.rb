cask "paraspeech" do
  version "1.2.1"
  sha256 "c0a22ddc233fda0bf4edefa2848f5724e2b860e8eac9bfa9c9536252d0bfbae0"

  url "https://github.com/paraspeech-app/homebrew-paraspeech/releases/download/v#{version}/Paraspeech-#{version}.zip",
      verified: "github.com/paraspeech-app/homebrew-paraspeech/"
  name "Paraspeech"
  desc "AI-assisted speech rehearsal and transcription"
  homepage "https://paraspeech.app/"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Paraspeech.app"

  zap trash: [
    "~/Library/Application Support/Paraspeech",
    "~/Library/Caches/me.offlocalhost.Paraspeech",
    "~/Library/Preferences/me.offlocalhost.Paraspeech.plist",
    "~/Library/Saved Application State/me.offlocalhost.Paraspeech.savedState",
  ]
end
