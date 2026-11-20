cask "converterator" do
  version "1.20.0"
  sha256 "601722e2e1520da680f6f0b9f752796af636adaa04f6d0fe287cb3fc69d2d95c"

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
