cask "untypo" do
  version "1.0.6"
  sha256 "3d399777fe66d18cb3093b8bf3ca5046e6a9297f0929a2353a77264fba07831e"

  url "https://untypo.app/Untypo.dmg"
  name "Untypo"
  desc "Invisible macOS typo corrector that fixes mistakes on Enter"
  homepage "https://untypo.app/"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Untypo.app"

  zap trash: [
    "~/Library/Application Support/com.untypo.macos",
    "~/Library/Caches/com.untypo.macos",
    "~/Library/Preferences/com.untypo.macos.plist",
  ]
end
