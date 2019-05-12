class Tre < Formula
  desc "Git-friently replacement for the tree command."
  homepage "https://github.com/dduan/tre"
  url "https://github.com/dduan/tre/archive/0.1.4.tar.gz"
  sha256 "301396081d310334c76ae8795f43295e8b13fec298a06e29891a3feb2942e124"
  version "0.1.4"
  depends_on :xcode => ["10.2", :build]
  head "https://github.com/dduan/tre.git", :shallow => false

  def install
    system "make", "build"
    bin.install ".build/release/tre"
  end

  test do
    system "${bin}/tre"
  end
end
