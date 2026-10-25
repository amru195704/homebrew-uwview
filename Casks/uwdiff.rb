cask "uwdiff" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "2d00447edf6ccc0ff625759dfa9a847bec480f926c1fe200f4cd8df501038482",
         intel: "cd9be7a6de5ec2f28a7fc8e6e84fb02f01255d11637592699a32d00bf56c09bd"

  url "https://github.com/amru195704/UwDiff/releases/download/v#{version}/UwDiff-#{version}-mac-#{arch}.dmg"
  name "UwDiff"
  desc "Compare two files or folders in any format or encoding, with the uvd command"
  homepage "https://github.com/amru195704/UwDiff"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "UwDiff.app"
  binary "#{appdir}/UwDiff.app/Contents/MacOS/uvd"
end
