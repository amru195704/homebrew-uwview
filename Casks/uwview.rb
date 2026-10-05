cask "uwview" do
  arch arm: "arm64", intel: "x64"

  version "1.7.3.6.9"
  sha256 arm:   "dcca0487727872adfff8d07bfb86e5b170c8da41f8c60359b868ec13db6d5635",
         intel: "a2bdb293fd6a272f3b81083d0ec34010ba5924b50d626c0010691dc29da33443"

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
