require 'formula'

class Domo < Formula
  desc "CLI for creating custom apps on Domo's App Platform"
  homepage "https://developer.domo.com/docs/dev-studio/dev-studio-overview"
  url "https://github.com/DomoApps/homebrew-ryuu/releases/download/v4.3.3/domo.zip"
  sha256 "9b8440847d18b9c96d83c8ad6350fbe89fe76b38b979b69f0db90d6145578e51"

  def install 
    bin.install "domo"
  end

  test do
    rm "~/.nvm/versions/node/v12.16.1/bin/domo"
    version_out = shell_output("#{bin}/domo -v")
    assert_match version.to_s, version_out
    help_out = shell_output("#{bin}/domo -h")
    assert_match "Usage: domo [options] [command]", help_out
    assert_match "", help_out
    assert_match "Options:", help_out
  end
end
