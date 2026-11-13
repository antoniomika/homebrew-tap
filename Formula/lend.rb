class Lend < Formula
  desc "Approve remote requests for local commands and SSH keys"
  homepage "https://github.com/antoniomika/lend"
  version "0.0.4"

  on_macos do
    depends_on macos: :ventura
    on_arm do
      url "https://github.com/antoniomika/lend/releases/download/v0.0.4/lend_0.0.4_darwin_arm64.tar.gz"
      sha256 "df177e2a3df7e5b7866fe13a84187b90ed14c331704f9c5f57e37c647e645ec6"
    end
    on_intel do
      url "https://github.com/antoniomika/lend/releases/download/v0.0.4/lend_0.0.4_darwin_amd64.tar.gz"
      sha256 "381afa9f30547027b1a7f734ab4c7d3a46229d3299dc01d51e81f6e41ea60d29"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/antoniomika/lend/releases/download/v0.0.4/lend_0.0.4_linux_arm64.tar.gz"
      sha256 "7d9dded319a23002f349592636e36357820c7c7c6a91deaf7c5f6f33fd1099f9"
    end
    on_intel do
      url "https://github.com/antoniomika/lend/releases/download/v0.0.4/lend_0.0.4_linux_amd64.tar.gz"
      sha256 "516bff65f4f5cca1714ca4e05d367214b002e20813caf7aff874c77d6f4d2cd4"
    end
  end

  def install
    bin.install "lend"
    (pkgshare/"examples").install Dir["examples/*"]
  end

  test do
    assert_match "v0.0.4", shell_output("#{bin}/lend version")
  end
end
