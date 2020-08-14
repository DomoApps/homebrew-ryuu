require 'formula'

class Domo < Formula
  desc "CLI for creating custom apps on Domo's App Platform"
  homepage "https://developer.domo.com/docs/dev-studio/dev-studio-overview"
  url "https://github.com/DomoApps/homebrew-ryuu/releases/download/v4.0.3/domo.zip"
  sha256 "83b2c2fc440b7caae1d2348ccc68a7ad519e21186a00a23d9bfc25c3c5c848c7"

  def install 
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
