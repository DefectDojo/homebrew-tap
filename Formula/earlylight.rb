# Generated from the v0.4.0 release's checksums.txt.
class Earlylight < Formula
  desc "Detect emerging vulnerabilities in hosts, container images and repositories"
  homepage "https://github.com/DefectDojo/earlylight"
  version "0.4.0"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/DefectDojo/earlylight/releases/download/v0.4.0/earlylight_v0.4.0_darwin_arm64"
      sha256 "a60abc1cd4949f850635a7b240f14ee032ddcc4acdef52b49783ee8125e53727"
    end
    on_intel do
      url "https://github.com/DefectDojo/earlylight/releases/download/v0.4.0/earlylight_v0.4.0_darwin_amd64"
      sha256 "8aabe5dd412af0e4e1eda0a652420d2096b6d352593f1f77499a628d73f72e8e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/DefectDojo/earlylight/releases/download/v0.4.0/earlylight_v0.4.0_linux_arm64"
      sha256 "f8707f413020ddc5b4bddd205c416fabfd99c83a99ce21d599d19ac2c422da8e"
    end
    on_intel do
      url "https://github.com/DefectDojo/earlylight/releases/download/v0.4.0/earlylight_v0.4.0_linux_amd64"
      sha256 "a0e740899d7484f0fcee43b756b3373913f569ba8998355deaf51f3e29018cb8"
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
