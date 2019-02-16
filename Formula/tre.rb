class Tre < Formula
  desc "Git-friently replacement for the tree command."
  homepage "https://github.com/dduan/tre"
  url "https://github.com/dduan/tre/archive/0.0.3.tar.gz"
  sha256 "23bfda8b10a0c7e638485225e5934c0ee4bed87896236c1df570d26c4274d4cc"
  version "0.0.3"
  depends_on :xcode => ["10.1", :build]

  def install
    system "make", "build"
    bin.install ".build/release/tre"
  end

  test do
    system "${bin}/tre"
  end
end
