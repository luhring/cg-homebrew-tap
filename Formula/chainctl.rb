# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.134"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.134/chainctl_darwin_x86_64"
      sha256 "8716ed1eb77650295c383338dbe73e17c620c81b857edc14086d180c4f2cfe8b"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.1.134/chainctl_darwin_arm64"
      sha256 "7481a7bfa67154c42980cc2f0a1317024c717a27dcbb17857480aec883663c93"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.134/chainctl_linux_x86_64"
      sha256 "ab1c6ee6753cca6ba87d8e62c6f777e9d05c4f64df888642e04480016b1e1dee"

      def install
        bin.install "chainctl_linux_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.enforce.dev/chainctl/0.1.134/chainctl_linux_arm64"
      sha256 "b09cc0cc36ad116c58d7a8d721f50b936c9ac26c2209444141b5ee22cf3aa02f"

      def install
        bin.install "chainctl_linux_arm64" => "chainctl"
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
