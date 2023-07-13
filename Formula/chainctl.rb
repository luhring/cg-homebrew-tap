# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.141"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.141/chainctl_darwin_x86_64"
      sha256 "a9d1d38832edd1198bdd5b64958f163e21de20189c07a3e528950c05963365be"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.1.141/chainctl_darwin_arm64"
      sha256 "47b89850c70a80068ead76f86e66b4a08105ac5ff427275fb24ee1083397c54f"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.141/chainctl_linux_x86_64"
      sha256 "9eb0beda928dde0c5cf510a01babb9ac8b7218d42d95b123092348e42ed988db"

      def install
        bin.install "chainctl_linux_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.enforce.dev/chainctl/0.1.141/chainctl_linux_arm64"
      sha256 "88863e75264f3df2a6523afd068a8ae48eede2cd9d78d8d6735bacfb284732a9"

      def install
        bin.install "chainctl_linux_arm64" => "chainctl"
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
