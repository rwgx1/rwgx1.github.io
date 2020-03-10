# https://raw.githubusercontent.com/teohm/dotfiles/master/public/.functions.d/sshuttle.bash
# sshuttle helpers

# set default SSH server:
#   user@hostname or a host in ~/.ssh/config
TNL_SERVER=default_ssh

# tunnel all traffic including DNS
alias tnl="sshuttle --dns -vr $TNL_SERVER 0/0"

# returns a list of IP addresses from given domain(s).
#
# Examples:
#  dns2ip google.com
#  dns2ip netflix.com movies.netflix.com
#
function dns2ip() {
  dig +short $* | sed "/[^0-9\.]/d" # use sed to remove non-IPv4 line e.g. alias
}

# tunnel specified domain(s) only.
#
# Examples:
#  tnlonly google.com
#  tnlonly netflix.com movies.netflix.com
#
function tnlonly() {
  sshuttle -vr $TNL_SERVER `dns2ip $*`;
}

# tunnel all traffic including DNS, except the specified domain(s).
#
# Examples:
#  tnlbut youku.com
#  tnlbut youku.com weibo.com
#
function tnlbut() {
  sshuttle --dns -vr $TNL_SERVER `dns2ip $* | sed "s/^/-x/"` 0/0; # use sed to append '-x' prefix
}

# vpn to a ssh server.
#
# Examples:
#  vpnto my_office_server      # host in ~/.ssh/config
#  vpnto user@123.123.123.123
#
function vpnto() {
  sshuttle -HNvr $1;
}

#


#sshuttle -vvvv -r rwg@192.168.40.249 -x 192.168.40.249 0/0  # Brian May - noless
#man sshuttle
#sshuttle -vvvv -r rwg@192.168.40.249 -x 192.168.40.0 10.0.168.0/24  # Brian May - noless
#sshuttle -vvvv -r rwg@192.168.40.249 -x 192.168.40.0 ferroser-robliza.dyndns.org/32  # Brian May - noless
#sshuttle -vvvv -r rwg@192.168.40.249 -x 192.168.40.0 ferroser-robliza.dyndns.org  # Brian May - noless
#sshuttle -vvvv -r rwg@192.168.40.249 -x 192.168.40.0 88.31.44.168/32  # Brian May - noless
#sshuttle  -vvvr mplsaccess 0/0
#sshuttle  -vvvr rwg@lp1a
#sshuttle  -vvvr rwg@lp1a 0/0
#nano sshuttle.bash
#source sshuttle.bash 
#history | grep sshuttle

### 16/10/2019 ####
#sshuttle -vr rwg@192.168.40.249 -x 192.168.40.0 52.169.12.1/32  # can then ssh hejb1 OK

