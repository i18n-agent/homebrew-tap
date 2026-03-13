class I18nConvert < Formula
  desc "Cross-platform localization file format converter"
  homepage "https://github.com/i18n-agent/i18n-convert"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/i18n-agent/i18n-convert/releases/download/v#{version}/i18n-convert-aarch64-apple-darwin.tar.gz"
      sha256 "f194cd57f3ca088eb6ed2e81721850c03a45ee7b060359d4b6c28ba68a62d551"
    else
      url "https://github.com/i18n-agent/i18n-convert/releases/download/v#{version}/i18n-convert-x86_64-apple-darwin.tar.gz"
      sha256 "c90980992ef9bd5834dc84823fa90557f10e8f9111867a729f9e37fdadf91266"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/i18n-agent/i18n-convert/releases/download/v#{version}/i18n-convert-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fea40bb77fce2bf303b7b5d654c651e3e36c0e532cb835eef556a9fadf818fdd"
    else
      url "https://github.com/i18n-agent/i18n-convert/releases/download/v#{version}/i18n-convert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "05fd715f868fbf07cd381ab339c098e03652d281fa52be8ed98e0230fb64029d"
    end
  end

  def install
    bin.install "i18n-convert"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/i18n-convert --version")
  end
end
