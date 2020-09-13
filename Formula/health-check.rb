# This file was generated by GoReleaser. DO NOT EDIT.
class HealthCheck < Formula
  desc "The `health-check` command line tool concurrently checks all target groups's health status"
  homepage "https://warrensbox.github.io/health-check"
  version "0.1.90"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/warrensbox/health-check/releases/download/0.1.90/health-check_0.1.90_darwin_amd64.tar.gz"
    sha256 "613fe0a5f853072335f3e2bd4c298a013cf636470dd835f5292c1f3fad97f2de"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/warrensbox/health-check/releases/download/0.1.90/health-check_0.1.90_linux_amd64.tar.gz"
      sha256 "2266528cc0e699469dec039932d0a27da093918fa1d6bd8323398a3fb3981d83"
    end
  end

  def install
    bin.install "health-check"
  end

  def caveats; <<~EOS
    The `health-check` command line tool concurrently checks all target groups's health status
  EOS
  end

  test do
    system "#{bin}/health-check --version"
  end
end
