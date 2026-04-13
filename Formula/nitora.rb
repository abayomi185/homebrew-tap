class Nitora < Formula
  desc "macOS XDR/EDR brightness control CLI"
  homepage "https://github.com/abayomi185/nitora"
  version "0.4.4"
  license "GPL-3.0-or-later"

  url "https://github.com/abayomi185/nitora/releases/download/v0.4.4/nitora-v0.4.4-aarch64-apple-darwin.tar.gz"
  sha256 "c4c7436dfda5c3687638b8f18dc1cebaed1bb3a8f50cb69cf7867250e5e5e269"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "nitora"
  end

  test do
    assert_match "nitora", shell_output("\#{bin}/nitora --help")
  end
end
