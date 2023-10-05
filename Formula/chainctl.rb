# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.179"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.179/chainctl_darwin_x86_64"
      sha256 "1ba854f9079306fc3c5b55213796176af603c02e4ac4504557b8012a4c7434b7"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.1.179/chainctl_darwin_arm64"
      sha256 "519402f59f63239b990c6368be89523169dde28dba312df6647a88d135b175ab"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.179/chainctl_linux_x86_64"
      sha256 "6d870d2cf0e4e930b55d564962a5ec8f390a9812ba3b24286d2a35ff19564105"

      def install
        bin.install "chainctl_linux_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.enforce.dev/chainctl/0.1.179/chainctl_linux_arm64"
      sha256 "878aa24a14ebebb34a56a80846cee3cc7a33c11265b048a50f7640f8bcd1680a"

      def install
        bin.install "chainctl_linux_arm64" => "chainctl"
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
