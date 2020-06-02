# This file was generated by GoReleaser. DO NOT EDIT.
class Trivy < Formula
  desc ""
  homepage "https://github.com/aquasecurity/trivy"
  version "0.9.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/aquasecurity/trivy/releases/download/v0.9.0/trivy_0.9.0_macOS-64bit.tar.gz"
    sha256 "2568355aaf873dca5e5016a9464051f65ba63226ff9cb6d97f871218968830f1"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/aquasecurity/trivy/releases/download/v0.9.0/trivy_0.9.0_Linux-64bit.tar.gz"
      sha256 "af6bdfc547d0e866616894bb2d444354ba9d8eccba7e90c46babe37167f1b80a"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/aquasecurity/trivy/releases/download/v0.9.0/trivy_0.9.0_Linux-ARM64.tar.gz"
        sha256 "ee607a8590999bf61eae60c119a28d5302fe595082e908c93e5a2e47e9dcade4"
      else
      end
    end
  end
  
  depends_on "rpm"

  def install
    bin.install "trivy"
  end

  test do
    system "#{bin}/program --version"
  end
end
