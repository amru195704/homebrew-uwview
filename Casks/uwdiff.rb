cask "uwdiff" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "084d6723714596e3299e5ad29d99c9546531913a1f566f638c3f76de7690fd3b",
         intel: "849d0d39f75036e5f8a82e839db9988c48ba4986d923a39fc705ee07febfc354"

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
