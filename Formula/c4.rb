class C4 < Formula
  desc "C4 Universal Content Identification — CLI tools (SMPTE ST 2114)"
  homepage "https://cccc.io"
  version "1.0.10"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Avalanche-io/c4toolkit/releases/download/v1.0.10/c4_darwin_arm64.tar.gz"
      sha256 "98de00e25da08b6d5fa385b9a6a4c61c490acb6b06e7494ed56a2b1a060ca8f6"
    else
      url "https://github.com/Avalanche-io/c4toolkit/releases/download/v1.0.10/c4_darwin_amd64.tar.gz"
      sha256 "1ef66dda01dd5674d7b3301736651a56fd9e4c6ffe4522423fead93a6d604542"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Avalanche-io/c4toolkit/releases/download/v1.0.10/c4_linux_arm64.tar.gz"
      sha256 "84b4aa4f3015fc96aa68425ccbde2ce868348e68a36f9a05938029ccceac1215"
    else
      url "https://github.com/Avalanche-io/c4toolkit/releases/download/v1.0.10/c4_linux_amd64.tar.gz"
      sha256 "ecb5860207706b63b7288f6ac456c2ef3bec3b0a4614cba66dfb06c8926ab71f"
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
