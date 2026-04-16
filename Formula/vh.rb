class Vh < Formula
  desc "VibHost CLI — deploy web apps from terminal"
  homepage "https://github.com/Aventus-Group/vh-cli-releases"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Aventus-Group/vh-cli-releases/releases/download/v0.2.1/vh-darwin-arm64.tar.gz"
      sha256 "76127a2a917becfd7881961774987e3039bd975c90fbc29d3ff7fcabca95bfb4"
      def install
        bin.install "vh-darwin-arm64" => "vh"
      end
    end
    on_intel do
      url "https://github.com/Aventus-Group/vh-cli-releases/releases/download/v0.2.1/vh-darwin-amd64.tar.gz"
      sha256 "2df0292cb277d7c94700e3feb2d97e0e103f839f7c252ab30ffd04688ca449e4"
      def install
        bin.install "vh-darwin-amd64" => "vh"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Aventus-Group/vh-cli-releases/releases/download/v0.2.1/vh-linux-arm64.tar.gz"
      sha256 "576626c932af6b9a9a95eb2c1171520f375e2415e75bfd00fc95c5d446e17c63"
      def install
        bin.install "vh-linux-arm64" => "vh"
      end
    end
    on_intel do
      url "https://github.com/Aventus-Group/vh-cli-releases/releases/download/v0.2.1/vh-linux-amd64.tar.gz"
      sha256 "10eb78d708a9e887563028f968bbf0a64de9fa93b52a419907077908b2453a04"
      def install
        bin.install "vh-linux-amd64" => "vh"
      end
    end
  end

  test do
    assert_match "vh version", shell_output("#{bin}/vh version")
  end
end
