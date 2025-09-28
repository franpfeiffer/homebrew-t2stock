class T2stock < Formula
  desc "Real-time stock price tracker"
  homepage "https://github.com/franpfeiffer/t2stock"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/franpfeiffer/t2stock/releases/download/v1.0.0/t2stock_1.0.0_darwin_amd64.tar.gz"
      sha256 "b58cdd29b12752557316ca6b554d8a02d9b6619a4342ab80e1a28209fe7d68be"
    end
    if Hardware::CPU.arm?
      url "https://github.com/franpfeiffer/t2stock/releases/download/v1.0.0/t2stock_1.0.0_darwin_arm64.tar.gz"
      sha256 "ab6618135065b2c8caeb26a9c3232432d547089d9cb2c7808343586682234537"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/franpfeiffer/t2stock/releases/download/v1.0.0/t2stock_1.0.0_linux_amd64.tar.gz"
      sha256 "18c5de65e473d31eb39070b6eb6ece1763782ddc06663b3df9f47c44bbe3d1d6"
    end
    if Hardware::CPU.arm? && Hardware::CPU.arch_64_bit?
      url "https://github.com/franpfeiffer/t2stock/releases/download/v1.0.0/t2stock_1.0.0_linux_arm64.tar.gz"
      sha256 "6c052d84f1b3a9b862ea8bc7db71d7323e22a8fb39790b0963e21011857f510d"
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
