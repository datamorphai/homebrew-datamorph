class Datamorph < Formula
  desc "Production-grade CLI tool for orchestrating a local Modern Data Stack"
  homepage "https://github.com/datamorphai/datamorph-cli"
  version "1.0.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/datamorphai/homebrew-datamorph/releases/download/v1.0.7/datamorph-macos-arm64"
      sha256 "346a861604f6dfe78a0c4aa878b8169af42e4af6b81bd9d596fa1a8339e50465"

      def install
        bin.install "datamorph-macos-arm64" => "datamorph"
      end
    end

    on_intel do
      url "https://github.com/datamorphai/homebrew-datamorph/releases/download/v1.0.7/datamorph-macos-amd64"
      sha256 "95a437d712f2864faac207d682c360064685c63bc17a02f958243c5751c3ea19"

      def install
        bin.install "datamorph-macos-amd64" => "datamorph"
      end
    end
  end

  test do
    system "#{bin}/datamorph", "--version"
  end
end
