class I18nConvert < Formula
  desc "Cross-platform localization file format converter"
  homepage "https://github.com/i18n-agent/i18n-convert"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/i18n-agent/i18n-convert/releases/download/v#{version}/i18n-convert-aarch64-apple-darwin.tar.gz"
      sha256 "53869998c6cab1665e4ccd59cb84e3311799b627ad55fb62438129ea2cda1826"
    else
      url "https://github.com/i18n-agent/i18n-convert/releases/download/v#{version}/i18n-convert-x86_64-apple-darwin.tar.gz"
      sha256 "fc4a5f6dac978a4fbf34c8c850abfc762523badbfb403f8a544738663e723d77"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/i18n-agent/i18n-convert/releases/download/v#{version}/i18n-convert-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "43aa526ac3a8c13efacd4b8c7c07c65e7f7347a7e8c8c43a3f6f7c1934e5f203"
    else
      url "https://github.com/i18n-agent/i18n-convert/releases/download/v#{version}/i18n-convert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9e559a2aaef94866b445ad142d96fc0dbe8c79664f5c1e1346937ec046a2c4c3"
    end
  end

  def install
    bin.install "i18n-convert"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/i18n-convert --version")
  end
end
