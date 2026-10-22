class AirIr < Formula
  desc "Application Intermediate Representation compiler and verifier"
  homepage "https://github.com/halilturkoglucs/air"
  url "https://registry.npmjs.org/@halilturkoglucs/air/-/air-0.18.0.tgz"
  sha256 "da660fc55766cc32f57d5b10c17608d6a30084294540c272450b060644e69bab"
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
