class T2stock < Formula
  desc "Real-time stock price tracker"
  homepage "https://github.com/franpfeiffer/t2stock"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/franpfeiffer/t2stock/releases/download/v1.0.0/t2stock_1.0.0_darwin_amd64.tar.gz"
      sha256 "your-sha256-hash-here"
    end
    if Hardware::CPU.arm?
      url "https://github.com/franpfeiffer/t2stock/releases/download/v1.0.0/t2stock_1.0.0_darwin_arm64.tar.gz"
      sha256 "your-sha256-hash-here"
    end
  end

  def install
    bin.install "t2stock"
  end

  test do
    output = shell_output("#{bin}/t2stock --help")
    assert_match "stock price tracker", output
  end
end
