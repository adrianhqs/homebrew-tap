cask "ratio" do
  version "0.15.6"
  sha256 "6822aae01962f8d8771e9e40e79570d320e9544f1127eb922916d0162d9e9c03"

  url "https://github.com/adrianhqs/ratio-releases/releases/download/v#{version}/Ratio-#{version}.dmg",
      verified: "github.com/adrianhqs/ratio-releases/"
  name "Ratio"
  desc "Notepad calculator with live currencies, units and dates"
  homepage "https://useratio.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Ratio.app"
  binary "#{appdir}/Ratio.app/Contents/Helpers/ratio"

  zap trash: [
    "~/Library/Application Support/Ratio",
    "~/Library/Caches/app.ratio.calculator",
    "~/Library/HTTPStorages/app.ratio.calculator",
    "~/Library/HTTPStorages/app.ratio.calculator.binarycookies",
    "~/Library/Preferences/app.ratio.calculator.plist",
  ]
end
