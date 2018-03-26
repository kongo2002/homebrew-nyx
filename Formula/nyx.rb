class Nyx < Formula
  desc "Process monitoring and supervision tool"
  homepage "https://github.com/kongo2002/nyx/"
  url "https://github.com/kongo2002/nyx/archive/v1.9.1.tar.gz"
  sha256 "44bf6d02e7e4d920ddb2b7748cec3fd12d7dfe0d34766a593c546aa8cdcf91fd"

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
