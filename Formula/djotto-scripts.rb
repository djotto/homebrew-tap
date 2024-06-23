class DjottoScripts < Formula
  desc "A collection of useful scripts"
  homepage "https://github.com/djotto/scripts"
  url "https://github.com/djotto/scripts/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "99af5ca308b424fe4422946e5f0e964816a79268519fa9d75315f830e3819ea3"
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
