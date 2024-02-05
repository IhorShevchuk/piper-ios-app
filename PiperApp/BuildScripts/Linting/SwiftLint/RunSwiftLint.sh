#!/bin/sh -x -e

if  [ "$1" == "--fix" ] && [ ! -z "$CI_BUILD" ]; then
   echo "No automatic fixing on Jenkins! Skipping"
   exit 0
fi

if [ "$ENABLE_PREVIEWS" = "YES" ] ; then
   echo "No automatic fixing during SwiftUI preview build! Skipping"
   exit 0
fi

if which swiftlint >/dev/null; then
    swiftlint $1 --config $(dirname "$0")/swiftlint.yml
else
   # If SwiftLint was installed via brew it is needed to make symbolic lynk from SwiftLint in brew path to system path:
   # You may use next command to do this:
   # sudo ln -s /opt/homebrew/bin/swiftlint /usr/local/bin/
   echo "warning: SwiftLint not installed"
fi
