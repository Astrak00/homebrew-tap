class Agdownloader < Formula
  desc "Download course materials from AulaGlobal"
  homepage "https://github.com/Astrak00/AGDownloader"
  version "1.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Astrak00/AGDownloader/releases/download/v#{version}/AGDownloader_Darwin_arm64.tar.gz"
      sha256 "61049746dfd3a9da6b0606e944c1bd8ade8f6756c4ea794df7a49dd1f387d292"
    end
    on_intel do
      url "https://github.com/Astrak00/AGDownloader/releases/download/v#{version}/AGDownloader_Darwin_x86_64.tar.gz"
      sha256 "da8fca96b61de7608a6439512c13cfc1c5352f81bcdc903fa7cf50bbbd160373"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Astrak00/AGDownloader/releases/download/v#{version}/AGDownloader_Linux_arm64.tar.gz"
      sha256 "356ab11370401a897c07cbd2341bc65beb6c9d254a4bfef8de36710ad540005b"
    end
    on_intel do
      url "https://github.com/Astrak00/AGDownloader/releases/download/v#{version}/AGDownloader_Linux_x86_64.tar.gz"
      sha256 "2470792c23190650151611e7e9ca8ffdadaf22a25c8809d89dfe3d68ebae58e4"
    end
  end

  def install
    bin.install "AGDownloader"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/AGDownloader --version 2>&1", 1)
  end
end
