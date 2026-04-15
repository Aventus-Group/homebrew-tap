class Vh < Formula
  desc "VibHost CLI — deploy web apps from terminal"
  homepage "https://github.com/Aventus-Group/vh-cli-releases"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Aventus-Group/vh-cli-releases/releases/download/v0.1.3/vh-darwin-arm64.tar.gz"
      sha256 "9090bdfa517f0eda0e1841a3f7b5bd342e83037202c880f6f07a480fd7b15e55"
      def install
        bin.install "vh-darwin-arm64" => "vh"
      end
    end
    on_intel do
      url "https://github.com/Aventus-Group/vh-cli-releases/releases/download/v0.1.3/vh-darwin-amd64.tar.gz"
      sha256 "e7697aa3000330a116f71fb1a96ce3f727a1dae0ec5696e48b1a73ee01702966"
      def install
        bin.install "vh-darwin-amd64" => "vh"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Aventus-Group/vh-cli-releases/releases/download/v0.1.3/vh-linux-arm64.tar.gz"
      sha256 "d45b02a5af616c685ff6067bf82e2c1a03260cf5a799b7cbb3715c5f8f0a00d1"
      def install
        bin.install "vh-linux-arm64" => "vh"
      end
    end
    on_intel do
      url "https://github.com/Aventus-Group/vh-cli-releases/releases/download/v0.1.3/vh-linux-amd64.tar.gz"
      sha256 "837ae1b0b4e01bbf3d899b97c9745f5d6d7ec044b04b0e24732e17a43dd33f29"
      def install
        bin.install "vh-linux-amd64" => "vh"
      end
    end
  end

  test do
    assert_match "vh version", shell_output("#{bin}/vh version")
  end
end
