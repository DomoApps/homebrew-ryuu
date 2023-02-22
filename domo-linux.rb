require 'formula'

class DomoLinux < Formula
  desc "CLI for creating custom apps on Domo's App Platform"
  homepage "https://developer.domo.com/docs/dev-studio/dev-studio-overview"
  url "https://github.com/DomoApps/homebrew-ryuu/releases/download/v4.2.6/domo-linux.zip"
  sha256 "6c3e8cf0a4408cffc9bec46814c50ad6bce989cb2fa5c8659ee8d25b8ca58ea4"

  def install 
    bin.install "domo-linux" => "domo"
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
