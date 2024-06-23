class DjottoScripts < Formula
  desc "A collection of useful scripts"
  homepage "https://github.com/djotto/scripts"
  url "https://github.com/djotto/scripts/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "48472a458d1c63a24a49e3009c8fd0c0a83af9d298e84e9ebcafd77a95e6f473"
  head "https://github.com/djotto/scripts.git", using: :git

  def install
    # Install the scripts
    bin.install "git-scripts/git-info"
    bin.install "git-scripts/git-seek"
  end

  test do
    # Run a simple test to verify the installation of git-info
    output = shell_output("#{bin}/git-info", 1)
    assert_match "Not a git repository.", output
    # Run a simple test to verify the installation of git-seek
    output = shell_output("#{bin}/git-seek", 1)
    assert_match "Usage: git seek <pattern>", output
  end
end
