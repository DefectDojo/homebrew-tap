# Generated from the v0.2.1 release's checksums.txt.
class Earlylight < Formula
  desc "Detect emerging vulnerabilities in hosts, container images and repositories"
  homepage "https://github.com/DefectDojo/earlylight"
  version "0.2.1"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/DefectDojo/earlylight/releases/download/v0.2.1/earlylight_v0.2.1_darwin_arm64"
      sha256 "150478b00a1b75c61bbf2e94bd8776013310de49c1e8143555cdbe45778f259f"
    end
    on_intel do
      url "https://github.com/DefectDojo/earlylight/releases/download/v0.2.1/earlylight_v0.2.1_darwin_amd64"
      sha256 "380e42b0f6541ac855a20f2ecf55e9acf948cd4e1cdabff9dd9617b1c139df43"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/DefectDojo/earlylight/releases/download/v0.2.1/earlylight_v0.2.1_linux_arm64"
      sha256 "d26fe767f0852a93ee6e59c4a46421e25578e5d3a1b69cf0593ccf5ab0192ae3"
    end
    on_intel do
      url "https://github.com/DefectDojo/earlylight/releases/download/v0.2.1/earlylight_v0.2.1_linux_amd64"
      sha256 "2aad055f0fe6bf0f032d0c3d3355ee4b359029a0c37caa27428d962df3bde568"
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
