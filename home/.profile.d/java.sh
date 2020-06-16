###
# Java setup
##

for v in {7..15}; do
  V=$v
  [ $v -lt 10 ] && V=1.$v

  alias java$v="export JAVA_HOME=\$(/usr/libexec/java_home -v$V)"
done
unset v V

export JAVA_HOME=$(/usr/libexec/java_home)
