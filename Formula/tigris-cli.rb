# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TigrisCli < Formula
  desc "Tigris is a modern, scalable backend for building real-time websites and apps."
  homepage "https://docs.tigrisdata.com"
  version "1.0.0-beta.12"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/tigrisdata/tigris-cli/releases/download/v1.0.0-beta.12/tigris_1.0.0-beta.12_darwin_amd64.tar.gz"
      sha256 "6d53e2d79626fd3e57b8dafa165ea3399630e818dc823668cc52c8b2d0ebb43a"

      def install
        bin.install "tigris"
        bash_completion.install "completion/bash/tigris" => "tigris"
        zsh_completion.install "completion/zsh/_tigris" => "_tigris"
        fish_completion.install "completion/fish/tigris"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/tigrisdata/tigris-cli/releases/download/v1.0.0-beta.12/tigris_1.0.0-beta.12_darwin_arm64.tar.gz"
      sha256 "b545b30e837dfc5748e173b9682cef56b49030d2eddf2fa2c2fb6e9bf17e7ec0"

      def install
        bin.install "tigris"
        bash_completion.install "completion/bash/tigris" => "tigris"
        zsh_completion.install "completion/zsh/_tigris" => "_tigris"
        fish_completion.install "completion/fish/tigris"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tigrisdata/tigris-cli/releases/download/v1.0.0-beta.12/tigris_1.0.0-beta.12_linux_arm64.tar.gz"
      sha256 "c5cfe67979e0c76936d176d94d323d5a2ae5dcec7a281d8d03c2de886c7dc9c0"

      def install
        bin.install "tigris"
        bash_completion.install "completion/bash/tigris" => "tigris"
        zsh_completion.install "completion/zsh/_tigris" => "_tigris"
        fish_completion.install "completion/fish/tigris"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tigrisdata/tigris-cli/releases/download/v1.0.0-beta.12/tigris_1.0.0-beta.12_linux_amd64.tar.gz"
      sha256 "bac491c82630b1449a2ec034f228bad68a369fe3cd7d5fc05e1b60fe374789aa"

      def install
        bin.install "tigris"
        bash_completion.install "completion/bash/tigris" => "tigris"
        zsh_completion.install "completion/zsh/_tigris" => "_tigris"
        fish_completion.install "completion/fish/tigris"
      end
    end
  end
end
