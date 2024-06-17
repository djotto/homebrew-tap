class Mp3guessenc < Formula
  desc "Utility to analysze audio mpeg files and detect the encoder used (when layer III)"
  homepage "https://mp3guessenc.sourceforge.io/"
  url "https://master.dl.sourceforge.net/project/mp3guessenc/mp3guessenc-0.27/mp3guessenc-0.27.6beta.tar.gz?viasf=1"
  version "0.27.6beta"
  sha256 "3562d6a0bda623411d2655844dbb55650e9e3d8612dbb02743869ef38cafbe4a"
  license "LGPL-2.1"

  def install
    system "make"
    # Install the binary
    bin.install "mp3guessenc"
  end

  test do
    # Run a simple test to verify the installation.
    # buckle outputs help text on stderr.
    output = shell_output("#{bin}/mp3guessenc -v")
    assert_match "mp3guessenc-0.27.6 beta", output
  end
end

