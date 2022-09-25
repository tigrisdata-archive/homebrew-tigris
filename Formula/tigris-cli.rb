class TigrisCli < Formula
  desc "Tigris is a modern, scalable backend for building real-time websites and apps."
  homepage "https://docs.tigrisdata.com"
  license "Apache 2.0"
  head "https://github.com/tigrisdata/tigris-cli.git", branch: "beta"
  url "https://github.com/tigrisdata/tigris-cli.git",
    tag:      "v1.0.0-beta.2"

  depends_on "make" => :build
  depends_on "go" => :build

 on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tigrisdata/tigris-cli/releases/download/v1.0.0-beta.2/tigris-v1.0.0-beta.2-darwin-arm64.tar.gz"
      sha256 "d6d7744717af947028846dde60c904752df942fe8c0608f59208e6f4d4a1e164"

      def install
        bin.install "tigris"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tigrisdata/tigris-cli/releases/download/v1.0.0-beta.2/tigris-v1.0.0-beta.2-darwin-amd64.tar.gz"
      sha256 "397096bb3928f20af5b5b556c8f6052ab8ddc55302e8eab63ce0042468ab3e88"

      def install
        bin.install "tigris"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tigrisdata/tigris-cli/releases/download/v1.0.0-beta.2/tigris-v1.0.0-beta.2-linux-arm64.tar.gz"
      sha256 "2149b70ff326ac9437d8d550e27e40c522571d241a2dff9fcf3677dbba47ab4b"

      def install
        bin.install "tigris"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tigrisdata/tigris-cli/releases/download/v1.0.0-beta.2/tigris-v1.0.0-beta.2-linux-amd64.tar.gz"
      sha256 "90628b0ed2a93dcd2a21422d095a0c8c646075ecf89e66c65daaa45e0e99c0b6"

      def install
        bin.install "tigris"
      end
    end
  end

#  def install
#    system "make"
#    bin.install "tigris"
#  end

  test do
    system "make", "test"
  end
end
