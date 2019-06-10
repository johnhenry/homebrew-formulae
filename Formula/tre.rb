class Tre < Formula
  version '0.2.1'
  desc "Tree command, improved."
  homepage "https://github.com/dduan/tre"

  if OS.mac?
      url "https://github.com/dduan/tre/releases/download/v#{version}/tre-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "e82d67a01922c38fcabb6972e1f33300894df85d737e8d9b1b1c0012ff213662"
  elsif OS.linux?
      url "https://github.com/dduan/tre/releases/download/v#{version}/tre-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4c5a903d3ae42f776b9b0dbf92ef6b40812ab2bc429c870e0ef2321d2af56055"
  end

  def install
    bin.install "tre"
  end
end
