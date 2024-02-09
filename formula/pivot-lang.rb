# typed: false
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class PivotLang < Formula
  desc "Rust-like language with immix gc and other cool stuffs"
  homepage "https://github.com/Pivot-Studio/pivot-lang"
  url "https://github.com/Pivot-Studio/pivot-lang/archive/v0.1.428.tar.gz"
  sha256 "2733c7c243c2bd2308f32e328b0bfa0b694c4c4f364a4d5bd1d1fa6710246115"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Pivot-Studio/pivot-lang/releases/download/v0.1.428/pivot-lang-0.1.428-darwin-amd64.tar.gz"
      sha256 "2518120edda15da551cd9b28fa5e2254b470f415d99cca9cefc00c71cf28221c"
    end

    on_arm do
      url "https://github.com/Pivot-Studio/pivot-lang/releases/download/v0.1.428/pivot-lang-0.1.428-darwin-arm64.tar.gz"
      sha256 "542347879706d3963b8f2e40cab12b905b250b85bfec0d92c5a1dbb4c84f768b"
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
