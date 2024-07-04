class DjottoScripts < Formula
  desc "A collection of useful scripts"
  homepage "https://github.com/djotto/scripts"
  url "https://github.com/djotto/scripts/archive/refs/tags/v1.0.7.tar.gz"
  sha256 "d9f18df03b886c1747ffb31e94301a52d04ca728ad84fce5f2d88486573b787f"
  head "https://github.com/djotto/scripts.git", using: :git

  def install
    # Install the scripts
    bin.install "git-scripts/git-info"
    bin.install "git-scripts/git-seek"
    bin.install "misc/average-time"
  end

  test do
    # Run a simple test to verify the installation of git-info
    output = shell_output("#{bin}/git-info", 1)
    assert_match "Not a git repository.", output
    # Run a simple test to verify the installation of git-seek
    output = shell_output("#{bin}/git-seek", 1)
    assert_match "Usage: git seek <pattern>", output
    # Exercise average-time
    output = shell_output("#{bin}/average-time", 1)
    assert_match "Usage: ./average-time <iterations> <command>", output
  end
end
