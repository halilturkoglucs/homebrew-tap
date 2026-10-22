class AirIr < Formula
  desc "Application Intermediate Representation compiler and verifier"
  homepage "https://github.com/halilturkoglucs/air"
  url "https://registry.npmjs.org/@halilturkoglucs/air/-/air-0.16.0.tgz"
  sha256 "2481fcff3de173ecb4a4a9e7144dd058c26dc5b8c27c48eeec9b250d5a2cd9d9"
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
