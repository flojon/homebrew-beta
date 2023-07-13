class DotnetPreview < Formula
  desc ".NET SDK"
  homepage "https://dotnet.microsoft.com/en-us/download/dotnet/8.0"
  on_linux do
    on_intel do
      url "https://download.visualstudio.microsoft.com/download/pr/0ce806be-89f7-4264-ad1b-6ff1887e7b6b/08a75d03919470fba420b970a7565ef5/dotnet-sdk-8.0.100-preview.6.23330.14-linux-x64.tar.gz"
      sha256 "86486ab548c537118af1c7b4715a978ff3e6f1d6c2074e147228d5749d8d3c09"
      version "8.0.100-preview.6"
    end
  end
  license "MIT"

  def install
    prefix.install Dir["*"]
    bin.install_symlink prefix/"dotnet"
  end

end
