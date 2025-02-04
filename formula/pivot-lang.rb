# typed: false
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class PivotLang < Formula
  desc "Rust-like language with immix gc and other cool stuffs"
  homepage "https://github.com/Pivot-Studio/pivot-lang"
  url "https://github.com/Pivot-Studio/pivot-lang/archive/v0.1.479.tar.gz"
  sha256 "8b0cebf24fd7ef586deadb3c0a9eafbafa65003b2d89373cb96393a2f1651ebb"
  license "MIT"

  on_macos do

    on_arm do
      url "https://github.com/Pivot-Studio/pivot-lang/releases/download/v0.1.479/pivot-lang-0.1.479-darwin-arm64.tar.gz"
      sha256 "ae281db2d623696f7cca1970a2316a9c2538de45de4f5b8d11e96a2cec69666d"
    end
  end

  def install
    lib.install Dir["./planglib"]
    lib.install "./libvm.a"
    lib.install "./libvm.dylib"
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
