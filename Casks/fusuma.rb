cask "fusuma" do
  version "1.0.29"
  sha256 "78515977c3cbe9ca76dbb645209c9ee9f85a6bdb8cbaf936d973a939de2c0d5d"

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
