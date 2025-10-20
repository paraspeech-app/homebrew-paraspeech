cask "paraspeech" do
  version "1.3.1"
  sha256 "30b58a39149124ddcfc3ac503230d20fdb46f95de7b411a12803e08720db44ed"

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
