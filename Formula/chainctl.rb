# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.81"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.81/chainctl_darwin_x86_64"
      sha256 "9ed6d092e78ad4a16a944b7dd7b8960c83be53d4f1174c7eaee6e163501049f2"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.1.81/chainctl_darwin_arm64"
      sha256 "9fe6d59a1e136a87945737cbd92bfe40f04bb2f7c8b3ba4afa18ea7c48613581"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.81/chainctl_linux_x86_64"
      sha256 "4fd5d9d655082d7c2fe204d59c1f3ae53dbfe3a20ff375ea24d9c4afeff2b9d2"

      def install
        bin.install "chainctl_linux_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.enforce.dev/chainctl/0.1.81/chainctl_linux_arm64"
      sha256 "654efdb1198c5d49aef4f8b88e135795aed88bb8b55e75c2e07944cc3a23dd94"

      def install
        bin.install "chainctl_linux_arm64" => "chainctl"
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
