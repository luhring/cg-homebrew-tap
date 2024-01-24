# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.219"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.219/chainctl_darwin_x86_64"
      sha256 "71e193825d0379369db2d1c9d9c54e1aa167e0884ab69ee59c592f90ec955b3f"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.1.219/chainctl_darwin_arm64"
      sha256 "a32803a68db733835df6b0d8ec4a84c4dd27fa2b4e387a5fdc8fc998841d3bc2"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.219/chainctl_linux_x86_64"
      sha256 "5eb4dfdb94b39a908ee50780ba9578c026d6ec786a8a8f86f255942b988d526d"

      def install
        bin.install "chainctl_linux_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.enforce.dev/chainctl/0.1.219/chainctl_linux_arm64"
      sha256 "122a7f00fd577b1712eea488d78d714abe4c6a25be07f396238122c8d302f282"

      def install
        bin.install "chainctl_linux_arm64" => "chainctl"
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
