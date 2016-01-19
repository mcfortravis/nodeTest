DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
echo =======================
echo $DIR
echo =======================
DIR=/home/travis/build/mcfortravis/nodeTest/hpmc/AndroidTools
$DIR/ApkInfuser/ApkInfuser.sh ${1+"$@"}
