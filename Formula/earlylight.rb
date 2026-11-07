# Generated from the v0.5.0 release's checksums.txt.
class Earlylight < Formula
  desc "Detect emerging vulnerabilities in hosts, container images and repositories"
  homepage "https://github.com/DefectDojo/earlylight"
  version "0.5.0"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/DefectDojo/earlylight/releases/download/v0.5.0/earlylight_v0.5.0_darwin_arm64"
      sha256 "e160838634dda96029d60c2bbd0c5f775d67001bf32627dba59a0f4d063c55c5"
    end
    on_intel do
      url "https://github.com/DefectDojo/earlylight/releases/download/v0.5.0/earlylight_v0.5.0_darwin_amd64"
      sha256 "5c132128f20a8984599d6e3637b14991514f43c772bbfebf0a8e0e64a788ff42"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/DefectDojo/earlylight/releases/download/v0.5.0/earlylight_v0.5.0_linux_arm64"
      sha256 "a488ddb71d4972ae2bfda7fff0a5b4eda94990abeeae87cdbf791d3ebebaf489"
    end
    on_intel do
      url "https://github.com/DefectDojo/earlylight/releases/download/v0.5.0/earlylight_v0.5.0_linux_amd64"
      sha256 "8e9029869931d0c103e752cc6de376ebd28b319011a125085ed6b5e9d3f433c9"
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
