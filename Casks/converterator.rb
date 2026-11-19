cask "converterator" do
  version "1.17.0"
  sha256 "419fcbad00d81032456196c974ae459f477c6a2ee42845ac9dae3120ab3af953"

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
