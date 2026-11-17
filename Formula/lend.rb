class Lend < Formula
  desc "Approve remote requests for local commands and SSH keys"
  homepage "https://github.com/antoniomika/lend"
  version "0.0.6"

  on_macos do
    depends_on macos: :ventura
    on_arm do
      url "https://github.com/antoniomika/lend/releases/download/v0.0.6/lend_0.0.6_darwin_arm64.tar.gz"
      sha256 "0ab6a4decb9d1f2238c6e11b811c78db9d9aae8868a15cab9c8f65f227159b86"
    end
    on_intel do
      url "https://github.com/antoniomika/lend/releases/download/v0.0.6/lend_0.0.6_darwin_amd64.tar.gz"
      sha256 "57cf311c1c97bdd606e563b4e3df8d879b493c8f68c4da4919147cdb9f6b6cb8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/antoniomika/lend/releases/download/v0.0.6/lend_0.0.6_linux_arm64.tar.gz"
      sha256 "6eb7273830398e1628191dd712b104c4e7c22dea9e0a2f68fae09112781f64a1"
    end
    on_intel do
      url "https://github.com/antoniomika/lend/releases/download/v0.0.6/lend_0.0.6_linux_amd64.tar.gz"
      sha256 "490e69226dc8e75e084429f96bd4afb12ebd05dbba3ac95c7f17b74d673a0726"
    end
  end

  def install
    bin.install "lend"
    (pkgshare/"examples").install Dir["examples/*"]
  end

  test do
    assert_match "v0.0.6", shell_output("#{bin}/lend version")
  end
end
