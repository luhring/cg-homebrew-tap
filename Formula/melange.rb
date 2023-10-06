# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Melange < Formula
  desc "Build apk packages using declarative pipelines"
  homepage "https://github.com/chainguard-dev/melange"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chainguard-dev/melange/releases/download/v0.5.0/melange_0.5.0_darwin_amd64.tar.gz"
      sha256 "9d2f6e4b2642b22af0faf00a947bc58ebc0d43d62d60117d779f9f24e8f93677"

      def install
        bin.install "melange" => "melange"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chainguard-dev/melange/releases/download/v0.5.0/melange_0.5.0_darwin_arm64.tar.gz"
      sha256 "09612f9506b29b430d2e78ae2bbd075897e9304ef1fdf2d4ea68f50618c7c4ff"

      def install
        bin.install "melange" => "melange"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chainguard-dev/melange/releases/download/v0.5.0/melange_0.5.0_linux_arm64.tar.gz"
      sha256 "9e402e74568c9f6f5d154f0db9103e95365903af7e00c0680f3b9feb97dce518"

      def install
        bin.install "melange" => "melange"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chainguard-dev/melange/releases/download/v0.5.0/melange_0.5.0_linux_amd64.tar.gz"
      sha256 "789c2cdf4071f66b833e3e6773f18d423a15c15fc50fd9eab34c8b943e2ef4ac"

      def install
        bin.install "melange" => "melange"
      end
    end
  end

  test do
    system "#{bin}/melange", "version"
  end
end
