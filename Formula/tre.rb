class Tre < Formula
  desc "Git-friently replacement for the tree command."
  homepage "https://github.com/dduan/tre"
  url "https://github.com/dduan/tre/archive/0.1.1.tar.gz"
  sha256 "8519b566646fedfc86a51f06a9de906a92ca0549a5a926d42881c8cd8b03dc4c"
  version "0.1.1"
  depends_on :xcode => ["10.2", :build]

  def install
    system "make", "build"
    bin.install ".build/release/tre"
  end

  test do
    system "${bin}/tre"
  end
end
