cask "busycal" do
  version "3.10.3,401044"
  sha256 "6802f35d454127dc863359b353ac66c00a7133167cc160c9da4fcb4f4f723667"

  url "https://www.busymac.com/download/BusyCal.zip"
  appcast "https://www.busymac.com/busycal/news.plist"
  name "BusyCal"
  homepage "https://busymac.com/busycal/index.html"

  auto_updates true

  pkg "BusyCal Installer.pkg"

  uninstall pkgutil: "com.busymac.busycal#{version.major}.pkg",
            quit:    "N4RA379GBW.com.busymac.busycal#{version.major}.alarm",
            signal:  ["TERM", "com.busymac.busycal#{version.major}"]

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.busymac.busycal#{version.major}.sfl*",
    "~/Library/Containers/com.busymac.busycal#{version.major}",
    "~/Library/Containers/N4RA379GBW.com.busymac.busycal#{version.major}.alarm",
    "~/Library/Group Containers/com.busymac.busycal#{version.major}",
    "~/Library/Group Containers/N4RA379GBW.com.busymac.busycal#{version.major}",
  ]
end
