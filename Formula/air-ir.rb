class AirIr < Formula
  desc "Application Intermediate Representation compiler and verifier"
  homepage "https://github.com/halilturkoglucs/air"
  url "https://registry.npmjs.org/@halilturkoglucs/air/-/air-0.14.0.tgz"
  sha256 "c134f40675bc09919820c8045c2e96e0ac43c1740d3d44586b600fbcea060e3b"
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
