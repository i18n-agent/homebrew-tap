class I18nConvert < Formula
  desc "Cross-platform localization file format converter"
  homepage "https://github.com/i18n-agent/i18n-convert"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/i18n-agent/i18n-convert/releases/download/v#{version}/i18n-convert-aarch64-apple-darwin.tar.gz"
      sha256 "72d0c5d45efc35834df297d70ad0fc2b1bd8412ffe3f7c353bb920dcc29ef228"
    else
      url "https://github.com/i18n-agent/i18n-convert/releases/download/v#{version}/i18n-convert-x86_64-apple-darwin.tar.gz"
      sha256 "2de4faf38f03d5835d3e618811345de08b4bf8a05dc826f3087dff77bf6752a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/i18n-agent/i18n-convert/releases/download/v#{version}/i18n-convert-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ef9679abff627305f356dd3c7447e65210306d3b28f21ecff542abf1a7936e70"
    else
      url "https://github.com/i18n-agent/i18n-convert/releases/download/v#{version}/i18n-convert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9d523de3f4fafaa8d90523a841238b10e7c2af2ee3871227c1b3acfc1ee9bbd5"
    end
  end

  def install
    bin.install "i18n-convert"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/i18n-convert --version")
  end
end
