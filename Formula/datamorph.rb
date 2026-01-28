class Datamorph < Formula
  desc "Production-grade CLI tool for orchestrating a local Modern Data Stack"
  homepage "https://github.com/datamorphai/datamorph-cli"
  version "1.0.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/datamorphai/homebrew-datamorph/releases/download/v1.0.8/datamorph-macos-arm64"
      sha256 "292fa9564044e4d6bd5543c732e0cd582132667dcc51bcc7373f6913d95f82d9"

      def install
        bin.install "datamorph-macos-arm64" => "datamorph"
      end
    end

    on_intel do
      url "https://github.com/datamorphai/homebrew-datamorph/releases/download/v1.0.8/datamorph-macos-amd64"
      sha256 "ba643f70cfff50e53647ce931c982530eb078a2cb2f12ded68069c4b0176992d"

      def install
        bin.install "datamorph-macos-amd64" => "datamorph"
      end
    end
  end

  test do
    system "#{bin}/datamorph", "--version"
  end
end
