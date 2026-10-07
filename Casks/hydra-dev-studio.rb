cask "hydra-dev-studio" do
  version "2026.282"
  sha256 "1c62f56311fbed49e8ff2a30969dd38367b58920b3e1dd7fabef36f01a9e9b6e"

  url "https://hydradevstudio.com/downloads/Hydra%20Dev%20Studio.#{version}.app.zip"
  name "Hydra Dev Studio"
  desc "Code editor, file transfer, database and SSH client with agent access"
  homepage "https://hydradevstudio.com/"

  livecheck do
    url "https://hydradevstudio.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :tahoe

  app "HydraDevStudio.app"

  zap trash: [
    "~/Library/Application Support/bugsnag-shared-com.hankinsoft.devstudio",
    "~/Library/Application Support/HydraDevStudio",
    "~/Library/Caches/bugsnag-shared-com.hankinsoft.devstudio",
    "~/Library/Caches/com.hankinsoft.devstudio",
    "~/Library/Group Containers/LKJB72232C.com.hankinsoft.devstudio",
    "~/Library/HTTPStorages/com.hankinsoft.devstudio",
    "~/Library/Preferences/com.hankinsoft.devstudio.plist",
    "~/Library/Saved Application State/com.hankinsoft.devstudio.savedState",
  ]
end
