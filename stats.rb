class Stats < Formula
  desc "outputs statistical information about line delimited numbers from stdin"
  homepage "https://github.com/djhworld/stats"
  url "https://github.com/djhworld/stats/archive/0.0.1.tar.gz"
  sha256 "da817f4797025fb7a863b50b0d0a23d3d3887e4cd25485654cf0debd1f7e7079"
  head "https://github.com/djhworld/stats.git"

  depends_on "go" => :build

  def install
    ENV["GOBIN"] = bin
    ENV["GOPATH"] = buildpath/"vendor"
    ENV["GOHOME"] = buildpath

    system "go", "build", "-o", bin/"stats", "src/github.com/djhworld/stats/stats.go"
  end

  test do
  end
end
