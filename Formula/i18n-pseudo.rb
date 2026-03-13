class I18nPseudo < Formula
  desc "Pseudo-translate i18n files for testing internationalization"
  homepage "https://github.com/i18n-agent/i18n-pseudo"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/i18n-agent/i18n-pseudo/releases/download/v#{version}/i18n-pseudo-aarch64-apple-darwin.tar.gz"
      sha256 "d0ce724b73e7b125a2c50fd4b26ed723dd4605d51eaa96fd67785dce016a5d03"
    else
      url "https://github.com/i18n-agent/i18n-pseudo/releases/download/v#{version}/i18n-pseudo-x86_64-apple-darwin.tar.gz"
      sha256 "ceb4d8cf7eee6be58f77c32513a28344046f3133f1e8c3859da5841966a07ea3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/i18n-agent/i18n-pseudo/releases/download/v#{version}/i18n-pseudo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8f679f9917e09bd1133a5fa1e698691a8d6496bb4da13da11ea0b39f76ce6941"
    else
      url "https://github.com/i18n-agent/i18n-pseudo/releases/download/v#{version}/i18n-pseudo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6f4cc296980b1f4c0f3673fbf57c2808d61de3c802db8f172865e9917aad03bd"
    end
  end

  def install
    bin.install "i18n-pseudo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/i18n-pseudo --version")
  end
end
