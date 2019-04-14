class Tre < Formula
  desc "Git-friently replacement for the tree command."
  homepage "https://github.com/dduan/tre"
  url "https://github.com/dduan/tre/archive/0.1.3.tar.gz"
  sha256 "976051e994c79cc6178549b2a7c77170fba1713a0c339aa3c72c140c317045c0"
  version "0.1.3"
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
