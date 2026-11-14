cask "uwdiff" do
  arch arm: "arm64", intel: "x64"

  version "2.0.0"
  sha256 arm:   "17e7b1bd27d6400b1864ae65491ebdf2212d013b6aa417dc57f576a12ec3ee84",
         intel: "37986b97311e44748bea09b24c8d28fb1de1adc27cd282ce4ba1735bd42550c7"

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
