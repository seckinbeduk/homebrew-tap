class Nib < Formula
  desc "Write git commit messages on-device with Apple Intelligence"
  homepage "https://github.com/seckinbeduk/nib"
  url "https://github.com/seckinbeduk/nib/releases/download/v0.4.1/nib-0.4.1-arm64.tar.gz"
  sha256 "7ea1b76881835fd3e9ce43a394315e7566531614e30273765a5bf8d37a6a529d"
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
