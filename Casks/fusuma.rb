cask "fusuma" do
  version "1.0.44"
  sha256 "acb5c05a8f28c641c4064df1d1e5bb8e34cc3d8b4346040418bd1e172afff22e"

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
