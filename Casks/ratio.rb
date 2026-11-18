cask "ratio" do
  version "0.17.0"
  sha256 "ba171e5356367aca6bb855bdeb1a0fbec133228840d2787c2be7cfb6a61c2ac8"

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
