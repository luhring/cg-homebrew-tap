# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Melange < Formula
  desc "Build apk packages using declarative pipelines"
  homepage "https://github.com/chainguard-dev/melange"
  version "0.6.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chainguard-dev/melange/releases/download/v0.6.3/melange_0.6.3_darwin_arm64.tar.gz"
      sha256 "338391dd237168fbb54fe8c21d96d94c8d2cb0d419bdda7d84fcaa0480aeb200"

      def install
        bin.install "melange" => "melange"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chainguard-dev/melange/releases/download/v0.6.3/melange_0.6.3_darwin_amd64.tar.gz"
      sha256 "ef8dd4ed4d9584bb2c7503e06d4e7743992eb0361ac795581baf79ee8aa778ef"

      def install
        bin.install "melange" => "melange"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chainguard-dev/melange/releases/download/v0.6.3/melange_0.6.3_linux_amd64.tar.gz"
      sha256 "328f441eb50ee4abb48b4b2807ef5994ade985913f41b3f7a7dab32b516850ae"

      def install
        bin.install "melange" => "melange"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chainguard-dev/melange/releases/download/v0.6.3/melange_0.6.3_linux_arm64.tar.gz"
      sha256 "a267a320d5adccf6b158fdc48675ea4725ddb37d0fe43a347d66749f8ac526e0"

      def install
        bin.install "melange" => "melange"
      end
    end
  end

  test do
    system "#{bin}/melange", "version"
  end
end
