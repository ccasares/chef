#package 'cowsay' do
#  action :install
#end

package 'tree' do
  action :install
end

# a pelo
#file '/etc/motd' do
#
#  IPADDRESS = `hostname -I | awk -F' ' '{print $2}'`
#  HOSTNAME = `hostname`
#  MEMORY = `cat /proc/meminfo | grep MemTotal | awk -F':' '{print $2}' | sed -e 's/^[ \t]*//'`
#
#  content "Property of Casares
#    IPADDRESS=#{IPADDRESS}
#    HOSTNAME=#{HOSTNAME}
#    MEMORY=#{MEMORY}
#  "
#end

# con ohai

file '/etc/motd' do
  content "Property of Casares
    IPADDRESS=#{node['ipaddress']}
    HOSTNAME=#{node['hostname']}
    MEMORY=#{node['memory']['total']}
  "
end

