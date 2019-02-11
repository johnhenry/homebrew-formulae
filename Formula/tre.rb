class Tre < Formula
  desc "Git-friently replacement for the tree command."
  homepage "https://github.com/dduan/tre"
  url "https://github.com/dduan/tre/archive/0.0.2.tar.gz"
  sha256 "0093433db9101f5442c97b578ea8926a33639e82357024a9f89f5775ae104963"
  version "0.0.2"
  depends_on :xcode => ["10.1", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "${bin}/tre"
  end
end
