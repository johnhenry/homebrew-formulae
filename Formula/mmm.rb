class Mmm < Formula
  version '0.1.3'
  desc "Your little interactive file manipulator"
  homepage "https://github.com/dduan/mmm"

  if OS.mac?
      url "https://github.com/dduan/mmm/releases/download/v#{version}/mmm-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "b2270d405828fa764c9cadd9006e38d586c81edce301d6560d5caa0a30325b83"
  elsif OS.linux?
      url "https://github.com/dduan/mmm/releases/download/v#{version}/mmm-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6113fb0f99eadfde444300bb122a64898d0c05198020e7306cd586a58b3b344e"
  end

  def install
    bin.install "mmm"
  end
end
