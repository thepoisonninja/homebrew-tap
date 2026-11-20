cask "converterator" do
  version "1.20.1"
  sha256 "c2eb8c60d1670ad4b42ec8210cf1f213b12d1693a95882cf91e38268daac3432"

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
