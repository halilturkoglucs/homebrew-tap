class AirIr < Formula
  desc "Application Intermediate Representation compiler and verifier"
  homepage "https://github.com/halilturkoglucs/air"
  url "https://registry.npmjs.org/@halilturkoglucs/air/-/air-0.11.0.tgz"
  sha256 "70712b0648f6329fa7df8c241e04f75982e708762d6e26bf89b8235677b81c55"
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
