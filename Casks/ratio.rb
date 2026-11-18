cask "ratio" do
  version "0.16.0"
  sha256 "880f7424a41ad047972f985befa8f7cddcb637130f64694aa3866a8f7d3903e4"

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
