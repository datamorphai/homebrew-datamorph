class Datamorph < Formula
  desc "Production-grade CLI tool for orchestrating a local Modern Data Stack"
  homepage "https://github.com/datamorphai/homebrew-datamorph"
  version "1.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/datamorphai/homebrew-datamorph/releases/download/v1.0.4/datamorph-macos-arm64"
      sha256 "346a861604f6dfe78a0c4aa878b8169af42e4af6b81bd9d596fa1a8339e50465"

      def install
        bin.install "datamorph-macos-arm64" => "datamorph"
      end
    end

    on_intel do
      url "https://github.com/datamorphai/homebrew-datamorph/releases/download/v1.0.4/datamorph-macos-amd64"
      sha256 "95a437d712f2864faac207d682c360064685c63bc17a02f958243c5751c3ea19"

      def install
        bin.install "datamorph-macos-amd64" => "datamorph"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/datamorphai/homebrew-datamorph/releases/download/v1.0.4/datamorph-linux-arm64"
      sha256 "06f13e64aa9bede8681058f653cda96c214ae5527f658b17522eebe18e4df645"

      def install
        bin.install "datamorph-linux-arm64" => "datamorph"
      end
    end

    on_intel do
      url "https://github.com/datamorphai/homebrew-datamorph/releases/download/v1.0.4/datamorph-linux-amd64"
      sha256 "a6e115489c5d8e1a6403a2bdaab37933250c39dc4a9d68f6c26c1a0ec9345dda"

      def install
        bin.install "datamorph-linux-amd64" => "datamorph"
      end
    end
  end

  test do
    system "#{bin}/datamorph", "--version"
  end
end