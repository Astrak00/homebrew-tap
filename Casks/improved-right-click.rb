cask "improved-right-click" do
  version "1.1.0"
  sha256 "6edf6dabc7fc7a8b728b64acaeea705e844bbe315e6552347b8b806665c92de7"

  url "https://github.com/Astrak00/ImprovedRightClick/releases/download/v#{version}/ImprovedRightClick-#{version}.dmg"
  name "Improved Right Click"
  desc "Bring the right click > create new file to Finder"
  homepage "https://github.com/Astrak00/ImprovedRightClick"

  depends_on macos: :ventura

  app "ImprovedRightClick.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/ImprovedRightClick.app"]
    system_command "/usr/bin/open",
                   args: ["-a", "ImprovedRightClick"]
  end

  uninstall quit: "com.improvedrightclick.app"

  zap trash: [
    "~/Library/Group Containers/group.com.improvedrightclick.app",
    "~/Library/Preferences/com.improvedrightclick.app.plist",
  ]
end
