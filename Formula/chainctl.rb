# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.223"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.223/chainctl_darwin_x86_64"
      sha256 "ce018f1e1d3e3f821baf0ba9218e537dbfc39007408dee1b60a28b7b89f143be"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.1.223/chainctl_darwin_arm64"
      sha256 "bc6e43fd61e014baab285c5eb03e1a959892da071e4336e56f7278ac50c95dfb"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.223/chainctl_linux_x86_64"
      sha256 "f6e8b846aa3ce193fd9428937cb58376ae0f0f76574fcf481cb7604861267edb"

      def install
        bin.install "chainctl_linux_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.enforce.dev/chainctl/0.1.223/chainctl_linux_arm64"
      sha256 "15e52fe1eb1dcf9e61fdafcb3ddd7bab79141f241145f4fe56c3a16d087fccaf"

      def install
        bin.install "chainctl_linux_arm64" => "chainctl"
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
