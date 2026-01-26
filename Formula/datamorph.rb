class Datamorph < Formula
  desc "Production-grade CLI tool for orchestrating a local Modern Data Stack"
  homepage "https://github.com/datamorphai/datamorph-cli"
  url "https://github.com/datamorphai/datamorph-cli/releases/download/v1.0.1/datamorph-macos-amd64"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  version "1.0.1"

  def install
    bin.install "datamorph-macos-amd64" => "datamorph"
  end

  test do
    system "#{bin}/datamorph", "--version"
  end
end
