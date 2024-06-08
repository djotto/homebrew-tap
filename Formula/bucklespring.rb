class Bucklespring < Formula
  desc "Nostalgia bucklespring keyboard sound"
  homepage "https://github.com/zevv/bucklespring"
  url "https://github.com/zevv/bucklespring/archive/refs/tags/v1.5.1.tar.gz"
  sha256 "8d75d9809aa1f45b6f613bd6547f52a4ba9b207119775e48497c1a17fe98d541"
  license "GPL-2.0"

  depends_on "cmake" => :build
  depends_on "sdl2"
  depends_on "libconfig"
  depends_on "alure"
  depends_on "openal-soft"
  depends_on "pkg-config" => :build

  def install
    # Modify the Makefile to remove -Werror
    inreplace "Makefile", "-Wall -Werror", "-Wall"

    # Ensure pkg-config can find alure and openal
    ENV.prepend_path "PKG_CONFIG_PATH", Formula["alure"].opt_lib/"pkgconfig"
    ENV.prepend_path "PKG_CONFIG_PATH", Formula["openal-soft"].opt_lib/"pkgconfig"
    ENV.prepend "CFLAGS", "-I#{Formula["alure"].opt_include} -I#{Formula["openal-soft"].opt_include}"
    ENV.prepend "LDFLAGS", "-L#{Formula["alure"].opt_lib} -L#{Formula["openal-soft"].opt_lib}"

    # Add pkg-config calls to Makefile
    inreplace "Makefile" do |s|
      s.gsub! "LIBS    += $(shell PKG_CONFIG_PATH=$(PKG_CONFIG_PATH) pkg-config --libs alure openal)",
              "LIBS    += $(shell pkg-config --libs alure openal)"
      s.gsub! "CFLAGS  += $(shell PKG_CONFIG_PATH=$(PKG_CONFIG_PATH) pkg-config --cflags alure openal)",
              "CFLAGS  += $(shell pkg-config --cflags alure openal)"
    end

    # Compile and install the software
    system "make"
    bin.install "buckle"
    pkgshare.install "wav"
  end

  service do
    run [opt_bin/"buckle", "-p", "#{HOMEBREW_PREFIX}/share/bucklespring/wav"]
    keep_alive true
    log_path var/"log/buckle.log"
    error_log_path var/"log/buckle.log"
  end

  test do
    # Run a simple test to verify the installation.
    # buckle outputs help text on stderr.
    output = shell_output("#{bin}/buckle --help 2>&1")
    assert_match "bucklespring version 1.5.1", output
  end
end

