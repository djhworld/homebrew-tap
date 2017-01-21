class Stats < Formula
  desc "outputs statistical information about line delimited numbers from stdin"
  homepage "https://github.com/djhworld/stats"
  url "https://github.com/djhworld/stats/archive/0.0.2.tar.gz"
  sha256 "115489871bfcc9de624547f645f2e2764ae3dd48618c28a25c34de12329471ba"
  head "https://github.com/djhworld/stats.git"

  depends_on "go" => :build

  def install
    #ENV["GOBIN"] = bin
    #ENV["GOPATH"] = buildpath/"vendor"
    #ENV["GOHOME"] = buildpath

    system "make", "setup"
    system "make"
  end

  test do
  end
end
