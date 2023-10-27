# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.190"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.190/chainctl_darwin_x86_64"
      sha256 "cace3bb2fafb73d8d05196cc844c89ea5411182a660dad655a4d60a3603f2469"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.1.190/chainctl_darwin_arm64"
      sha256 "acf5b1ce78f9aa9d266cfe90a5a8da3ceba64b8319c9a52d5960e68609bd9b90"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.190/chainctl_linux_x86_64"
      sha256 "91c00a6b21ebcdb91f60c20bada908513ccf4538837ad8f1d4fd585ec0248cb7"

      def install
        bin.install "chainctl_linux_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.enforce.dev/chainctl/0.1.190/chainctl_linux_arm64"
      sha256 "8b9d3180577e24c1e92252315a59d924872b55f0d8c5eb43d294e643cdc2e75f"

      def install
        bin.install "chainctl_linux_arm64" => "chainctl"
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
