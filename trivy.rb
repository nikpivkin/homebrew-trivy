# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Trivy < Formula
  desc "Scanner for vulnerabilities in container images, file systems, and Git repositories, as well as for configuration issues"
  homepage "https://github.com/aquasecurity/trivy"
  version "0.30.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aquasecurity/trivy/releases/download/v0.30.1/trivy_0.30.1_macOS-ARM64.tar.gz"
      sha256 "7ae24c6e684ba6816bcd12b32fe8a5675fec872689f97f00a228f5d76ce318eb"

      def install
        bin.install "trivy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aquasecurity/trivy/releases/download/v0.30.1/trivy_0.30.1_macOS-64bit.tar.gz"
      sha256 "652b5b10b7ee02f471ffe1d2b1dfb50943d597345f43180c3a4a076c4dce3fb3"

      def install
        bin.install "trivy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aquasecurity/trivy/releases/download/v0.30.1/trivy_0.30.1_Linux-64bit.tar.gz"
      sha256 "1e5b74696a395735a29c6f92f559be20a96ac0c985dab82b4c4586111daacd15"

      def install
        bin.install "trivy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aquasecurity/trivy/releases/download/v0.30.1/trivy_0.30.1_Linux-ARM64.tar.gz"
      sha256 "a769f9e49f299876e7aa5e2c42e33fb8c39b27cdee298d10c1d518122f4c7f59"

      def install
        bin.install "trivy"
      end
    end
  end

  test do
    system "#{bin}/trivy", "--version"
  end
end
