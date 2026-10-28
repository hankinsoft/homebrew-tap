cask "hydra-dev-studio" do
  version "2026.301"
  sha256 "e9099bd3678036472b0c3ebfbc17a19749792b27178b0af12b514c7999860bfd"

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
