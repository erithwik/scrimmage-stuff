# Documentation: https://docs.brew.sh/Formula-Cookbook
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Scrimmage < Formula
  desc "Multi-Agent Robotics Simulator"
  homepage "https://www.scrimmagesim.org"
  url "https://github.com/crichardson332/scrimmage/archive/v0.2.101.tar.gz"
  sha256 "bb5bf58a32f72637b0c96d7fc9f7cad9718ba769d380d815f16f36ccf0c15f83"

  # dependencies
  depends_on "autoconf"
  depends_on "automake"
  depends_on "bullet"
  depends_on "boost@1.60"
  depends_on "ccache" => :build
  depends_on "cmake" => :build
  depends_on "doxygen"
  depends_on "eigen"
  depends_on "gcc"
  depends_on "geographiclib"
  depends_on "graphviz"
  depends_on "grpc" => :optional
  depends_on "libtool"
  depends_on "ninja" => :build
  depends_on "parallel"
  depends_on "protobuf"
  depends_on "pybind11" => :optional
  depends_on "python"
  depends_on "rapidxml"
  depends_on "unzip"
  depends_on "vtk@6.2"
  depends_on "wxpython"
  depends_on "opencv" => :optional

  def install
    args = std_cmake_args + %W[
      -GNinja
      -DBUILD_TESTS=on
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
    # software. Run the test with `brew test scrimmage`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
