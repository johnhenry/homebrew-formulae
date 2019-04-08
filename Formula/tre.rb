class Tre < Formula
  desc "Git-friently replacement for the tree command."
  homepage "https://github.com/dduan/tre"
  url "https://github.com/dduan/tre/archive/0.1.0.tar.gz"
  sha256 "c316d6c47aab5995d6a047ef3af23af24a2d252757ae6567577a3212c52adbe4"
  version "0.1.0"
  depends_on :xcode => ["10.2", :build]

  def install
    system "make", "build"
    bin.install ".build/release/tre"
  end

  test do
    system "${bin}/tre"
  end
end
