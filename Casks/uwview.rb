cask "uwview" do
  arch arm: "arm64", intel: "x64"

  version "1.7.3.6"
  sha256 arm:   "d1ceadc10559906614414701e8ae09cd1040e3917a1ad7fa5208a9886945162b",
         intel: "352db974ede04b608eb5134cd0c5ee345ecfb9602bc3405c88c61cd47b65a622"

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
