class AirIr < Formula
  desc "Application Intermediate Representation compiler and verifier"
  homepage "https://github.com/halilturkoglucs/air"
  url "https://registry.npmjs.org/@halilturkoglucs/air/-/air-0.10.0.tgz"
  sha256 "30bd5c6c6de285b1538e8b12fd1e9ba2881207c123078195e84554e6bb066307"
  license "Apache-2.0"

  depends_on "node"

  conflicts_with "air", because: "both install an `air` executable"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "AIR compiler toolkit #{version}", shell_output("#{bin}/air --help")
  end
end
