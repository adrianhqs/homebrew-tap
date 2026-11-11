cask "ratio" do
  version "0.15.13"
  sha256 "58222064eee9ebdd34d4a87b820dd37db76f5b3c4a17ee0240277e702726be71"

  url "https://github.com/adrianhqs/ratio-releases/releases/download/v#{version}/Ratio-#{version}.dmg"
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
