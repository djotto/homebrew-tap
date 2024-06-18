class GitSeek < Formula
  desc "Git script to checkout branches based on partial names"
  homepage "https://github.com/djotto/scripts"
  url "https://github.com/djotto/scripts/releases/download/v1.0.1/git-seek.tar.gz"
  version "1.0.1"
  sha256 "f06a2605fcaa07a6b4fbc439cd0137e1144198fd72f1a7b4372cb9d6c5f6e6ba"
  license "MIT"

  def install
    # Install the script
    bin.install "git-seek"
  end

  test do
    # Run a simple test to verify the installation.
    output = shell_output("#{bin}/git-seek", 1)
    assert_match "Usage: git seek <pattern>", output
  end
end

