# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.370"

  on_macos do
    on_intel do
      url "https://dl.enforce.dev/chainctl/0.1.370/chainctl_darwin_x86_64"
      sha256 "67799e2f71abf1d94d3b0974d13b83aa7877c106c849faf64dce07f2c4a372c3"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    on_arm do
      url "https://dl.enforce.dev/chainctl/0.1.370/chainctl_darwin_arm64"
      sha256 "4abccc3cf0c21ad09384a694889c4aed80bd56f8b6f37dc1299431b4e7b5e48d"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.1.370/chainctl_linux_x86_64"
        sha256 "cebd229347ba2bc52109aa690daef910158803af72de7959d82651dccab98c66"

        def install
          bin.install "chainctl_linux_x86_64" => "chainctl"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.1.370/chainctl_linux_arm64"
        sha256 "74e268b9ef23397cba7c12aaecfeba7b8c0b811885adbb9989232689426e23a8"

        def install
          bin.install "chainctl_linux_arm64" => "chainctl"
        end
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
