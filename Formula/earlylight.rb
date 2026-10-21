# Generated from the v0.2.0 release's checksums.txt.
class Earlylight < Formula
  desc "Detect emerging vulnerabilities in hosts, container images and repositories"
  homepage "https://github.com/DefectDojo/earlylight"
  version "0.2.0"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/DefectDojo/earlylight/releases/download/v0.2.0/earlylight_v0.2.0_darwin_arm64"
      sha256 "a4f5d13f296cb728a5d6be19ab7ee606155dd8fb36f99014bc8dc288ae3c4d69"
    end
    on_intel do
      url "https://github.com/DefectDojo/earlylight/releases/download/v0.2.0/earlylight_v0.2.0_darwin_amd64"
      sha256 "ce2a72834e164e810e0806e52063cad62f98a0a48f1988c6a44be2dd07d6043e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/DefectDojo/earlylight/releases/download/v0.2.0/earlylight_v0.2.0_linux_arm64"
      sha256 "051f787ac9c66de032bf0c72f7b5a956058528bbd16d81c1b4b4babdc08f20df"
    end
    on_intel do
      url "https://github.com/DefectDojo/earlylight/releases/download/v0.2.0/earlylight_v0.2.0_linux_amd64"
      sha256 "8995ef9e12db1d0ff59c3f9fc4ee549b491cf9eaa6c083cdbf17786beb22e36d"
    end
  end

  def install
    bin.install Dir["earlylight_*"].first => "earlylight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/earlylight version")
    assert_match "php2shell", shell_output("#{bin}/earlylight detectors")
  end
end
