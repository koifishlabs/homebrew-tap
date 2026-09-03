cask "fusuma" do
  version "1.0.54"
  sha256 "9a700cc6a3d89de59bdbb8514e8b5066838fe4f66ed7eade6f55eccfce8e61d2"

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
