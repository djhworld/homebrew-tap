class Stats < Formula
  desc "outputs statistical information about line delimited numbers from stdin"
  homepage "https://github.com/djhworld/stats"
  url "https://github.com/djhworld/stats/archive/0.0.3.tar.gz"
  sha256 "a208a7c04f5771591290c081041b3567b6a464e74109aecce7992675efc5cdf3"
  head "https://github.com/djhworld/stats.git"

  depends_on "go" => :build

  def install
    system "make", "setup"
    system "make"
    bin.install('bin/stats')
  end

  test do
  end
end
