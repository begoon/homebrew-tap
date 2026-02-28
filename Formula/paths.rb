class Paths < Formula
  desc "CLI tool to display PATH directories with colors and interactive selector"
  homepage "https://github.com/begoon/zig-path"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/begoon/zig-path/releases/download/latest/paths-macos-arm64.tar.gz"
      sha256 "f12660a7881fc2e73a5e720b1caa09bd54e57f67b88fc8b316e25592bd8ee02c"
    else
      url "https://github.com/begoon/zig-path/releases/download/latest/paths-macos-x86_64.tar.gz"
      sha256 "3ba6cc311bc5aa30f749ec1ab7ea1cf2bd754ac9a3f070b419e8edb180dfd37f"
    end
  end

  def install
    bin.install "paths"
  end

  test do
    assert_match(/\/usr\/bin/, shell_output("#{bin}/paths"))
  end
end
