class Lend < Formula
  desc "Approve remote requests for local commands and SSH keys"
  homepage "https://github.com/antoniomika/lend"
  version "0.0.2"

  on_macos do
    depends_on macos: :ventura
    on_arm do
      url "https://github.com/antoniomika/lend/releases/download/v0.0.2/lend_0.0.2_darwin_arm64.tar.gz"
      sha256 "94507c38e6884fc840e1d351cdfa9b49eefeaef69dc817997b7e249849ba0bd0"
    end
    on_intel do
      url "https://github.com/antoniomika/lend/releases/download/v0.0.2/lend_0.0.2_darwin_amd64.tar.gz"
      sha256 "97e6dbe49d7bf443bf7edc33f2069d820647ce479b0ae64235368e21bafaa600"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/antoniomika/lend/releases/download/v0.0.2/lend_0.0.2_linux_arm64.tar.gz"
      sha256 "7017b93cc35fea67987e6878ba0e1c41fda0fda1c0dc46254f07621ed431bad8"
    end
    on_intel do
      url "https://github.com/antoniomika/lend/releases/download/v0.0.2/lend_0.0.2_linux_amd64.tar.gz"
      sha256 "d107662261cc5c07131486e3cce852729470d879573f73aed1ce29b2d3bec732"
    end
  end

  def install
    bin.install "lend"
    (pkgshare/"examples").install Dir["examples/*"]
  end

  test do
    assert_match "v0.0.2", shell_output("#{bin}/lend version")
  end
end
