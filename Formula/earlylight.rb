# Generated from the v0.3.0 release's checksums.txt.
class Earlylight < Formula
  desc "Detect emerging vulnerabilities in hosts, container images and repositories"
  homepage "https://github.com/DefectDojo/earlylight"
  version "0.3.0"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/DefectDojo/earlylight/releases/download/v0.3.0/earlylight_v0.3.0_darwin_arm64"
      sha256 "efa8bb5b800c8a3386f7678f779c54d48f0094b997cb0182ce6fe3396c280a0e"
    end
    on_intel do
      url "https://github.com/DefectDojo/earlylight/releases/download/v0.3.0/earlylight_v0.3.0_darwin_amd64"
      sha256 "9fbad4069825635fef25d964b6c91b702dbd92e4f4111c149275af92edf92861"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/DefectDojo/earlylight/releases/download/v0.3.0/earlylight_v0.3.0_linux_arm64"
      sha256 "40128b9537e9165fdd54df5f0b527a4757ef33dfbafd0ebbdab6bdeef7af0227"
    end
    on_intel do
      url "https://github.com/DefectDojo/earlylight/releases/download/v0.3.0/earlylight_v0.3.0_linux_amd64"
      sha256 "6d9baaef24cf2f8b4ca9eb6170a77e0f3290adfae9eaf96fc8ba407e0056b254"
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
