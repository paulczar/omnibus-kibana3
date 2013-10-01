#
# Copyright:: Copyright (c) 2012 Opscode, Inc.
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

name "kibana3"
version "HEAD"
dependency "rsync"
dependency "openssl"
dependency "libxml2"
dependency "libxslt"
dependency "nginx"
dependency "runit"


source :url => "https://download.elasticsearch.org/kibana/kibana/kibana-latest.tar.gz",
       :md5 => "dc6db2216b1f6671c711d7d49588b29d"

relative_path "kibana-latest"

build do
  command "/bin/mkdir -p #{install_dir}/html"
  command "#{install_dir}/embedded/bin/rsync -av . #{install_dir}/html/"
end
