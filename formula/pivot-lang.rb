# typed: false
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class PivotLang < Formula
  desc "Rust-like language with immix gc and other cool stuffs"
  homepage "https://github.com/Pivot-Studio/pivot-lang"
  url "https://github.com/Pivot-Studio/pivot-lang/archive/v0.1.424.tar.gz"
  sha256 "6b03dd026876e08d9c3b3dcf2787c44cced07335c0c120d323addb804a44cff9"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Pivot-Studio/pivot-lang/releases/download/v0.1.424/pivot-lang-0.1.424-darwin-amd64.tar.gz"
      sha256 "35bb3522d56b04f065c7cb55d9c7e2b0f6de7c19e2bbdfffd67a00cda42e864f"
    end

    on_arm do
      url "https://github.com/Pivot-Studio/pivot-lang/releases/download/v0.1.424/pivot-lang-0.1.424-darwin-arm64.tar.gz"
      sha256 "03f5a5278534bbad980cce9bdbb3e32a3f37a2e1a0a6c405113582ee415d1d88"
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
