class C4 < Formula
  desc "C4 Universal Content Identification — CLI tools (SMPTE ST 2114)"
  homepage "https://cccc.io"
  version "1.0.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Avalanche-io/c4-releases/releases/download/v1.0.6/c4-suite_v1.0.6_darwin_arm64.tar.gz"
      sha256 "b4c1c00d62f6043abda81576f1854231ee3b5edcf970eed4f590e878bae47682"
    else
      url "https://github.com/Avalanche-io/c4-releases/releases/download/v1.0.6/c4-suite_v1.0.6_darwin_amd64.tar.gz"
      sha256 "2fd31c710e5311da4560f30555cc3ea811aeb352bbef148cb7945feccf84af19"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Avalanche-io/c4-releases/releases/download/v1.0.6/c4-suite_v1.0.6_linux_arm64.tar.gz"
      sha256 "8986379a72b4e2132f63d30766629bf6cef6967a81ffd48a9d93db1f29e6648f"
    else
      url "https://github.com/Avalanche-io/c4-releases/releases/download/v1.0.6/c4-suite_v1.0.6_linux_amd64.tar.gz"
      sha256 "670c30a80bcc89290768380c8261f0f61932a2ef579c3743169d46ccea6fba03"
    end
  end

  def install
    bin.install "c4"
    bin.install "c4sh"
    bin.install "c4git"
  end

  test do
    assert_match "c4 1", shell_output("#{bin}/c4 version")
    assert_match "c4sh 1", shell_output("#{bin}/c4sh version")
  end
end
