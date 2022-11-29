class DoorsCLIUnix < Formula
  desc "D O O R S CLI"
  homepage "https://github.com/igorleonovich/doors-cli-unix"
  url "https://github.com/igorleonovich/doors-cli-unix.git"
  version "0.0.1"
  def install
    system "swift", "build",
        "--configuration", "release",
        "--disable-sandbox"
    bin.install '.build/release/DoorsClient'
  end
end