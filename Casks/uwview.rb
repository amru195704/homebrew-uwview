cask "uwview" do
  arch arm: "arm64", intel: "x64"

  version "1.7.3.6.7"
  sha256 arm:   "e851ab4f98c38e6419d77ca2a3f90aeca9cfdb33b64660d2a9989db9882917b9",
         intel: "9fd63368d3985019a4f5dd831cd679c38d4521e15b55c237015952101ab22e75"

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
