class Nib < Formula
  desc "Write git commit messages on-device with Apple Intelligence"
  homepage "https://github.com/seckinbeduk/nib"
  url "https://github.com/seckinbeduk/nib/releases/download/v0.5.1/nib-0.5.1-arm64.tar.gz"
  sha256 "ab48af5bd8de79ffe4b48e4e8c0ea5f3834f30616bc7c969663f417ef6b41c88"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :golden_gate # macOS 27

  def install
    bin.install "nib"
    bin.install_symlink "nib" => "git-nib"
    man1.install "nib.1"
    man1.install_symlink "nib.1" => "git-nib.1"
  end

  def caveats
    <<~EOS
      Commit with `git nib`.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nib --version")
    assert_match version.to_s, shell_output("#{bin}/git-nib --version")
  end
end
