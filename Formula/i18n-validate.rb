class I18nValidate < Formula
  desc "Validate i18n translation files for consistency across 32 formats"
  homepage "https://github.com/i18n-agent/i18n-validate"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/i18n-agent/i18n-validate/releases/download/v#{version}/i18n-validate-aarch64-apple-darwin.tar.gz"
      sha256 "302965f990ce249c859f11b74b587f653cdcf0526b08e20f5bffd481e231c6cd"
    else
      url "https://github.com/i18n-agent/i18n-validate/releases/download/v#{version}/i18n-validate-x86_64-apple-darwin.tar.gz"
      sha256 "cb4038cf75c4d6e9254352af44b79fdcd06fbd20b234cd62dff8d673818d180c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/i18n-agent/i18n-validate/releases/download/v#{version}/i18n-validate-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "50ca4b2e807167147879612f86cae5afbf833156b89246bc96f2f2de2aa4fc59"
    else
      url "https://github.com/i18n-agent/i18n-validate/releases/download/v#{version}/i18n-validate-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5a704e97a5b0ef6bad2569156412ecdb274b4cfba303be74f7aef2cc8b5ab4bd"
    end
  end

  def install
    bin.install "i18n-validate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/i18n-validate --version")
  end
end
