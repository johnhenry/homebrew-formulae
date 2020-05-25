class Tre < Formula
  version '0.3.0'
  desc "Tree command, improved."
  homepage "https://github.com/dduan/tre"

  if OS.mac?
      url "https://github.com/dduan/tre/releases/download/#{version}/tre-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "0e15f7aeb3385c4bd6bfc63bbc9a964dc93a8e2e3b66ef5d950ca70c1831d1e0"
  elsif OS.linux?
      url "https://github.com/dduan/tre/releases/download/v#{version}/tre-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1c9f76f2cd6962d43a94e89006f386c1d06f1d7e7c0b6d47e91f4e738feffb4a"
  end

  def install
    bin.install "tre"
  end
end
