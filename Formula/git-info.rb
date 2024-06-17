class GitInfo < Formula
  desc "Git script to dump info about a repo in a human-readable format"
  homepage "https://github.com/djotto/scripts"
  url "https://github.com/djotto/scripts/releases/download/v1.0.0/git-info.tar.gz"
  version "1.0.0"
  sha256 "ef61204da217c7972360411d9fdcd8ba3ce8d3e7c5033dee424bf5143f89ebc0"
  license "MIT"

  def install
    # Install the script
    bin.install "git-info"
  end

  test do
    # Run a simple test to verify the installation.
    # buckle outputs help text on stderr.
    output = shell_output("#{bin}/git-info")
    assert_match "Not a git repository.", output
  end
end

