class Nyx < Formula
  desc "Process monitoring and supervision tool"
  homepage "https://github.com/kongo2002/nyx/"
  url "https://github.com/kongo2002/nyx/archive/v1.9.2.tar.gz"
  sha256 "e05261aaa21aed94a1d2f25f531b351c379d60d5177de0fc53c7526b2f5dd71d"

  depends_on "libyaml"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/nyx", "--run", "sleep 20"
    system "sleep", "10"
    system "#{bin}/nyx", "stop", "__run__"
    system "#{bin}/nyx", "quit"
  end
end
