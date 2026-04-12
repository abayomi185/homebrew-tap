class Nitora < Formula
  desc "macOS XDR/EDR brightness control CLI"
  homepage "https://github.com/abayomi185/nitora"
  version "0.4.2-rc.1"
  license "MIT"

  on_arm do
    url "https://github.com/abayomi185/nitora/releases/download/v0.4.2-rc.1/nitora-v0.4.2-rc.1-aarch64-apple-darwin.tar.gz"
    sha256 "73281da76531443af26e00915414bee9c454ebaecea12b61b7ca6a6026a15f2a"
  end

  on_intel do
    url "https://github.com/abayomi185/nitora/releases/download/v0.4.2-rc.1/nitora-v0.4.2-rc.1-x86_64-apple-darwin.tar.gz"
    sha256 "79596b78a0d251ad6bf930e3079863aa9de3857acf70d995840ea67321367b2f"
  end

  depends_on :macos

  def install
    bin.install "nitora"
  end

  test do
    assert_match "nitora", shell_output("\#{bin}/nitora --help")
  end
end
