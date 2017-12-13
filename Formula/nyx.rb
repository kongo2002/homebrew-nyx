class Nyx < Formula
  desc "Process monitoring and supervision tool"
  homepage "https://github.com/kongo2002/nyx/"
  url "https://github.com/kongo2002/nyx/archive/v1.8.0.tar.gz"
  sha256 "e4b66970313d3ce0629506fc17f8ca2fd873c4c0550568602a01c34adb67506d"

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
