class Mewgit < Formula
  desc "TUI git client with a commit graph and GitHub integration"
  homepage "https://github.com/yshrsmz/mewgit"
  license any_of: ["MIT", "Apache-2.0"]

  # on_macos / on_linux の中に url と sha256 は置けない（brew audit --strict が断る）
  if OS.mac?
    url "https://github.com/yshrsmz/mewgit/releases/download/v0.1.3/mewgit-v0.1.3-aarch64-apple-darwin.tar.gz"
    sha256 "18cd0348c3c5d278927ea6c9e990e7eeb1afb48806e961e50faa0efcc7b3024a"
  else
    url "https://github.com/yshrsmz/mewgit/releases/download/v0.1.3/mewgit-v0.1.3-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "e0e015afbf42e144a520d8404287d326f16b346e74d1e4d5b922c6257bbaa522"
  end

  depends_on arch: :arm64

  def install
    bin.install "mewgit"
  end

  test do
    assert_equal "mewgit #{version}", shell_output("#{bin}/mewgit --version").strip
  end
end
