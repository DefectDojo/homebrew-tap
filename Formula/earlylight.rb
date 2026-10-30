# Generated from the v0.3.1 release's checksums.txt.
class Earlylight < Formula
  desc "Detect emerging vulnerabilities in hosts, container images and repositories"
  homepage "https://github.com/DefectDojo/earlylight"
  version "0.3.1"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/DefectDojo/earlylight/releases/download/v0.3.1/earlylight_v0.3.1_darwin_arm64"
      sha256 "36fc95d859d14bfedc87110dc4b54169e0db17e8b1e15f5ef1e2543a20267f8d"
    end
    on_intel do
      url "https://github.com/DefectDojo/earlylight/releases/download/v0.3.1/earlylight_v0.3.1_darwin_amd64"
      sha256 "ed5a24d43dd788de7539a6639a0ca044e8bb3c82b7c5545b21b024662904c917"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/DefectDojo/earlylight/releases/download/v0.3.1/earlylight_v0.3.1_linux_arm64"
      sha256 "64976ce171876aa40f142a57a85fd13cfb106a91b390bcdcea7ad599ad25ff67"
    end
    on_intel do
      url "https://github.com/DefectDojo/earlylight/releases/download/v0.3.1/earlylight_v0.3.1_linux_amd64"
      sha256 "52f1b04374213fe563281a9fb5cd44fc62636cd5a6c91d5dc754483e6296582c"
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
