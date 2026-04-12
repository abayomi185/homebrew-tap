class Nitora < Formula
  desc "macOS XDR/EDR brightness control CLI"
  homepage "https://github.com/abayomi185/nitora"
  version "0.4.3"
  license "MIT"

  url "https://github.com/abayomi185/nitora/releases/download/v0.4.3/nitora-v0.4.3-aarch64-apple-darwin.tar.gz"
  sha256 "3daef75606e59687a0d864ae61f17ce499e591d4983131594177daf08bb25e58"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "nitora"
  end

  test do
    assert_match "nitora", shell_output("\#{bin}/nitora --help")
  end
end
