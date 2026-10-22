class AirIr < Formula
  desc "Application Intermediate Representation compiler and verifier"
  homepage "https://github.com/halilturkoglucs/air"
  url "https://registry.npmjs.org/@halilturkoglucs/air/-/air-0.17.0.tgz"
  sha256 "a1e5a7c6c051096c91a6c12a2d84a78b839c2b0f80d96288040fff83490f1e6a"
  license "Apache-2.0"

  depends_on "node"

  conflicts_with "air", because: "both install an `air` executable"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "AIR verification and compiler toolkit #{version}", shell_output("#{bin}/air --help")
  end
end
