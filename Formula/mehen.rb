# Written by tools/release/release.ts for mehen 0.5.0 (6dc71e9) from its signed manifest. Do not edit by hand.
class Mehen < Formula
  desc "Credential vault for AI agents: they use keys without ever seeing them"
  homepage "https://mehen.dev"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://mehen.dev/dl/v0.5.0/mehen-darwin-arm64.gz"
      sha256 "d1f3e34dbed9436cf77f219729a32d325f828d068aa9db82b008c0d4bf103547"
    end
    on_intel do
      url "https://mehen.dev/dl/v0.5.0/mehen-darwin-x64.gz"
      sha256 "a52c3730aa2844d8cc49975804be67e70e58576402767a7a4bfc651bc9449502"
    end
  end

  on_linux do
    on_arm do
      url "https://mehen.dev/dl/v0.5.0/mehen-linux-arm64.gz"
      sha256 "8e2681f468d0242c06d200c5636fadccbadbefb775f2650ad990415dbc657b76"
    end
    on_intel do
      url "https://mehen.dev/dl/v0.5.0/mehen-linux-x64.gz"
      sha256 "201655f85ed101aa0e39f8dfe64e68cd8d3bd209b6d0772659c3b7b6afe0bcf7"
    end
  end

  def install
    bin.install Dir["mehen-*"].first => "mehen"
  end

  test do
    assert_match "mehen #{version}", shell_output("#{bin}/mehen --version")
  end
end
