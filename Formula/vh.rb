class Vh < Formula
  desc "VibHost CLI — deploy web apps from terminal"
  homepage "https://github.com/Aventus-Group/vh-cli-releases"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Aventus-Group/vh-cli-releases/releases/download/v0.1.4/vh-darwin-arm64.tar.gz"
      sha256 "b3d4da24689591c5ea54610157ceff6da4e788126dc56f1fc149fe2fdf907116"
      def install
        bin.install "vh-darwin-arm64" => "vh"
      end
    end
    on_intel do
      url "https://github.com/Aventus-Group/vh-cli-releases/releases/download/v0.1.4/vh-darwin-amd64.tar.gz"
      sha256 "b38236f615ae6bd68d3d27ec1e80c07208cb9aade4b9fe3198b8e057947d13d3"
      def install
        bin.install "vh-darwin-amd64" => "vh"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Aventus-Group/vh-cli-releases/releases/download/v0.1.4/vh-linux-arm64.tar.gz"
      sha256 "b63587285bc7abe0ba867d1572140cf568b9c3ecf002b5038a19d2ec3e646eb7"
      def install
        bin.install "vh-linux-arm64" => "vh"
      end
    end
    on_intel do
      url "https://github.com/Aventus-Group/vh-cli-releases/releases/download/v0.1.4/vh-linux-amd64.tar.gz"
      sha256 "230bbf866e18507daaaf76165652079ee0adae41561973e88a0ea4e3a0139a65"
      def install
        bin.install "vh-linux-amd64" => "vh"
      end
    end
  end

  test do
    assert_match "vh version", shell_output("#{bin}/vh version")
  end
end
