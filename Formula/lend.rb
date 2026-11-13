class Lend < Formula
  desc "Approve remote requests for local commands and SSH keys"
  homepage "https://github.com/antoniomika/lend"
  version "0.0.3"

  on_macos do
    depends_on macos: :ventura
    on_arm do
      url "https://github.com/antoniomika/lend/releases/download/v0.0.3/lend_0.0.3_darwin_arm64.tar.gz"
      sha256 "65986d60fb1e7e04b42d9e900a246b3bce741b377e2d6a793cae718e49a2b9be"
    end
    on_intel do
      url "https://github.com/antoniomika/lend/releases/download/v0.0.3/lend_0.0.3_darwin_amd64.tar.gz"
      sha256 "3abc9a9caaeed3e54e4c0939aa0831425603c245fb0742b47f536f2b2bd30bd2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/antoniomika/lend/releases/download/v0.0.3/lend_0.0.3_linux_arm64.tar.gz"
      sha256 "330db425401e407db4cd9e98e71a3d164a7c1245ee15d163b8817c73cd052dc2"
    end
    on_intel do
      url "https://github.com/antoniomika/lend/releases/download/v0.0.3/lend_0.0.3_linux_amd64.tar.gz"
      sha256 "d82d1bde318466c62858e4f3def0b00e073b82a6a32e8391799d5af262705458"
    end
  end

  def install
    bin.install "lend"
    (pkgshare/"examples").install Dir["examples/*"]
  end

  test do
    assert_match "v0.0.3", shell_output("#{bin}/lend version")
  end
end
