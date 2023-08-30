# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.162"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.162/chainctl_darwin_x86_64"
      sha256 "b21954f6313c5938f5fca76fce64040e9e12c2d622199b0116330637d32d2c40"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.1.162/chainctl_darwin_arm64"
      sha256 "c6ebd31ddb8c1bfbf8a296a69a80b1c9908f6f23235b97a077eb4c55d67f2439"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.162/chainctl_linux_x86_64"
      sha256 "5794dbe146aaa2fc8ff19bd9fb1f8f1310c7e50d7a1465d06b18c6349cd50159"

      def install
        bin.install "chainctl_linux_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.enforce.dev/chainctl/0.1.162/chainctl_linux_arm64"
      sha256 "c593237b42072a594150f6eb364d30af1f6f951e582b7869a1c53c059a841622"

      def install
        bin.install "chainctl_linux_arm64" => "chainctl"
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
