class Tre < Formula
  version '0.2.0'
  desc "Tree command, improved."
  homepage "https://github.com/dduan/tre"

  if OS.mac?
      url "https://github.com/dduan/tre/releases/download/v#{version}/tre-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "4ae0e7aeedb4d9d2ed2a32de796869d18273446af4cb7623fceeff22955e6ef7"
  elsif OS.linux?
      url "https://github.com/dduan/tre/releases/download/v#{version}/tre-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f9da682ba5198f91ac174cff390afe3eda014486918610e88e13747f862c859e"
  end

  def install
    bin.install "tre"
  end
end
