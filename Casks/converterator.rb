cask "converterator" do
  version "1.19.0"
  sha256 "02806e417701577e9b19a736c497297c51c11188a789c4d1938ee9bb777f1fb6"

  url "https://github.com/nickgudauskas/Converterator/releases/download/v#{version}/Converterator.zip"
  name "Converterator"
  desc "Converts disc images to CHD or PBP, with Redump checks and translation patches"
  homepage "https://github.com/nickgudauskas/Converterator"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Converterator.app"

  zap trash: [
    "~/Library/Application Support/Converterator",
    "~/Library/Preferences/local.converterator.plist",
  ]
end
