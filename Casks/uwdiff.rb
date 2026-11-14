cask "uwdiff" do
  arch arm: "arm64", intel: "x64"

  version "2.0.0"
  sha256 arm:   "e773ff9be4f34b27a41da7ec0aed4fc485ce1cac6506e4ae03157929c40d10b8",
         intel: "7cb7513b28c47c6387dcea137b7c355013f4aa0ecd8eca6296e9640d7438b4ae"

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
