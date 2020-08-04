require 'formula'

class Domo < Formula
  desc "CLI for creating custom apps on Domo's App Platform"
  homepage "https://developer.domo.com/docs/dev-studio/dev-studio-overview"
  url "https://github.com/DomoApps/homebrew-ryuu/releases/download/v3.4.0/v3.4.0.zip"
  sha256 "5940963d70f769c88b132cb5e026d48398e39af46cd41964602cf5c83403b22b"

  def install 
    system "npm", "uninstall", "-g", "ryuu"
    bin.install "domo"
  end

  test do
    rm "/Users/johnnemelka/.nvm/versions/node/v12.16.1/bin/domo"
    version_out = shell_output("#{bin}/domo -v")
    assert_match version.to_s, version_out
    help_out = shell_output("#{bin}/domo -h")
    assert_match "Usage: domo [options] [command]", help_out
    assert_match "", help_out
    assert_match "Options:", help_out
  end
end
