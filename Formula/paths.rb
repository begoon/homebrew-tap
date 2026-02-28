class Paths < Formula
  desc "CLI tool to display PATH directories with colors and interactive selector"
  homepage "https://github.com/begoon/zig-path"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/begoon/zig-path/releases/download/latest/paths-macos-arm64.tar.gz"
      sha256 "aa34a7844533bde1b2210d7222c85c58bf422a6722b7f6429cf1902888d2618f"
    else
      url "https://github.com/begoon/zig-path/releases/download/latest/paths-macos-x86_64.tar.gz"
      sha256 "4c0cc24766dbbfebb07b6ea89c6ddfd1d76431c616d7e5a217d5f263e2673fe5"
    end
  end

  def install
    bin.install "paths"
  end

  test do
    assert_match(/\/usr\/bin/, shell_output("#{bin}/paths"))
  end
end
