VERSION="0.1.0"

class Sleet < Formula
  desc "WEATHER weather, etc."
  homepage "https://github.com/kimura-hytaae/sleet"
  url "https://github.com/kimura-hytaae/sleet/releases/download/v#{VERSION}/sleet-#{VERSION}_darwin_amd64.tar.gz" 
  version VERSION
  sha256 "e51785a293f7867252fe5edc2543bcca96a7a1816b00567f04189bd746b28a71"
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
