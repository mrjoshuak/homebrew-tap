class C4 < Formula
  desc "C4 Universal Content Identification — CLI tools (SMPTE ST 2114)"
  homepage "https://cccc.io"
  version "1.0.12"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Avalanche-io/c4toolkit/releases/download/v1.0.12/c4_darwin_arm64.tar.gz"
      sha256 "e20c682b5587bf51b923d40f09f0380496a65658aaaa200852921e5b6a966744"
    else
      url "https://github.com/Avalanche-io/c4toolkit/releases/download/v1.0.12/c4_darwin_amd64.tar.gz"
      sha256 "054e6f77f61513479012675adbd5f04da6773faa5ab60dfd02794fb48e800940"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Avalanche-io/c4toolkit/releases/download/v1.0.12/c4_linux_arm64.tar.gz"
      sha256 "38251d454e4710a16b296186fa5f2641eec37f79be5d2b10947f99ec03875612"
    else
      url "https://github.com/Avalanche-io/c4toolkit/releases/download/v1.0.12/c4_linux_amd64.tar.gz"
      sha256 "14064695aa2773a1b0e63dcf253f8cd3127acfc33d131557559724698894528d"
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
