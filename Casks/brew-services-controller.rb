cask "brew-services-controller" do
  version "0.3.1"
  sha256 "d3458ecb86daad922b9657ac1c3e2078e4236e5560e7b1962834c75a03d62d3e"

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
