class Mmm < Formula
  version '0.1.2'
  desc "Your little interactive file manipulator"
  homepage "https://github.com/dduan/mmm"

  if OS.mac?
      url "https://github.com/dduan/mmm/releases/download/v#{version}/mmm-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "3b29aa98635c813062b526308cc6ee02e7d090cc6b3458ab70b6d3c90956bc76"
  elsif OS.linux?
      url "https://github.com/dduan/mmm/releases/download/v#{version}/mmm-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b031ee757794f8dd69cb3d29ecde72e0570b1db330fd54bef001b0fcee56994c"
  end

  def install
    bin.install "mmm"
  end
end
