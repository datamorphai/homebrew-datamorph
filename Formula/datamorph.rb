class Datamorph < Formula
  desc "Production-grade CLI tool for orchestrating a local Modern Data Stack"
  homepage "https://github.com/datamorphai/datamorph-cli"
  version "1.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/datamorphai/homebrew-datamorph/releases/download/v1.0.5/datamorph-macos-arm64"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

      def install
        bin.install "datamorph-macos-arm64" => "datamorph"
      end
    end

    on_intel do
      url "https://github.com/datamorphai/homebrew-datamorph/releases/download/v1.0.5/datamorph-macos-amd64"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

      def install
        bin.install "datamorph-macos-amd64" => "datamorph"
      end
    end
  end

  test do
    system "#{bin}/datamorph", "--version"
  end
end
