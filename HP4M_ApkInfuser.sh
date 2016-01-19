DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
DIR=/home/travis/build/mcfortravis/nodeTest/hpmc/AndroidTools
$DIR/ApkInfuser/ApkInfuser.sh ${1+"$@"}
