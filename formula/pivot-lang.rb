# typed: false
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class PivotLang < Formula
  desc "Https://langpivotstudiocn"
  homepage "https://github.com/Pivot-Studio/pivot-lang"
  url "https://github.com/Pivot-Studio/pivot-lang/archive/v0.1.316.tar.gz"
  sha256 "17635fc3d18befb43eabde33c36381f204670182b931cb862ed2b270bd2bee47"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Pivot-Studio/pivot-lang/releases/download/v0.1.316/pivot-lang-0.1.316-darwin-amd64.tar.gz"
      sha256 "7dd13af4dde4d85793a8fb6376a272d1254dbf9d53afa636fb273ed914345047"
    end

    on_arm do
      url "https://github.com/Pivot-Studio/pivot-lang/releases/download/v0.1.316/pivot-lang-0.1.316-darwin-arm64.tar.gz"
      sha256 "74d6864e29030e338202f9f77b259473e73974405fb3ae714ea55f361379b126"
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
