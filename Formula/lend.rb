class Lend < Formula
  desc "Approve remote requests for local commands and SSH keys"
  homepage "https://github.com/antoniomika/lend"
  version "0.0.5"

  on_macos do
    depends_on macos: :ventura
    on_arm do
      url "https://github.com/antoniomika/lend/releases/download/v0.0.5/lend_0.0.5_darwin_arm64.tar.gz"
      sha256 "15bd44611a1d9b570c14670965b0e51dc3d41dd5c4bf263ef91d6a62fc458320"
    end
    on_intel do
      url "https://github.com/antoniomika/lend/releases/download/v0.0.5/lend_0.0.5_darwin_amd64.tar.gz"
      sha256 "891a5b66108067d06329a35f02f380d22105d01925b36d4f36ecb5c08683e3dd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/antoniomika/lend/releases/download/v0.0.5/lend_0.0.5_linux_arm64.tar.gz"
      sha256 "a151b42f90901cccd9f3261e59801ebc6530fa3dea08304369582b80a4ebedcb"
    end
    on_intel do
      url "https://github.com/antoniomika/lend/releases/download/v0.0.5/lend_0.0.5_linux_amd64.tar.gz"
      sha256 "4d410a173f9ec82f7d2c82598243be16684302ad510344b43b9c7c2d5553d903"
    end
  end

  def install
    bin.install "lend"
    (pkgshare/"examples").install Dir["examples/*"]
  end

  test do
    assert_match "v0.0.5", shell_output("#{bin}/lend version")
  end
end
