class Datamorph < Formula
  desc "Production-grade CLI tool for orchestrating a local Modern Data Stack"
  homepage "https://github.com/datamorphai/datamorph-cli"
  version "1.0.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/datamorphai/homebrew-datamorph/releases/download/v1.0.9/datamorph-macos-arm64"
      sha256 "c5a3fe2f20e22b00826b18467b59caf63ac8a7a25ed1ca4bb60d08c6765803fe"

      def install
        bin.install "datamorph-macos-arm64" => "datamorph"
      end
    end

    on_intel do
      url "https://github.com/datamorphai/homebrew-datamorph/releases/download/v1.0.9/datamorph-macos-amd64"
      sha256 "6f0ef417eeb69935f9c7f55b2f9f7bca1b5717bbe56fed1d649411da9e4e562c"

      def install
        bin.install "datamorph-macos-amd64" => "datamorph"
      end
    end
  end

  test do
    system "#{bin}/datamorph", "--version"
  end
end
