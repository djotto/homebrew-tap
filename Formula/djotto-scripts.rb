class DjottoScripts < Formula
  desc "A collection of useful scripts"
  homepage "https://github.com/djotto/scripts"
  url "https://github.com/djotto/scripts/archive/refs/tags/v1.0.6.tar.gz"
  sha256 "30152be7055eb682803c0ab73fd82d6efbceb14aed909636f1cf88d6746b03fa"
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
