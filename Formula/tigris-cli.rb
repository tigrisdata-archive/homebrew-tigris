# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TigrisCli < Formula
  desc "Tigris is a modern, scalable backend for building real-time websites and apps."
  homepage "https://docs.tigrisdata.com"
  version "1.0.0-beta.32"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tigrisdata/tigris-cli/releases/download/v1.0.0-beta.32/tigris_1.0.0-beta.32_darwin_arm64.tar.gz"
      sha256 "01d7849314b7e706b6567a08a169a6a872a0e87723cfffcad00b5288f7f46987"

      def install
        bin.install "tigris"
        bash_completion.install "completion/bash/tigris" => "tigris"
        zsh_completion.install "completion/zsh/_tigris" => "_tigris"
        fish_completion.install "completion/fish/tigris"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tigrisdata/tigris-cli/releases/download/v1.0.0-beta.32/tigris_1.0.0-beta.32_darwin_amd64.tar.gz"
      sha256 "c61357bef6c3ac621ddf2b5e5c02288df0f43bbe63cf1e3c74ae0630a3ea0f60"

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
      url "https://github.com/tigrisdata/tigris-cli/releases/download/v1.0.0-beta.32/tigris_1.0.0-beta.32_linux_arm64.tar.gz"
      sha256 "b9755bc926ae708f9981fad0164419c5f9879bfe27b6277a37a49b59c7902e75"

      def install
        bin.install "tigris"
        bash_completion.install "completion/bash/tigris" => "tigris"
        zsh_completion.install "completion/zsh/_tigris" => "_tigris"
        fish_completion.install "completion/fish/tigris"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tigrisdata/tigris-cli/releases/download/v1.0.0-beta.32/tigris_1.0.0-beta.32_linux_amd64.tar.gz"
      sha256 "cda834f950f108d968dc3e7556b1583f16a8f846c3d3c4049eaaadf3e1097d5f"

      def install
        bin.install "tigris"
        bash_completion.install "completion/bash/tigris" => "tigris"
        zsh_completion.install "completion/zsh/_tigris" => "_tigris"
        fish_completion.install "completion/fish/tigris"
      end
    end
  end
end
