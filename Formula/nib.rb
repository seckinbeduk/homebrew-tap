class Nib < Formula
  desc "Write git commit messages on-device with Apple Intelligence"
  homepage "https://github.com/seckinbeduk/nib"
  url "https://github.com/seckinbeduk/nib/releases/download/v0.4.0/nib-0.4.0-arm64.tar.gz"
  sha256 "a90514b7020e4c58f24fe6fa012329a9fef2dad47e32dc3a2a867f1c6eec422c"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :golden_gate # macOS 27

  def install
    bin.install "nib"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nib --version")
  end
end
