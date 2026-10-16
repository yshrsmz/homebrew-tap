class Mewgit < Formula
  desc "TUI git client with a commit graph and GitHub integration"
  homepage "https://github.com/yshrsmz/mewgit"
  license any_of: ["MIT", "Apache-2.0"]

  # on_macos / on_linux の中に url と sha256 は置けない（brew audit --strict が断る）
  if OS.mac?
    url "https://github.com/yshrsmz/mewgit/releases/download/v0.1.1/mewgit-v0.1.1-aarch64-apple-darwin.tar.gz"
    sha256 "aeaf12a9e51668798be916ebf351cdc78926dd903730d5ca463b3af9f123763f"
  else
    url "https://github.com/yshrsmz/mewgit/releases/download/v0.1.1/mewgit-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "8d8ae8f2af04e04c13855ee9808ccec06329b92cf60fa234d938997ad7308217"
  end

  depends_on arch: :arm64

  def install
    bin.install "mewgit"
  end

  test do
    assert_equal "mewgit #{version}", shell_output("#{bin}/mewgit --version").strip
  end
end
