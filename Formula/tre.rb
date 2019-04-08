class Tre < Formula
  desc "Git-friently replacement for the tree command."
  homepage "https://github.com/dduan/tre"
  url "https://github.com/dduan/tre/archive/0.1.2.tar.gz"
  sha256 "a4dbf623a7209a543abff6044d6c4f3738245679d8374a6144dbb494b8d3da4f"
  version "0.1.2"
  depends_on :xcode => ["10.2", :build]

  def install
    system "make", "build"
    bin.install ".build/release/tre"
  end

  test do
    system "${bin}/tre"
  end
end
