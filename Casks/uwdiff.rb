cask "uwdiff" do
  arch arm: "arm64", intel: "x64"

  version "2.0.1"
  sha256 arm:   "92c63d753b6c8d9264582a64158bd3bf08105d1d7a5041d8c126e6392b00b338",
         intel: "42ccc6d27bf3011005fc7bb47e3409e33ed90ef3763a7151184e5e8095f13eac"

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
