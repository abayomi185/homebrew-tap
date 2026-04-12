class Nitora < Formula
  desc "macOS XDR/EDR brightness control CLI"
  homepage "https://github.com/abayomi185/nitora"
  version "0.4.2"
  license "MIT"

  on_arm do
    url "https://github.com/abayomi185/nitora/releases/download/v0.4.2/nitora-v0.4.2-aarch64-apple-darwin.tar.gz"
    sha256 "9db7ba4f48cc7a22ac8ab5945e99c1a6270fb7a179d520e28d14d8cd793d6403"
  end

  on_intel do
    url "https://github.com/abayomi185/nitora/releases/download/v0.4.2/nitora-v0.4.2-x86_64-apple-darwin.tar.gz"
    sha256 "365666e884e2858fc3122a9bb7b8d713157cad6e247b92d7d4bb05748b9f69b4"
  end

  depends_on :macos

  def install
    bin.install "nitora"
  end

  test do
    assert_match "nitora", shell_output("\#{bin}/nitora --help")
  end
end
