cask "uwdiff" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "5660992e7886e1a08b945fdc240c8cbbeab47e9a2d276fc88374fb5c1a05b5eb",
         intel: "7b9873bb644d5d0662ad50c6f9ccd4157280723a91194459923a401d1f8d9d71"

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
