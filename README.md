# Scrimmage - macOS

To build scrimmage from source on macOS, you must have command line tools
installed. If you have never done so, paste this command into a Terminal prompt
and hit enter:

    $ xcode-select --install

## Dependencies

### Install Homebrew

SCRIMMAGE's dependencies are managed using the [Homebrew](https://brew.sh/)
package manager. To install Homebrew, either follow the instructions on the
website, or type the following command into a Terminal prompt:

    $ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

### Installing dependencies

Homebrew can be used to easily install all of SCRIMMAGE's dependencies. First,
add the SCRIMMAGE homebrew tap. Then install all dependencies:

    $ brew tap crichardson332/crich_brews
    $ brew install $(brew deps scrimmage)

To list info about the SCRIMMAGE homebrew package or just list depdendencies
for SCRIMMAGE:

    $ brew info scrimmage
    $ brew deps scrimmage

## Building SCRIMMAGE

### Clone and build

SCRIMMAGE is built with [CMake](https://cmake.org/). Clone down the SCRIMMAGE
repository and build with the standard CMake commands:

    $ git clone https://github.com/gtri/scrimmage
    $ cd /path/to/scrimmage/repo
    $ mkdir build
    $ cd build
    $ cmake ..
    $ make
    $ source ~/.scrimmage/setup.bash

### Run

Run an example SCRIMMAGE sim:

    $ cd /path/to/scrimmage/repo
    $ scrimmage missions/straight.xml

Tutorials and examples can be found on the [SCRIMMAGE website.](http://www.scrimmagesim.org/docs/sphinx/html/index.html)
