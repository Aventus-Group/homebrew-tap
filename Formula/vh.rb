class Vh < Formula
  desc "VibHost CLI — deploy web apps from terminal"
  homepage "https://github.com/Aventus-Group/vh-cli-releases"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Aventus-Group/vh-cli-releases/releases/download/v0.1.1/vh-darwin-arm64.tar.gz"
      sha256 "edf5514bb4ef6f0f228e1d32833e6ba1ba53c7213b66e12bab071d9adec057fc"

      def install
        bin.install "vh-darwin-arm64" => "vh"
      end
    end
    on_intel do
      url "https://github.com/Aventus-Group/vh-cli-releases/releases/download/v0.1.1/vh-darwin-amd64.tar.gz"
      sha256 "e2bb572d7e16e8272e468d4bbb85cf97124918aca7b4cdbb8286fc007bfa1558"

      def install
        bin.install "vh-darwin-amd64" => "vh"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Aventus-Group/vh-cli-releases/releases/download/v0.1.1/vh-linux-arm64.tar.gz"
      sha256 "2777974d7325ace936ec2df4f93c16b84cff3372c33851a0a5c360da0fd86c7b"

      def install
        bin.install "vh-linux-arm64" => "vh"
      end
    end
    on_intel do
      url "https://github.com/Aventus-Group/vh-cli-releases/releases/download/v0.1.1/vh-linux-amd64.tar.gz"
      sha256 "6cf6c82ed53c7c22811aab1439cc6323747c313ee355fd3760cb3d90243d625c"

      def install
        bin.install "vh-linux-amd64" => "vh"
      end
    end
  end

  test do
    assert_match "vh version", shell_output("#{bin}/vh version")
  end
end
