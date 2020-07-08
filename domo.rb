require 'formula'

class Domo < Formula
  desc "CLI for creating custom apps on Domo's App Platform"
  homepage "https://developer.domo.com/docs/dev-studio/dev-studio-overview"
  url "https://github.com/DomoApps/homebrew-ryuu/releases/download/v3.4.0/v3.4.0.zip"
  sha256 "6aa443ba71514cb084e6547ab318603136189d141a3e4bcee0e6b50841b3e3e1"

  def install
    bin.install "domo"
  end

  test do
    version_out = shell_output("#{bin}/domo -v")
    assert_match version.to_s, version_out
    help_out = shell_output("#{bin}/domo -h")
    assert_match "Usage: domo[options] [command]", help_out
    assert_match "", help_out
    assert_match "Options:", help_out
  end
end
