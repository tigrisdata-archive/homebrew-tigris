class TigrisCli < Formula
  desc "Tigris is a modern, scalable backend for building real-time websites and apps."
  homepage "https://docs.tigrisdata.com"
  license "Apache 2.0"
  head "https://github.com/tigrisdata/tigris-cli.git", branch: "alpha"
  url "https://github.com/tigrisdata/tigris-cli.git",
    tag:      "v1.0.0-alpha.26"

  depends_on "make" => :build
  depends_on "go" => :build

  def install
    system "make"
    bin.install "tigris"
  end

  test do
    system "make", "test"
  end
end
