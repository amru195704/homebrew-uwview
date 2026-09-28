cask "uwview" do
  arch arm: "arm64", intel: "x64"

  version "1.7.3.5"
  sha256 arm:   "b8b2d1d7eb483b949e80e98010f974fc91f8154898e6c4f192beabc5568ff4a1",
         intel: "1fdd34aa5e893d6d99acd932df3abd7cfe0c963d31dae207b5c1c0be98093eb5"

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
