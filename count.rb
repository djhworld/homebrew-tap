class Count < Formula
  desc "total unique entries in line delimited input from stdin"
  homepage "https://github.com/djhworld/count"
  url "https://github.com/djhworld/count/archive/0.0.3.tar.gz"
  sha256 "4c46960b78efe7903199b7a49c97a87e73d6ff9366203eb13983b6ae4988d78f"
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
