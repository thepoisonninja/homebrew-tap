cask "converterator" do
  version "1.18.0"
  sha256 "cdafc0f17a1a10b3969070e55acb125af1280c7dd7c975ae37dc61f46b047c30"

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
