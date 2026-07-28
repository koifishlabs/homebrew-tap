cask "fusuma" do
  version "1.0.43"
  sha256 "d73287ed83580bd0389da3ec2c45bd7b44d581039453aa71d3d48101c9e5b6ff"

  url "https://api.fusuma.dev/updates/Fusuma-#{version}.dmg"
  name "Fusuma"
  desc "IDE for running coding agents in parallel"
  homepage "https://fusuma.dev/"

  livecheck do
    url "https://api.fusuma.dev/updates/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on :macos

  app "Fusuma.app"

  zap trash: [
    "~/Library/Application Support/com.koifishlabs.fusuma",
    "~/Library/Caches/com.koifishlabs.fusuma",
    "~/Library/HTTPStorages/com.koifishlabs.fusuma",
    "~/Library/Preferences/com.koifishlabs.fusuma.plist",
    "~/Library/Saved Application State/com.koifishlabs.fusuma.savedState",
    "~/Library/WebKit/com.koifishlabs.fusuma",
  ]
end
