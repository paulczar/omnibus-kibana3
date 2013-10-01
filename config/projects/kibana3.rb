
name "kibana3"
maintainer "Paul Czarkowski"
homepage "tech.paulcz.net"

replaces        "kibana3"
install_path    "/opt/kibana3"
build_version   Omnibus::BuildVersion.new.semver
build_iteration 1

# creates required build directories
dependency "preparation"

# kibana3 dependencies/components
dependency "kibana3"
dependency "kibana3-extras"

# version manifest file
dependency "version-manifest"

exclude "\.git*"
exclude "bundler\/git"
