class Mmm < Formula
  version '0.1.4'
  desc "Your little interactive file manipulator"
  homepage "https://github.com/dduan/mmm"

  if OS.mac?
      url "https://github.com/dduan/mmm/releases/download/v#{version}/mmm-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "e3bbdd7dedc65ada8d297242e2c188c110b50917f42c9d77ec8ffc240dc7380f"
  elsif OS.linux?
      url "https://github.com/dduan/mmm/releases/download/v#{version}/mmm-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "05f613929edf1538049b8a1a305789982c9c9f503086c58070f8e1440e0c3465"
  end

  def install
    bin.install "mmm"
  end
end
