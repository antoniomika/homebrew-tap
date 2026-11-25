class Lend < Formula
  desc "Approve remote requests for local commands and SSH keys"
  homepage "https://github.com/antoniomika/lend"
  version "0.0.8"

  on_macos do
    depends_on macos: :ventura
    on_arm do
      url "https://github.com/antoniomika/lend/releases/download/v0.0.8/lend_0.0.8_darwin_arm64.tar.gz"
      sha256 "22369a68e53e3180cf20958e0a880e54cc2b18bc0e02a569d6c45ae2ce420f01"
    end
    on_intel do
      url "https://github.com/antoniomika/lend/releases/download/v0.0.8/lend_0.0.8_darwin_amd64.tar.gz"
      sha256 "3f85acc74dceae4fed3b9c0a6d023c4cb7291286ecdec1adb1b109556dc16253"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/antoniomika/lend/releases/download/v0.0.8/lend_0.0.8_linux_arm64.tar.gz"
      sha256 "f5bd705038cfa824eccc0c395b9ad4c6f7199f8bd083dd850d42549f9795b9dc"
    end
    on_intel do
      url "https://github.com/antoniomika/lend/releases/download/v0.0.8/lend_0.0.8_linux_amd64.tar.gz"
      sha256 "b504cd6099e07b8141b4c3abb94562cfc2a6a7d7ec43881666503608401afc4b"
    end
  end

  def install
    bin.install "lend"
    (pkgshare/"examples").install Dir["examples/*"]
  end

  test do
    assert_match "v0.0.8", shell_output("#{bin}/lend version")
  end
end
