cask "converterator" do
  version "1.22.0"
  sha256 "8787f23482d5a656f5e374443a0afb27d623c53a0c85ab5b51737d9cd7fe1c67"

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
