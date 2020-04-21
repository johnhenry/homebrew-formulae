class Tre < Formula
  version '0.2.3'
  desc "Tree command, improved."
  homepage "https://github.com/dduan/tre"

  if OS.mac?
      url "https://github.com/dduan/tre/releases/download/v#{version}/tre-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "5d90cc748278315f74e6f9ee5732d0300f096de2cc7b9221c48b16dd8178cdab"
  elsif OS.linux?
      url "https://github.com/dduan/tre/releases/download/v#{version}/tre-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b28abe3b8fdd03255f0b0632cf688cd4ad7228fb790bbc604c5bd57a101d59d8"
  end

  def install
    bin.install "tre"
  end
end
