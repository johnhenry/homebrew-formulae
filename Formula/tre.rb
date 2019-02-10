class Tre < Formula
  desc "Git-friently replacement for the tree command."
  homepage "https://github.com/dduan/tre"
  url "https://github.com/dduan/tre/archive/0.0.1.tar.gz"
  sha256 "6415fcb3d40c1b18ee5fe70449fc7cfc457ee907a68bf1a80c3e3e331c78a51d"
  version "0.0.1"
  depends_on :xcode => ["10.1", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "${bin}/tre"
  end
end
