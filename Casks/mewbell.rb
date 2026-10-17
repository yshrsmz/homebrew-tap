cask "mewbell" do
  version "0.6.0"
  sha256 "b119dbc3d98d384b9e7e4d1e06d311173a6b090a4273295e26d6747b3c916fe8"

  url "https://github.com/yshrsmz/mewbell/releases/download/v#{version}/Mewbell-#{version}.zip"
  name "Mewbell"
  desc "Menu bar app for GitHub notifications across gh CLI accounts"
  homepage "https://github.com/yshrsmz/mewbell"

  depends_on macos: :tahoe

  app "Mewbell.app"

  uninstall quit: "com.codingfeline.mewbell"

  zap trash: [
    "~/Library/Application Support/com.codingfeline.mewbell",
    "~/Library/Preferences/com.codingfeline.mewbell.plist",
  ]

  caveats <<~EOS
    Mewbell is ad-hoc signed and not notarized, so macOS blocks it on the first
    launch and again after every upgrade. To open it, try launching it once, then
    go to System Settings > Privacy & Security and click "Open Anyway" for Mewbell.

    Mewbell reads your accounts from the GitHub CLI. Install gh and log in first:
      brew install gh
      gh auth login
  EOS
end
