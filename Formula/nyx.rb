class Nyx < Formula
  desc "Process monitoring and supervision tool"
  homepage "https://github.com/kongo2002/nyx/"
  url "https://github.com/kongo2002/nyx/archive/v1.9.0.tar.gz"
  sha256 "e08c4164209744d2c8e42dc50af0540a2fdce97d8574f521889ec495e2328edf"

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
