class Vh < Formula
  desc "VibHost CLI — deploy web apps from terminal"
  homepage "https://github.com/Aventus-Group/vh-cli-releases"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Aventus-Group/vh-cli-releases/releases/download/v0.2.0/vh-darwin-arm64.tar.gz"
      sha256 "113a1bf958747288b224ad61e25d0e4eb7560a2fcc59c4615310b2f360708066"
      def install
        bin.install "vh-darwin-arm64" => "vh"
      end
    end
    on_intel do
      url "https://github.com/Aventus-Group/vh-cli-releases/releases/download/v0.2.0/vh-darwin-amd64.tar.gz"
      sha256 "c5c83faf50bda08aaf08978d777cffa5c2b72a7c31c8f268275ad740cbbf645c"
      def install
        bin.install "vh-darwin-amd64" => "vh"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Aventus-Group/vh-cli-releases/releases/download/v0.2.0/vh-linux-arm64.tar.gz"
      sha256 "c504545855526efad057cf32a9ce2ea2ecc1c3887502f098f09be038022db7b2"
      def install
        bin.install "vh-linux-arm64" => "vh"
      end
    end
    on_intel do
      url "https://github.com/Aventus-Group/vh-cli-releases/releases/download/v0.2.0/vh-linux-amd64.tar.gz"
      sha256 "659caf3723134710ffd2b303a6bcdc8f76087368e4a7b4a425bd73a9c6a01363"
      def install
        bin.install "vh-linux-amd64" => "vh"
      end
    end
  end

  test do
    assert_match "vh version", shell_output("#{bin}/vh version")
  end
end
