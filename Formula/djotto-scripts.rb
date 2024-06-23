class DjottoScripts < Formula
  desc "A collection of useful scripts"
  homepage "https://github.com/djotto/scripts"
  head "https://github.com/djotto/scripts.git", using: :git

  # Use a livecheck block to fetch the latest tag for versioning
  livecheck do
    url :head
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  def install
    # Fetch the latest tag
    latest_tag = `git describe --tags $(git rev-list --tags --max-count=1)`.strip
    odie "Unable to fetch latest tag" if latest_tag.empty?
    version latest_tag

    # Install the scripts
    bin.install "git-scripts/git-info"
    bin.install "git-scripts/git-seek"
  end

  test do
    # Run a simple test to verify the installation of git-info
    output = shell_output("#{bin}/git-info")
    assert_match "Not a git repository.", outputa
    # Run a simple test to verify the installation of git-seek
    output = shell_output("#{bin}/git-seek", 1)
    assert_match "Usage: git seek <pattern>", output
  end
end

