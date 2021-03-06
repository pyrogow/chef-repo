#
# Cookbook:: homebrew
# Recipes:: install_casks
#
# Copyright:: 2014-2019, Chef Software, Inc <legal@chef.io>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'homebrew'

node['homebrew']['formulas'].each do |formula|
  if formula.class == Chef::Node::ImmutableMash
    formula_options = formula.fetch(:options, '')
    formula_options += ' --HEAD' if formula.fetch(:head, false)
    package formula.fetch(:name) do
      options formula_options.strip
      version formula['version'] if formula.fetch(:version, false)
    end
  else
    package formula
  end
end
