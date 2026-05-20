class I18nConvert < Formula
  desc "Cross-platform localization file format converter"
  homepage "https://github.com/i18n-agent/i18n-convert"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/i18n-agent/i18n-convert/releases/download/v#{version}/i18n-convert-aarch64-apple-darwin.tar.gz"
      sha256 "0f9688ce6e9c54c7fa7a0afc9c285a61c0b5cb80f91f4320626e80ab9d11176c"
    else
      url "https://github.com/i18n-agent/i18n-convert/releases/download/v#{version}/i18n-convert-x86_64-apple-darwin.tar.gz"
      sha256 "ff1b983dc0f88132083e69e6d53324f9af46fe86319e206499e9ebf1f766aa2a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/i18n-agent/i18n-convert/releases/download/v#{version}/i18n-convert-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fb9c5cd058611fde685c6e5e2ca000e3b8068fc01c7e7b5c5a54e6349f712053"
    else
      url "https://github.com/i18n-agent/i18n-convert/releases/download/v#{version}/i18n-convert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "11cba12270cb4627f3220b055402e08d16b79ff4fb2b23fb3f10a2df165bb046"
    end
  end

  def install
    bin.install "i18n-convert"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/i18n-convert --version")
  end
end
