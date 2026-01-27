class Datamorph < Formula
  desc "Production-grade CLI tool for orchestrating a local Modern Data Stack"
  homepage "https://github.com/datamorphai/datamorph-cli"
  version "1.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/datamorphai/homebrew-datamorph/releases/download/v1.0.4/datamorph-macos-arm64"
      sha256 "4f93f7153aa1776f2d90227ecde23f78eab5fc018ef7f3182e7b63085ce248e7"

      def install
        bin.install "datamorph-macos-arm64" => "datamorph"
      end
    end

    on_intel do
      url "https://github.com/datamorphai/homebrew-datamorph/releases/download/v1.0.4/datamorph-macos-amd64"
      sha256 "0d2a4eb72a8749684963124117e3e43f9dcda1fbbb515e3c0c79028f1b1fb837"

      def install
        bin.install "datamorph-macos-amd64" => "datamorph"
      end
    end
  end

  test do
    system "#{bin}/datamorph", "--version"
  end
end
