class Nyx < Formula
  desc "Process monitoring and supervision tool"
  homepage "https://github.com/kongo2002/nyx/"
  url "https://github.com/kongo2002/nyx/archive/v1.9.3.tar.gz"
  sha256 "7960058e1cd07eb397960a9766c425ccc0810e387d454df7fe21077be848a98c"

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
