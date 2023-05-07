# typed: false
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class PivotLang < Formula
  desc "Https://langpivotstudiocn"
  homepage "https://github.com/Pivot-Studio/pivot-lang"
  url "https://github.com/Pivot-Studio/pivot-lang/archive/v0.1.320.tar.gz"
  sha256 "9f2fd0dc4cb4ffb0dc755dd83237990b5731fc0a6fea04c1a8ebd7a438379a66"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Pivot-Studio/pivot-lang/releases/download/v0.1.320/pivot-lang-0.1.320-darwin-amd64.tar.gz"
      sha256 "3699eef0ff74cd92d726f3973c5d6ebf2913ca1239a0d368d1fdfd54d37ab454"
    end

    on_arm do
      url "https://github.com/Pivot-Studio/pivot-lang/releases/download/v0.1.320/pivot-lang-0.1.320-darwin-arm64.tar.gz"
      sha256 "dd4aea7ab4214515e194cf266bd3393f932c45cffaa7e0121ee7d1512740a41d"
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
