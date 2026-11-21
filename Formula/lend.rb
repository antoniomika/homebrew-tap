class Lend < Formula
  desc "Approve remote requests for local commands and SSH keys"
  homepage "https://github.com/antoniomika/lend"
  version "0.0.7"

  on_macos do
    depends_on macos: :ventura
    on_arm do
      url "https://github.com/antoniomika/lend/releases/download/v0.0.7/lend_0.0.7_darwin_arm64.tar.gz"
      sha256 "bcf8110cc3689df5884c53a032bf13ae704dd3295be3de0830681b0755199207"
    end
    on_intel do
      url "https://github.com/antoniomika/lend/releases/download/v0.0.7/lend_0.0.7_darwin_amd64.tar.gz"
      sha256 "4e72b7839bec61701e362821cd664e686236d27114f4b62033096455965ee41a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/antoniomika/lend/releases/download/v0.0.7/lend_0.0.7_linux_arm64.tar.gz"
      sha256 "410132e70f2b1dee0608a9baa6ccc2dd6b51c74f09fa9b416aec4da464b821f3"
    end
    on_intel do
      url "https://github.com/antoniomika/lend/releases/download/v0.0.7/lend_0.0.7_linux_amd64.tar.gz"
      sha256 "4177b5fe55f99ae31ef428c62bdf3bab9d2a8c8070460c1ca03223d05cd38e56"
    end
  end

  def install
    bin.install "lend"
    (pkgshare/"examples").install Dir["examples/*"]
  end

  test do
    assert_match "v0.0.7", shell_output("#{bin}/lend version")
  end
end
