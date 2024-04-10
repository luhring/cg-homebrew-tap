# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.275"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.275/chainctl_darwin_x86_64"
      sha256 "c7efdedda0b69f27dbbe41e2197fbd9039346417db5219c9bf58de175f2191b5"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.1.275/chainctl_darwin_arm64"
      sha256 "c8b1a8e293d8bb98ab0199df6c4d3c5109aae097cb4ee0de3e9748657702fde0"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.275/chainctl_linux_x86_64"
      sha256 "0bf331414b57cfbd832090503499de5bbd9c2d9593a920759343317146b8750f"

      def install
        bin.install "chainctl_linux_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.enforce.dev/chainctl/0.1.275/chainctl_linux_arm64"
      sha256 "05454b5dda2943c41f8a3a56e01ccdc3656cc42b65829afcbf4477acc284e7e3"

      def install
        bin.install "chainctl_linux_arm64" => "chainctl"
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
