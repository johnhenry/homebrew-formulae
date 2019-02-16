class Tre < Formula
  desc "Git-friently replacement for the tree command."
  homepage "https://github.com/dduan/tre"
  url "https://github.com/dduan/tre/archive/0.0.4.tar.gz"
  sha256 "c819e3218d11a4d34765697310901248d07b94f12b6290e2acecaef642d603e2"
  version "0.0.4"
  depends_on :xcode => ["10.1", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "${bin}/tre"
  end
end
