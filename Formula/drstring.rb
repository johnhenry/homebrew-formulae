class Drstring < Formula
   version '0.2.1'
   desc "Linter, formatter for Swift."
   homepage "https://github.com/dduan/drstring"

   if OS.mac?
       url "https://github.com/dduan/DrString/releases/download/v#{version}/drstring-x86_64-apple-darwin.tar.gz"
       sha256 "ad4ec94bd36798eaa7a0a46a61c8f7ef5d113ebc0895c632f4219a3aea9488de"
   elsif OS.linux?
       url "https://github.com/dduan/DrString/archive/v#{version}.tar.gz"
       sha256 "5902902cd70232e38cb59edd366135ea8cf737f4637925d7fe7f916d5eb85f13"
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
