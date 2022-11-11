# typed: false
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class PivotLang < Formula
  desc "Pivot-lang 二次元指定编程语言"
  homepage "https://github.com/Pivot-Studio/pivot-lang"
  url "https://github.com/Pivot-Studio/pivot-lang/archive/v0.1.156.tar.gz"
  sha256 "c3c6f5026e3ad0460bff7a0d8a2ac964c8f74dfc32c806906c2f4bc0458a3d25"
  license "MIT"

  depends_on "llvm@14"

  on_macos do
    on_arm do
      url "https://github.com/Pivot-Studio/pivot-lang/releases/download/v0.1.156/pivot-lang-0.1.156-darwin-amd64.tar.gz"
      sha256 "52cf6413da68c91ff3a8aafb654f3762c7d885b2247fbfb03b31a9c7d21929c7"
    end
  end

  def install
    prefix.install Dir["./*"]
  end
end
