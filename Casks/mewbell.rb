cask "mewbell" do
  version "0.4.0"
  sha256 "76c7de55bac7fedd1ee444aa609b0ce4b7d5f8c47b613f243c86429a9b461dfc"

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
