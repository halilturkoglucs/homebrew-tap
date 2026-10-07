class AirIr < Formula
  desc "Application Intermediate Representation compiler and verifier"
  homepage "https://github.com/halilturkoglucs/air"
  url "https://registry.npmjs.org/@halilturkoglucs/air/-/air-0.9.1.tgz"
  sha256 "6d2ad8f769498d41c9892dc5592a394fbb12f56b29f8bb45b456fb7668ccfbf7"
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
