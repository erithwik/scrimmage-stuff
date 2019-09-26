# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Jsbsim < Formula
  desc "An open source flight dynamics & control software library in C++"
  homepage "http://www.jsbsim.org"
  url "https://github.com/crichardson332/jsbsim/archive/v1.0.0.tar.gz"
  sha256 "30b4532576dd6eaa11064bab8170640ffd6f5c4525c88000bd4434ede730c2f5"

  depends_on "cmake" => :build
  depends_on "ninja" => :build

  bottle do
    root_url "https://bintray.com/crichardson332/bottles/download_file?file_path="
    cellar :any_skip_relocation
    sha256 "1a99a0d0ffba6bf6652cdd4b9d91aca1bd5e2e2aa346e2d46b3fb8cecce8f668" => :mojave
  end

  def install
    args = std_cmake_args + %W[
      -GNinja
    ]

    mkdir "build" do
      system "cmake", "..", *args
      system "ninja"
      system "ninja", "install"
    end
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test jsbsim`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
