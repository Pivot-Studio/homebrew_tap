# typed: false
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class PivotLang < Formula
  desc "Pivot-lang 二次元指定编程语言"
  homepage "https://github.com/Pivot-Studio/pivot-lang"
  url "https://github.com/Pivot-Studio/pivot-lang/archive/v0.1.231.tar.gz"
  sha256 "8c8c04dbafe32ac6440f87b96c466892e49443d9e70e0b55e029a44312d81fe2"
  license "MIT"

  on_macos do

    on_arm do
      url "https://github.com/Pivot-Studio/pivot-lang/releases/download/v0.1.231/pivot-lang-0.1.231-darwin-arm64.tar.gz"
      sha256 "7662e996db02f0e1e934689562a3ec6d4456fd6b9586febb3b85cb6f675d11cd"
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
