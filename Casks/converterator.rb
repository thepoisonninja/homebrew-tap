cask "converterator" do
  version "1.24.0"
  sha256 "5d49a27c8de713058dbf0efc378a4f482ce748e151c5b28de331c61c8a019722"

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
