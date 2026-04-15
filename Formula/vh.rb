class Vh < Formula
  desc "VibHost CLI — deploy web apps from terminal"
  homepage "https://github.com/Aventus-Group/vh-cli-releases"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Aventus-Group/vh-cli-releases/releases/download/v#{version}/vh-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER"

      def install
        bin.install "vh-darwin-arm64" => "vh"
      end
    end
    on_intel do
      url "https://github.com/Aventus-Group/vh-cli-releases/releases/download/v#{version}/vh-darwin-amd64.tar.gz"
      sha256 "PLACEHOLDER"

      def install
        bin.install "vh-darwin-amd64" => "vh"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Aventus-Group/vh-cli-releases/releases/download/v#{version}/vh-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER"

      def install
        bin.install "vh-linux-arm64" => "vh"
      end
    end
    on_intel do
      url "https://github.com/Aventus-Group/vh-cli-releases/releases/download/v#{version}/vh-linux-amd64.tar.gz"
      sha256 "PLACEHOLDER"

      def install
        bin.install "vh-linux-amd64" => "vh"
      end
    end
  end

  test do
    assert_match "vh version", shell_output("#{bin}/vh version")
  end
end
