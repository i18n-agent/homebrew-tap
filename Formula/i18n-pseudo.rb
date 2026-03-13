class I18nPseudo < Formula
  desc "Pseudo-translate i18n files for testing internationalization"
  homepage "https://github.com/i18n-agent/i18n-pseudo"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/i18n-agent/i18n-pseudo/releases/download/v#{version}/i18n-pseudo-aarch64-apple-darwin.tar.gz"
      sha256 "177ed0d223dbc6ab39d7aeb677eda825e271100550d90f426aaee8650e74dc4a"
    else
      url "https://github.com/i18n-agent/i18n-pseudo/releases/download/v#{version}/i18n-pseudo-x86_64-apple-darwin.tar.gz"
      sha256 "61cb33b4c00bb6c236127aae0577688c6cf3d62f762fcf223688039485ca2dc3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/i18n-agent/i18n-pseudo/releases/download/v#{version}/i18n-pseudo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "babad643f1ea1231e7213d877470ef5bd4736a1cf711ed48eefccad73b2dbcc7"
    else
      url "https://github.com/i18n-agent/i18n-pseudo/releases/download/v#{version}/i18n-pseudo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fd00bcf5b1fafbcc03e5bd3b757592fc03004bc2dd93ae5af19713e0835c942d"
    end
  end

  def install
    bin.install "i18n-pseudo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/i18n-pseudo --version")
  end
end
