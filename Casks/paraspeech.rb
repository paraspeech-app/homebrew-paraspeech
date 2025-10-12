cask "paraspeech" do
  version "1.2.1"
  sha256 "c974ddf7977c63b8ca24062da6725780b746268651f6ed388e2cac958e29774a"

  url "https://github.com/paraspeech/paraspeech/releases/download/v#{version}/Paraspeech-#{version}.zip",
      verified: "github.com/paraspeech/paraspeech/"
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
