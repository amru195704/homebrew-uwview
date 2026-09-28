cask "uwview" do
  arch arm: "arm64", intel: "x64"

  version "1.7.3.6"
  sha256 arm:   "84ff16147dcba7a4a1220a2e787ab4be95f41b4688e8359e75a70a877017d5a3",
         intel: "e9a212a74d4ee05351f53d347e72fa998fc6e60d37045e078076446d1dbe4917"

  url "https://github.com/amru195704/UwView/releases/download/v#{version}/UwView-#{version}-mac-#{arch}.dmg"
  name "UwView"
  desc "Open and search huge text/log files, with the uvf command"
  homepage "https://github.com/amru195704/UwView"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "UwView.app"
  binary "#{appdir}/UwView.app/Contents/MacOS/uvf"
end
