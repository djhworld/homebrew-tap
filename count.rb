class Count < Formula
  desc "total unique entries in line delimited input from stdin"
  homepage "https://github.com/djhworld/count"
  url "https://github.com/djhworld/count/archive/0.0.4.tar.gz"
  sha256 "2175be88fc93a62caa7f861b419aaeadef7bb0267a928d73c1ab5664aa0da6dc"
  head "https://github.com/djhworld/count.git"

  depends_on "go" => :build

  def install
    ENV["GOBIN"] = bin
    ENV["GOPATH"] = buildpath/"vendor"
    ENV["GOHOME"] = buildpath

    system "go", "build", "-o", bin/"count", "src/github.com/djhworld/count/count.go"
  end

  test do
  end
end
