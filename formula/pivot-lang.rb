# typed: false
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class PivotLang < Formula
  desc "Https://langpivotstudiocn"
  homepage "https://github.com/Pivot-Studio/pivot-lang"
  url "https://github.com/Pivot-Studio/pivot-lang/archive/v0.1.372.tar.gz"
  sha256 "4ccf901fec7c0e5947443e4e12231e92cc076f72726250497ed110136cf82c8d"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Pivot-Studio/pivot-lang/releases/download/v0.1.372/pivot-lang-0.1.372-darwin-amd64.tar.gz"
      sha256 "84fda13f620e711d0cf22950d6b6bee49816ff2965e701d4d0251bfbc5613ccf"
    end

    on_arm do
      url "https://github.com/Pivot-Studio/pivot-lang/releases/download/v0.1.372/pivot-lang-0.1.372-darwin-arm64.tar.gz"
      sha256 "243109e1accea92a40b2a15617859f4c1e6d90fdeabea57914c05e097c609144"
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
