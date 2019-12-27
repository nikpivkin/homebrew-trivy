# This file was generated by GoReleaser. DO NOT EDIT.
class Trivy < Formula
  desc ""
  homepage "https://github.com/aquasecurity/trivy"
  version "0.4.0"

  if OS.mac?
    url "https://github.com/aquasecurity/trivy/releases/download/v0.4.0/trivy_0.4.0_macOS-64bit.tar.gz"
    sha256 "58200560cadedf1d5f591918534f3558e1931c75e96b9d8e800642e1f1f5dcca"
  elsif OS.linux?
    url "https://github.com/aquasecurity/trivy/releases/download/v0.4.0/trivy_0.4.0_Linux-64bit.tar.gz"
    sha256 "36e41458d7ab4f8e94d33597f6f5a3c69f022dff577bad06494c3d45e585ed35"
  end
  
  depends_on "rpm"

  def install
    bin.install "trivy"
  end

  test do
    system "#{bin}/program --version"
  end
end
