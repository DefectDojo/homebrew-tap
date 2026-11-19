# Generated from the v0.6.0 release's checksums.txt.
class Earlylight < Formula
  desc "Detect emerging vulnerabilities in hosts, container images and repositories"
  homepage "https://github.com/DefectDojo/earlylight"
  version "0.6.0"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/DefectDojo/earlylight/releases/download/v0.6.0/earlylight_v0.6.0_darwin_arm64"
      sha256 "4ea4dfe0d486504d93b04a6a4cc7c6fb52686ab54f1a754513459493ba545e7b"
    end
    on_intel do
      url "https://github.com/DefectDojo/earlylight/releases/download/v0.6.0/earlylight_v0.6.0_darwin_amd64"
      sha256 "b9ceb3ba4598711662af494b8048f172e3c4b7c71455a255f944ba23e67e3af3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/DefectDojo/earlylight/releases/download/v0.6.0/earlylight_v0.6.0_linux_arm64"
      sha256 "9e2fc72ffc47c5363d10e77b46e056cdead1f9c57ea120302cc8f5531aa08c26"
    end
    on_intel do
      url "https://github.com/DefectDojo/earlylight/releases/download/v0.6.0/earlylight_v0.6.0_linux_amd64"
      sha256 "922715bf1dded88c664687e3c3945be2125e960fa5f3b65a8fd99a59555c9f1d"
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
