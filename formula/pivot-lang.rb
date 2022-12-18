# typed: false
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class PivotLang < Formula
  desc "Pivot-lang 二次元指定编程语言"
  homepage "https://github.com/Pivot-Studio/pivot-lang"
  url "https://github.com/Pivot-Studio/pivot-lang/archive/v0.1.201.tar.gz"
  sha256 "cc16911a01e16c01b7ac384ee0d001dc7715c8f6768ec7d28c666c954655ba68"
  license "MIT"

  depends_on "llvm@14"

  on_macos do

    on_arm do
      url "https://github.com/Pivot-Studio/pivot-lang/releases/download/v0.1.201/pivot-lang-0.1.201-darwin-arm64.tar.gz"
      sha256 "6cb9878ca711d28b6c398af30c52ff352e3a656fd20c9efec2b060023f76100b"
    end
  end

  def install
    lib.install Dir["./planglib"]
    lib.install "./libvm.a"
    bin.install "./plc"
  end

  def caveats
    s = <<~EOS
    [0;32m安装完成，请运行下方命令添加环境变量[0m
      echo 'export KAGARI_LIB_ROOT=$(brew --prefix pivot-lang)/lib/planglib' >> ~/.bash_profile
      echo 'export PL_ROOT=$(brew --prefix pivot-lang)/lib' >> ~/.bash_profile
      source ~/.bash_profile
    [0;32m如果您已经打开了vsc，可能需要重启它来应用环境变量更改[0m
    EOS
    s
  end
end
