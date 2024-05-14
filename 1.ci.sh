#!/usr/bin/env bash
set -x
export CMD_PATH=$(cd `dirname $0`; pwd)
export PROJECT_NAME="${CMD_PATH##*/}"
echo $PROJECT_NAME
cd $CMD_PATH

echo "hello world"
cd ~
git clone -b dev_240514_10 --depth 1 https://github.com/es366/10007-logstash.git logstash
cd logstash
ls -al
ruby -v
export OSS=true
export LOGSTASH_SOURCE=1
export LOGSTASH_PATH=~/logstash
./gradlew installDevelopmentGems -DskipTests=true
./gradlew installDefaultGems
./gradlew build









# ./gradlew localDistro
# ./gradlew :distribution:archives:linux-tar:assembl

# tree -L 3
# ls -al build/distribution/local/

# cd build/distribution/local/

# tar cf elasticsearch-8.13.4-SNAPSHOT.tar elasticsearch-8.13.4-SNAPSHOT
# ls -al  
# file elasticsearch-8.13.4-SNAPSHOT.tar
# cp elasticsearch-8.13.4-SNAPSHOT.tar ~/
# cd ~/elasticsearch
# file build/distribution/local/elasticsearch-8.13.4-SNAPSHOT.tar
# file ~/elasticsearch-8.13.4-SNAPSHOT.tar
