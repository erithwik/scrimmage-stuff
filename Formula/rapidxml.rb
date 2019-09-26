# Documentation: https://docs.brew.sh/Formula-Cookbook
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Rapidxml < Formula
  desc "RapidXML fork; XML namespacing, per-element parsing, etc"
  homepage "http://rapidxml.sourceforge.net/"
  url "https://github.com/crichardson332/rapidxml/archive/v1.13.tar.gz"
  sha256 "bc4103ea52fd564aaadd4302c5dfa73b39af460623cfceb1f6cbd5f9ec5f8f83"

  bottle do
    root_url "https://bintray.com/crichardson332/bottles/download_file?file_path="
    cellar :any_skip_relocation
    sha256 "f18362484e7a167641150cea7bb4276644cecf0b224a33521226b173951230c4" => :mojave
  end

  depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "make"
      system "make", "install"
    end
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test rapidxml`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
