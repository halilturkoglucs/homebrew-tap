class AirIr < Formula
  desc "Application Intermediate Representation compiler and verifier"
  homepage "https://github.com/halilturkoglucs/air"
  url "https://registry.npmjs.org/@halilturkoglucs/air/-/air-0.9.2.tgz"
  sha256 "6243ba66e3b6dd77340561d6eede5441825ef36979c260e7d3d47ea0d95a5f3d"
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
