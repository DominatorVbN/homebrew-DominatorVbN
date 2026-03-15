cask "deeplinkscout" do
  version "1.0.10"
  sha256 "30fb9441b35d171e48a5a69b230d2d8a48ed1142e0cb3783647ffe2f4c34c2d4"

  url "https://raw.githubusercontent.com/DominatorVbN/DeeplinkScoutDocs/main/releases/DeeplinkScout-#{version}.dmg"
  name "DeeplinkScout"
  desc "Test and manage deeplinks for iOS and macOS development"
  homepage "https://amitsamant.in/DeeplinkScoutDocs/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "DeeplinkScout.app"

  zap trash: [
    "~/Library/Application Support/DeeplinkScout",
    "~/Library/Caches/in.amitsamant.app.deeplinkscout",
    "~/Library/Preferences/in.amitsamant.app.deeplinkscout.plist",
  ]
end
