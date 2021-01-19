
# Chef::Log.fatal("

# java::openjdk recipe is now deprecated
# Using the openjdk_install resource is now recommended
# See: https://github.com/sous-chefs/java/blob/master/documentation/resources/openjdk_install.md for help

# ")

# raise 'Recipe used instead of custom resource'

openjdk_install '11' do
    action :install
    java_home '/usr/lib/java'
end

# java_alternatives "set java alternatives" do
#     java_location '/usr/local/java'
#     bin_cmds : ["java", "javac"]
#     action : set
#     java_home : '/usr/lib/java'
# end

# set alternatives for java and javac commands
java_alternatives 'set java alternatives' do
    java_location '/usr/lib/java'
    bin_cmds ["java", "javac"]
    action :set
end