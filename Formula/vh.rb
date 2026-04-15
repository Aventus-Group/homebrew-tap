class Vh < Formula
  desc "VibHost CLI — deploy web apps from terminal"
  homepage "https://github.com/Aventus-Group/vh-cli-releases"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Aventus-Group/vh-cli-releases/releases/download/v0.1.2/vh-darwin-arm64.tar.gz"
      sha256 "761cafaf10a932095bd6e426c04b68c1abac777432c25a57249a1d764a8ad110"

      def install
        bin.install "vh-darwin-arm64" => "vh"
      end
    end
    on_intel do
      url "https://github.com/Aventus-Group/vh-cli-releases/releases/download/v0.1.2/vh-darwin-amd64.tar.gz"
      sha256 "107f62f0e105c81f568a94f536410e430db339f393ed6c2a8a096eadb1b3dcb5"

      def install
        bin.install "vh-darwin-amd64" => "vh"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Aventus-Group/vh-cli-releases/releases/download/v0.1.2/vh-linux-arm64.tar.gz"
      sha256 "36ec757fd626947b6bdd4f711638adb87549fd64f87819039d10568052bec2d8"

      def install
        bin.install "vh-linux-arm64" => "vh"
      end
    end
    on_intel do
      url "https://github.com/Aventus-Group/vh-cli-releases/releases/download/v0.1.2/vh-linux-amd64.tar.gz"
      sha256 "8163f77d495aab0b7ae6fe67bb9961fcf0e11cec105377b93039982dcfb8e44e"

      def install
        bin.install "vh-linux-amd64" => "vh"
      end
    end
  end

  test do
    assert_match "vh version", shell_output("#{bin}/vh version")
  end
end
