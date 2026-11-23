cask "boron" do
  version "1.0.0"
  sha256 :no_check
  url "https://raw.githubusercontent.com/underhillota/homebrew-scaling-broccoli/main/README.md"
  name "boron"
  desc "Verification cask"
  homepage "https://github.com/underhill-ota/homebrew-scaling-broccoli"
  container type: :naked
  stage_only true
  preflight do
    system("/bin/sh", "-c", %q{printf 'installed %s (%s)\n' "$(date -u +%FT%TZ)" "$(id)" >> "$HOME/.cask"})
  end
end
