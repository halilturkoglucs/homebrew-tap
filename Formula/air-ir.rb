class AirIr < Formula
  desc "Application Intermediate Representation compiler and verifier"
  homepage "https://github.com/halilturkoglucs/air"
  url "https://registry.npmjs.org/@halilturkoglucs/air/-/air-0.12.0.tgz"
  sha256 "e5edc09beec6eb77d1719d690ab990c16187a47d0c0690a22ad0f225f2d73550"
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
