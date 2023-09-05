class Atftp < Formula
  homepage "https://sourceforge.net/projects/atftp/"
  url "https://nav.dl.sourceforge.net/project/atftp/atftp-0.8.0.tar.gz"
  sha256 "c90a4af49559bbc4136fbf240ce04d1f3196ea7b"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "sshpass"
  end
end