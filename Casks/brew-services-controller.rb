cask "brew-services-controller" do
  version "0.1.0"
  sha256 "f52abc4c91bebf86a4c38f2e8de2823886f024f23c90f1f939fa275ccbac7ca9"

  url "https://github.com/uded/brew-services-controller/releases/download/v#{version}/BrewServicesController-#{version}.zip"
  name "Brew Services Controller"
  desc "Menubar + dashboard to monitor, control, and tail Homebrew services"
  homepage "https://github.com/uded/brew-services-controller"

  depends_on macos: :sonoma # macOS 14+

  app "Brew Services Controller.app"

  zap trash: "~/Library/Preferences/com.radical.BrewServicesController.plist"

  caveats <<~EOS
    This build is not yet notarized. If macOS Gatekeeper blocks it, either
    install with:
      brew install --cask --no-quarantine uded/tap/brew-services-controller
    or, after installing, right-click "Brew Services Controller" in
    /Applications and choose Open once.
  EOS
end
