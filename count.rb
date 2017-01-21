class Count < Formula
  desc "total unique entries in line delimited input from stdin"
  homepage "https://github.com/djhworld/count"
  url "https://github.com/djhworld/count/archive/0.0.5.tar.gz"
  sha256 "05e1991f97283f4d3eda9a483602ea54258a4e7034ddbe00db4f499ba365e3a8"
  head "https://github.com/djhworld/count.git"

  depends_on "go" => :build

  def install
      system "make", "setup"
      system "make"
      bin.install('bin/count')
  end

  test do
  end
end
