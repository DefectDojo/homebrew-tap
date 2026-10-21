#!/usr/bin/env python3
"""Write Formula/earlylight.rb for a release, from its checksums.txt."""
import sys, urllib.request
v = sys.argv[1]
base = f"https://github.com/DefectDojo/earlylight/releases/download/{v}"
sums = {}
for line in urllib.request.urlopen(base + "/checksums.txt").read().decode().splitlines():
    h, f = line.split()
    sums[f] = h
def u(os_, arch):
    f = f"earlylight_{v}_{os_}_{arch}"
    return f'url "{base}/{f}"\n      sha256 "{sums[f]}"'
print(f'''# Generated from the {v} release's checksums.txt.
class Earlylight < Formula
  desc "Detect emerging vulnerabilities in hosts, container images and repositories"
  homepage "https://github.com/DefectDojo/earlylight"
  version "{v.lstrip("v")}"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      {u("darwin", "arm64")}
    end
    on_intel do
      {u("darwin", "amd64")}
    end
  end
  on_linux do
    on_arm do
      {u("linux", "arm64")}
    end
    on_intel do
      {u("linux", "amd64")}
    end
  end

  def install
    bin.install Dir["earlylight_*"].first => "earlylight"
  end

  test do
    assert_match version.to_s, shell_output("#{{bin}}/earlylight version")
    assert_match "php2shell", shell_output("#{{bin}}/earlylight detectors")
  end
end''')
