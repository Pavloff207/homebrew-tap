cask "simple-snip" do
  version "0.1.1"
  sha256 "4b00c6f671ec4dfe34a9f5d0e973146c453f6b25896aaef8912eedefb41fa12a"

  url "https://github.com/Pavloff207/simple-snip/releases/download/v#{version}/SimpleSnip.zip"
  name "Simple Snip"
  desc "Freeform and rectangle screen snips with a pen and highlighter editor"
  homepage "https://pavloff207.github.io/simple-snip/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :tahoe"

  app "SimpleSnip.app"

  uninstall quit: "com.pavloff.SimpleSnip"

  zap trash: "~/Library/Preferences/com.pavloff.SimpleSnip.plist"

  caveats <<~EOS
    Simple Snip isn't notarized by Apple yet. The first time you open it, macOS
    blocks it: go to System Settings → Privacy & Security and click "Open Anyway".
  EOS
end
