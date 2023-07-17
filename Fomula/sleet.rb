VERSION="0.1.0"

class Sleet < Formula
  desc "WEATHER weather, etc."
  homepage "https://github.com/kimura-hytaae/sleet"
  url "https://github.com/kimura-hytaae/sleet/releases/download/v#{VERSION}/sleet-#{VERSION}_darwin_amd64.tar.gz" 
  version VERSION
  sha256 "6df860115d0e4e11d90151d0cc5b4a05dad344a484316b478c28426b016dd531"
  license "MIT"
  option "without-completions", "Disable bash completions"
  depends_on "bash-completion@2" => :optional

  def install
    bin.install "sleet"
    bash_completion.install "completions/bash/sleet" if build.with? "completions" 
  end
  test do
    system bin/"sleet", "--version"
  end 
end
