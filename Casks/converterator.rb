cask "converterator" do
  version "1.21.0"
  sha256 "9a325d46eaadad5d766d0593c002352c834d22edb1c9b3f1198826ffcf745275"

  url "https://github.com/thepoisonninja/Converterator/releases/download/v#{version}/Converterator.zip"
  name "Converterator"
  desc "Converts disc images to CHD or PBP, with Redump checks and translation patches"
  homepage "https://github.com/thepoisonninja/Converterator"

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
