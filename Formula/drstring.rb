class Drstring < Formula
   version '0.3.4'
   desc "Linter, formatter for Swift docstrings."
   homepage "https://github.com/dduan/drstring"

   if OS.mac?
       url "https://github.com/dduan/DrString/releases/download/v#{version}/drstring-x86_64-apple-darwin.tar.gz"
       sha256 "f93ec1f818ee94492135bacacb95f29cd2473ef0222c731c5d6722e31b5be7b5"
   elsif OS.linux?
       url "https://github.com/dduan/DrString/archive/v#{version}.tar.gz"
       sha256 "7bef5770423da09f267004104496638966f58d6b6fdf9d4edeb593487be1e489"
   end

   def install
       if OS.mac?
         bin.install "bin/drstring"
         lib.install "lib/lib_InternalSwiftSyntaxParser.dylib"
       elsif OS.linux?
         system "make", "build"
         bin.install ".build/release/drstring"
       end
   end
 end
