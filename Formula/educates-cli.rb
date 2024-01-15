class EducatesCli < Formula
  desc "Platform for hosting interactive workshop environments in Kubernetes"
  homepage "https://docs.educates.dev"
  version "2.6.16"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/educates/homebrew-educates/releases/download/educates-cli-2.6.16"
    sha256 cellar: :any_skip_relocation, ventura:      "328d459f4e41a2f3bf6dd642c3baa421852da5e80cc592c76c5e86a80a8b3182"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b4e39658c882f8a35f09ea519a51e6ccf478d7fe83a15446292a0ddfcf3d9470"
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu-labs/educates-training-platform/releases/download/2.6.16/educates-darwin-arm64"
      sha256 "7beafad95bc4b97d8998b006746e0409e2e02d7d0265a84f8b2a31f9011ad7bb"
    else
      url "https://github.com/vmware-tanzu-labs/educates-training-platform/releases/download/2.6.16/educates-darwin-amd64"
      sha256 "28566752591d33b47405729b84517890738761158a49c9823415854cbb3f6059"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu-labs/educates-training-platform/releases/download/2.6.16/educates-linux-arm64"
      sha256 "4f2b4b210674ff90da1d3e2f2613f3d352e43ac5b616ecdc27490fc9b64f6916"
    else
      url "https://github.com/vmware-tanzu-labs/educates-training-platform/releases/download/2.6.16/educates-linux-amd64"
      sha256 "2c96bf6f063ea7ae13456cfe6dcfaa02c28b7896d2d9f5f4359c1fa08f4216e4"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "educates"
  end

  test do
    system "#{bin}/educates", "version"
  end
end
