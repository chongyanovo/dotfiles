## Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(
   git
   tmux
   zsh-syntax-highlighting
   zsh-autosuggestions
   aliases
   docker
   docker-compose
   kubectl
   helm
   history
   vscode
   npm
   vagrant
   zoxide
   sudo
   sublime
   minikube
)

source ~/.oh-my-zsh/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
   export EDITOR='nvim'
fi


# ===========================
# ========== Alias ==========
# ===========================
# Alias for clear
alias c="clear"

# Alias for tmux
alias tksa="tmux kill-session -a"
alias tr="tmux source-file ~/.tmux.conf"
alias td="tmux detach"

# Alias for web_search
alias wsb="web_search baidu"
alias ws="web_search google"
alias wsg="web_search google"

# Alias for pfr replacement: pip freezen
alias pfr='pip freeze > requirements.txt'

# Alias for pir replacement: pip install 
alias pir='pip install -r  requirements.txt'

# Alias for ssh
alias smaster='ssh root@master'
alias sslave1='ssh root@slave1'
alias sslave2='ssh root@slave2'

# Alias for ls replacement: eza
alias ls="eza --icons"
alias ll="eza --icons --long --header"
alias la="eza --icons --long --header --all"
alias lg="eza --icons --long --header --all --git"
alias tree="eza --tree --icons"

# Alias for cd replacement: zoxide
eval "$(zoxide init zsh --cmd z)"
eval "$(zoxide init zsh --cmd cd)"

# Alias for cat replacement: bat
export BAT_THEME="Catppuccin Frappe"
export BAT_CONFIG_PATH="${XDG_CONFIG_HOME:-~/.config}/bat.conf"
alias cat="bat"

# Alias for du replacement: dust
alias du="dust"

# Alias for df replacement: duf
alias df="duf"

# Alias for top replacement: btm
alias top="btm"

# =========================================
# ================ Config  ================
# =========================================
# Tmux Config
if [[ $TMUX != "" ]] then
    export TERM="tmux-256color"
else
    export TERM="xterm-256color"
fi
export TMUX_TMPDIR=~/.tmux/tmp

# p10k Config
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# =========================================
# ========== Envirment Variables ==========
# =========================================
# Java Environment Variable
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-8.jdk/Contents/Home
export CLASS_PATH=$JAVA_HOME/lib
export PATH="$JAVA_HOME/bin:$PATH"

# Maven Environment Variable
export MAVEN_HOME=$HOME/env/maven
export PATH="$MAVEN_HOME/bin:$PATH"

# Nacos Environment Variable
export NACOS_HOME=$HOME/env/nacos
export PATH=$PATH:$NACOS_HOME/bin

# Elasticsearch Environment Variable
export ES_HOME=$HOME/env/elasticsearch
export ES_CLUSTER_1_HOME=$ES_HOME/elasticsearch-cluster-1
export ES_CLUSTER_2_HOME=$ES_HOME/elasticsearch-cluster-2
export ES_CLUSTER_3_HOME=$ES_HOME/elasticsearch-cluster-3

# Kibana Environment Variable
export KIBANA_HOME=$HOME/env/kibana
export PATH=$PATH:$KIBANA_HOME/bin

# Go Environment Variable
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin
export GOPATH=$HOME//workspace/go
go env -w GO111MODULE=on
go env -w GOPROXY=https://goproxy.cn

# pyenv Environment Variable
export PYENV_ROOT=$HOME/env/pyenv
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# nvm Environment Variable
export NVM_DIR=$HOME/env/nvm
function _install_nvm() {
  unset -f nvm
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This sets up nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # load nvm bash_completion
  nvm "$@"
}
function nvm() {
    _install_nvm "$@"
}

# Neo4j Environment Variable
export NEO4J_HOME=$HOME/env/neo4j
export PATH=$PATH:$NEO4J_HOME/bin

# ToolBox Environment Variable
export TOOLBOX_HOME=$HOME/tools/toolbox
export PATH="$TOOLBOX_HOME:$PATH"

# ========== Bigdata Envirment Variables ==========
# Scala Environment Variable
export SCALA_HOME=$HOME/env/scala
export PATH=$SCALA_HOME/bin:$PATH

# Hadoop Environment Variable
export HADOOP_HOME=$HOME/env/hadoop
export PATH=$PATH:$HADOOP_HOME/bin
export PATH=$PATH:$HADOOP_HOME/sbin
export HADOOP_CONF_DIR=${HADOOP_HOME}/etc/hadoop
export HADOOP_CLASSPATH=`hadoop classpath`
export HADOOP_INSTALL=$HADOOP_HOME
export HADOOP_MAPRED_HOME=$HADOOP_HOME
export HADOOP_COMMON_HOME=$HADOOP_HOME
export HADOOP_HDFS_HOME=$HADOOP_HOME
export YARN_HOME=$HADOOP_HOME
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native

# Hive Environment Variable
export HIVE_HOME=$HOME/env/hive
export PATH=$PATH:$HIVE_HOME/bin
export HIVE_LOG_DIR=$HIVE_HOME/logs
export HIVE_CONF=$HIVE_HOME/conf
export HIVE_LIB=$HIVE_HOME/lib

# Zookeeper Environment Variable
export ZOOKEEPER_HOME=$HOME/env/zookeeper
export ZOOKEEPER_1_HOME=$ZOOKEEPER_HOME/zookeeper-1
export ZOOKEEPER_2_HOME=$ZOOKEEPER_HOME/zookeeper-2
export ZOOKEEPER_3_HOME=$ZOOKEEPER_HOME/zookeeper-3

# Kafka Environment Variable
export KAFKA_HOME=$HOME/env/kafka
export PATH=$PATH:$KAFKA_HOME/bin

# Spark Environment Variable
export SPARK_HOME=$HOME/env/spark
export PYSPARK_PYTHON=$HOME/env/pyenv/versions/3.8.18/bin/python
export PYSPARK_DRIVER_PYTHON=$HOME/env/pyenv/versions/3.8.18/bin/python
export PATH=$PATH:$SPARK_HOME/bin
export PATH=$PATH:$SPARK_HOME/sbin

# Flink Environment Variable
export FLINK_HOME=$HOME/env/flink
export PATH=$PATH:$FLINK_HOME/bin

# HBase Environment Variable
export HBASE_HOME=$HOME/env/hbase
export PATH=$PATH:$HBASE_HOME/bin

# Phoenix Environment Variable
export PHOENIX_HOME=$HOME/env/phoenix
export PHOENIX_CLASSPATH=$PHOENIX_HOME
export PATH=$PATH:$PHOENIX_HOME/bin

# Sqoop Environment Variable
export SQOOP_HOME=$HOME/env/sqoop
export PATH=$PATH:$SQOOP_HOME/bin

# DataX Environment Variable
export DATAX_HOME=$HOME/env/datax
export PATH=$PATH:$DATAX_HOME/bin

# MySQL Environment Variable
export PATH="/opt/homebrew/opt/mysql@8.0/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/mysql@8.0/lib"
export CPPFLAGS="-I/opt/homebrew/opt/mysql@8.0/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/mysql@8.0/lib/pkgconfig"


# ===========================
# ======== Function =========
# ===========================
# Base Function
function check_process(){
  local process_name=$1
  local pid=$(ps -ef | grep $process_name | grep -v grep | awk '{print $2}')
  echo $pid
}

# Function for Java
function jv(){
  case $1 in
    "version")
      java -version
      ;;
    "home")
      echo $JAVA_HOME
      ;;
    "8")
      echo "Switching to Java 8"
      export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-8.jdk/Contents/Home
      ;;
    "11")
      echo "Switching to Java 11"
      export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home
      ;;
    "17")
      echo "Switching to Java 17"
      export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home
      ;;
    *)
      echo "Usage: jv version|home|8|11|17"
      ;;
  esac
}

# Function for Redis
function redis(){
  case $1 in
    "start")
      redis_start
      ;;
    "stop")
      redis_stop
      ;;
    "restart")
      redis_restart
      ;;
    "status")
      redis_status
      ;;
    *)
      echo "Usage: rd start|stop|restart|status"
      ;;
  esac
}

function redis_start(){
  echo -e " Redis 服务启动中,请等待!"
  brew services start redis
}

function redis_stop(){
  echo -e " Redis 服务停止中,请等待!"
  brew services stop redis
}

function redis_restart(){
  echo -e " Redis 服务重启中,请等待!"
  brew services restart redis
}

function redis_status(){
  echo -e "---------------Redis---------------"
  echo -e " Redis 服务状态如下:"
  brew services info redis
  echo -e "----------------------------------"
}

# Function for MongoDB
function mg(){
  case $1 in
    "start")
      mongo_start
      ;;
    "stop")
      mongo_stop
      ;;
    "restart")
      mongo_restart
      ;;
    "status")
      mongo_status
      ;;
    "shell")
      mongo_shell
      ;;
    *)
      echo "Usage: mongo start|stop|restart|status"
      ;;
  esac
}

function mongo_start(){
  echo -e " MongoDB 服务启动中,请等待!"
  brew services start mongodb-community@7.0
}

function mongo_stop(){
  echo -e " MongoDB 服务停止中,请等待!"
  brew services stop mongodb-community@7.0
}

function mongo_restart(){
  echo -e " MongoDB 服务重启中,请等待!"
  brew services restart mongodb-community@7.0
}

function mongo_status(){
  echo -e "---------------MongoDB---------------"
  echo -e " MongoDB 服务状态如下:"
  brew services info mongodb-community@7.0
  echo -e "------------------------------------"
}

function mongo_shell(){
  mongosh
}


# Function for Neo4j
function n4j(){
  case $1 in
    "start")
      neo4j_start
      ;;
    "stop")
      neo4j_stop
      ;;
    "restart")
      neo4j_restart
      ;;
    "status")
      neo4j_status
      ;;
    "shell")
      neo4j_shell
      ;;
    *)
      echo "Usage: neo4j start|stop|restart|status|shell"
      ;;
  esac
}

function neo4j_start(){
  jv 11
  echo -e " Neo4j 服务启动中,请等待!"
  $NEO4J_HOME/bin/neo4j start
}

function neo4j_stop(){
  jv 11
  echo -e " Neo4j 服务停止中,请等待!"
  $NEO4J_HOME/bin/neo4j stop
}

function neo4j_restart(){
  echo -e " Neo4j 服务重启中,请等待!"
  neo4j_stop
  sleep 2
  neo4j_start
}

function neo4j_status(){
  echo -e "---------------Neo4j---------------"
  echo -e " Neo4j 服务状态如下:"
  check_process neo4j > /dev/null && echo -e " Neo4j 服务运行正常" || echo -e " Neo4j 服务运行异常"
  echo -e "----------------------------------"
}

function neo4j_shell(){
  jv 11
  $NEO4J_HOME/bin/cypher-shell
}


# Function for Jenkins
function jk(){
  case $1 in
    "start")
      jenkins_start
      ;;
    "stop")
      jenkins_stop
      ;;
    "restart")
      jenkins_restart
      ;;
    "status")
      jenkins_status
      ;;
    *)
      echo "Usage: jk start|stop|restart|status"
      ;;
  esac
}

function jenkins_start(){
  echo -e " Jenkins 服务启动中,请等待!"
  brew services start jenkins-lts
}

function jenkins_stop(){
  echo -e " Jenkins 服务停止中,请等待!"
  brew services stop jenkins-lts
}

function jenkins_restart(){
  echo -e " Jenkins 服务重启中,请等待!"
  brew services restart jenkins-lts
}

function jenkins_status(){
  echo -e "---------------Jenkins---------------"
  echo -e " Jenkins 服务状态如下:"
  brew services info jenkins-lts
  echo -e "------------------------------------"
}

# Function for Nacos
function nacos() {
  case $1 in
    "start")
      echo -e " Nacos 服务启动中,请等待!"
      $NACOS_HOME/bin/startup.sh -m standalone
      ;;
    "stop")
      echo -e " Nacos 服务停止中,请等待!"
      $NACOS_HOME/bin/shutdown.sh
      ;;
    "status")
      echo -e "---------------Nacos---------------"
      echo -e " Nacos 服务状态如下:"
      check_process nacos > /dev/null && echo -e " Nacos 服务运行正常" || echo -e " Nacos 服务运行异常"
      echo -e "----------------------------------"
      ;;
    *)
      echo "Usage: nacos start|stop|status"
      ;;
  esac
}

# Function for Elasticsearch
function elk(){
  case $1 in
    "start")
      elk_start
      ;;
    "stop")
      elk_stop
      ;;
    "restart")
      elk_restart
      ;;
    "status")
      elk_status
      ;;
    *)
      echo "Usage: elk start|stop|restart|status"
      ;;
  esac
}
function elk_start(){
  echo -e " Elasticsearch 服务启动中,请等待!"
  echo -e "-------------------------------------------"
  $ES_CLUSTER_1_HOME/bin/elasticsearch -d
  echo -e "-------------------------------------------"
  $ES_CLUSTER_2_HOME/bin/elasticsearch -d
  echo -e "-------------------------------------------"
  $ES_CLUSTER_3_HOME/bin/elasticsearch -d
  echo -e "-------------------------------------------"
}
function elk_stop(){
  echo -e " Elasticsearch 服务停止中,请等待!"
  kill -9 $(lsof -i:9201 | awk '{print $2}')
  kill -9 $(lsof -i:9202 | awk '{print $2}')
  kill -9 $(lsof -i:9203 | awk '{print $2}')
}
function elk_restart(){
  elk_stop
  sleep 2
  elk_start
}
function elk_status(){
  echo -e "---------------Elasticsearch---------------"
  echo -e " Elasticsearch 服务状态如下:"
  if [ -n "$(check_process elasticsearch)" ]; then
    echo -e " Elasticsearch 服务运行正常"
  else
    echo -e " Elasticsearch 服务运行异常"
  fi
  echo -e "-------------------------------------------"
}


# Function for Kibana
function kb(){
  case $1 in
    "start")
      kb_start
      ;;
    "stop")
      kb_stop
      ;;
    "restart")
      kb_restart
      ;;
    "status")
      kb_status
      ;;
    *)
      echo "Usage: kb start|stop|restart|status"
      ;;
  esac
}
# 后台启动Kibana
function kb_start(){
  echo -e " Kibana 服务启动中,请等待!"
  nohup $KIBANA_HOME/bin/kibana > $KIBANA_HOME/logs/kibana.log 2>&1 &
}
function kb_stop(){
  echo -e " Kibana 服务停止中,请等待!"
  kill -9 $(lsof -i:5601 | awk '{print $2}')
}
function kb_restart(){
  kb_stop
  sleep 2
  kb_start
}
function kb_status(){
  echo -e "---------------Kibana---------------"
  echo -e " Kibana 服务状态如下:"
  if [ -n "$(check_process kibana)" ]; then
    echo -e " Kibana 服务运行正常"
  else
    echo -e " Kibana 服务运行异常"
  fi
  echo -e "----------------------------------"
}

# Function for Bigdata
function bigdata() {
  case $1 in
    "start")
      echo -e " Bigdata 相关服务启动中,请等待!"
      my start
      hdp start
      hv start
      # sp start
      ;;
    "stop")
      echo -e " Bigdata 相关服务停止中,请等待!"
      # sp stop
      hv stop
      hdp stop
      my stop
      ;;
    "status")
      echo -e " Bigdata 相关服务状态如下:"
      my status
      hdp status
      hv status
      # sp status
      ;;
    *)
      echo "Usage: bigdata start|stop|status"
      ;;
  esac
}

# Function for MySQL
function my() {
  case $1 in
    "start")
      echo -e " MySQL 服务启动中,请等待!"
      brew services start mysql@8.0
      ;;
    "stop")
      echo -e " MySQL 服务停止中,请等待!"
      brew services stop mysql@8.0
      ;;
    "restart")
      echo -e " MySQL 服务重启中,请等待!"
      brew services restart mysql@8.0
      ;;
    "status")
      echo -e "---------------MySQL---------------"
      echo -e " MySQL 服务状态如下:"
      brew services info mysql@8.0
      echo -e "-----------------------------------"
      ;;
    *)
      echo "Usage: mysql start|stop|restart|status"
      ;;
  esac
}

# Function for Hadoop
function hdp() {
  case $1 in
    "start")
      echo -e " Hadoop 服务启动中,请等待!"
      echo -e "------------------------------------"
      start_dfs
      echo -e "------------------------------------"
      start_yarn
      echo -e "------------------------------------"
      start_historyserver
      ;;
    "stop")
      echo -e " Hadoop 服务停止中,请等待!"
      stop_historyserver
      echo -e "------------------------------------"
      stop_yarn
      echo -e "------------------------------------"
      stop_dfs
      echo -e "------------------------------------"
      ;;
    "restart")
      echo -e " Hadoop 服务重启中,请等待!"
      echo -e "------------------------------------"
      stop-yarn.sh
      echo -e "------------------------------------"
      stop-dfs.sh
      echo -e "------------------------------------"
      sleep 2
      start-dfs.sh
      echo -e "------------------------------------"
      start-yarn.sh
      echo -e "------------------------------------"
      ;;
    "status")
      echo -e "---------------Hadoop---------------"
      echo -e " Hadoop 服务状态如下:"
      jps | grep NameNode > /dev/null && echo -e " NameNode 服务运行正常" || echo -e " NameNode 服务运行异常"
      jps | grep SecondaryNameNode >/dev/null && echo -e " SecondaryNameNode 服务运行正常" || echo -e " SecondaryNameNode 服务运行异常"
      jps | grep DataNode > /dev/null && echo -e " DataNode 服务运行正常" || echo -e " DataNode 服务运行异常"
      jps | grep ResourceManager > /dev/null && echo -e " ResourceManager 服务运行正常" || echo -e " ResourceManager 服务运行异常"
      jps | grep NodeManager > /dev/null && echo -e " NodeManager 服务运行正常" || echo -e " NodeManager 服务运行异常"
      jps | grep JobHistoryServer > /dev/null && echo -e " JobHistoryServer 服务运行正常" || echo -e " JobHistoryServer 服务运行异常"
      echo -e "------------------------------------"
      ;;
    *)
      echo "Usage: hdp start|stop|restart|status"
      ;;
  esac
}
function start_dfs(){
  start-dfs.sh
}
function stop_dfs(){
  stop-dfs.sh
}
function start_yarn(){
  start-yarn.sh
}
function stop_yarn(){
  stop-yarn.sh
}
function start_historyserver(){
  $HADOOP_HOME/bin/mapred --daemon start historyserver
}
function stop_historyserver(){
  $HADOOP_HOME/bin/mapred --daemon stop historyserver
}

# Function for Hive
function hv() {
  case $1 in
  "start")
    hive_start
    ;;

  "stop")
    hive_stop
    ;;

  "restart")
    hive_restart
    ;;
  "status")
    hive_status
    ;;
  "beeline")
    hive_beeline
    ;;
  *)
    echo "Usage: hv start|stop|restart|status"
    ;;
  esac
}
function hive_start(){
  echo -e " 服务启动中,HiveServer2启动时间较长,请等待!"
	# 启动Metastore
	metapid=$(check_process metastore)
	cmd="nohup hive --service metastore >$HIVE_LOG_DIR/metastore.log 2>&1 &"
	[ -z "$metapid" ] && eval $cmd || echo -e "hiveserver2 Metastroe 服务已启动"

	# 启动HiveServer2
	server2pid=$(check_process hiveserver2)
	cmd="nohup hiveserver2 >$HIVE_LOG_DIR/hiveServer2.log 2>&1 &"
	[ -z "$server2pid" ] && eval $cmd || echo -e "HiveServer2 服务已启动"

}
function hive_stop(){
  echo -e " 服务停止中,请等待!"
	# 停止Metastore
	metapid=$(check_process metastore)
	[ "$metapid" ] && kill $metapid || echo -e " Metastore 服务未启动"

	# 停止HiveServer2
	server2pid=$(check_process hiveserver2)
	[ "$server2pid" ] && kill $server2pid || echo -e " HiveServer2 服务未启动"
}
function hive_restart(){
  echo -e " 服务重启中,HiveServer2启动时间较长,请等待!"
  hive_stop
  sleep 2
  hive_start
}
function hive_status(){
  echo -e "---------------Hive---------------"
  echo -e " Hive 服务状态如下:"
  check_process metastore > /dev/null && echo -e " Metastore 服务运行正常" || echo -e " Metastore 服务运行异常"
  check_process hiveserver2 > /dev/null && echo -e " HiveServer2 服务运行正常" || echo -e " HiveServer2 服务运行异常"
  echo -e "-----------------------------------"
}
function hive_beeline(){
  beeline -u jdbc:hive2://localhost:10000
}

# Function for Zookeeper
function zk() {
  case $1 in
    "start")
      zookeeper_start
      ;;
    "stop")
      zookeeper_stop
      ;;
    "restart")
      zookeeper_restart
      ;;
    "status")
      zookeeper_status
      ;;
    "cli")
      zookeeper_cli
      ;;
    *)
      echo "Usage: zk start|stop|restart|status|cli"
      ;;
  esac
}
function zookeeper_start(){
  echo -e " Zookeeper 服务启动中,请等待!"
  echo -e "---------------------------------------"
  $ZOOKEEPER_1_HOME/bin/zkServer.sh start $ZOOKEEPER_1_HOME/conf/zoo.cfg
  echo -e "---------------------------------------"
  $ZOOKEEPER_2_HOME/bin/zkServer.sh start $ZOOKEEPER_2_HOME/conf/zoo.cfg
  echo -e "---------------------------------------"
  $ZOOKEEPER_3_HOME/bin/zkServer.sh start $ZOOKEEPER_3_HOME/conf/zoo.cfg
  echo -e "---------------------------------------"
}
function zookeeper_stop(){
  echo -e " Zookeeper 服务停止中,请等待!"
  echo -e "---------------------------------------"
  $ZOOKEEPER_1_HOME/bin/zkServer.sh stop
  echo -e "---------------------------------------"
  $ZOOKEEPER_2_HOME/bin/zkServer.sh stop
  echo -e "---------------------------------------"
  $ZOOKEEPER_3_HOME/bin/zkServer.sh stop
  echo -e "---------------------------------------"
}
function zookeeper_restart(){
  echo -e " Zookeeper 服务重启中,请等待!"
  zookeeper_stop
  sleep 2
  zookeeper_start
}
function zookeeper_status(){
  echo -e "---------------Zookeeper---------------"
  echo -e " Zookeeper 服务状态如下:"
  jps -ml | grep zookeeper |grep $ZOOKEEPER_1_HOME/conf/zoo.cfg > /dev/null && echo -e " Zookeeper-1 服务运行正常" || echo -e " Zookeeper-1 服务运行异常"
  jps -ml | grep zookeeper |grep $ZOOKEEPER_2_HOME/conf/zoo.cfg > /dev/null && echo -e " Zookeeper-2 服务运行正常" || echo -e " Zookeeper-2 服务运行异常"
  jps -ml | grep zookeeper |grep $ZOOKEEPER_3_HOME/conf/zoo.cfg > /dev/null && echo -e " Zookeeper-3 服务运行正常" || echo -e " Zookeeper-3 服务运行异常"
  echo -e "---------------------------------------"
}
function zookeeper_cli(){
  $ZOOKEEPER_1_HOME/bin/zkCli.sh -server localhost:2181,localhost:2182,localhost:2183
}

# Function for Kafka
function kf() {
  case $1 in
    "start")
      kafka_start
      ;;
    "stop")
      kafka_stop
      ;;
    "restart")
      echo -e " Kafka 服务重启中,请等待!"
      kafka_restart
      ;;
    "status")
      kafka_status
      ;;
    *)
      echo "Usage: kf start|stop|restart|status"
      ;;
  esac
}

function kafka_start(){
  echo -e " Kafka 服务启动中,请等待!"
  $KAFKA_HOME/bin/kafka-server-start.sh -daemon $KAFKA_HOME/config/server-1.properties
  $KAFKA_HOME/bin/kafka-server-start.sh -daemon $KAFKA_HOME/config/server-2.properties
  $KAFKA_HOME/bin/kafka-server-start.sh -daemon $KAFKA_HOME/config/server-3.properties
}
function kafka_stop(){
  echo -e " Kafka 服务停止中,请等待!"
  $KAFKA_HOME/bin/kafka-server-stop.sh
}
function kafka_restart(){
  kafka_stop
  sleep 2
  kafka_start
}
function kafka_status(){
  echo -e "---------------Kafka---------------"
  echo -e " Kafka 服务状态如下:"
  jps -ml | grep kafka |grep $KAFKA_HOME/config/server-1.properties > /dev/null && echo -e " Kafka-1 服务运行正常" || echo -e " Kafka-1 服务运行异常"
  jps -ml | grep kafka |grep $KAFKA_HOME/config/server-2.properties > /dev/null && echo -e " Kafka-2 服务运行正常" || echo -e " Kafka-2 服务运行异常"
  jps -ml | grep kafka |grep $KAFKA_HOME/config/server-3.properties > /dev/null && echo -e " Kafka-3 服务运行正常" || echo -e " Kafka-3 服务运行异常"
  echo -e "----------------------------------"
}

# Function for Spark
function sp() {
  case $1 in
    "start")
      spark_start
      ;;
    "stop")
      spark_stop
      ;;
    "restart")
      spark_restart
      ;;
    "status")
      spark_status
      ;;
    *)
      echo "Usage: sp start|stop|restart|status"
      ;;
  esac
}
function spark_start(){
  echo -e " Spark 服务启动中,请等待!"
  $SPARK_HOME/sbin/start-master.sh
  echo -e "---------------------------------------"
  $SPARK_HOME/sbin/start-slaves.sh
  echo -e "---------------------------------------"
}
function spark_stop(){
  echo -e " Spark 服务停止中,请等待!"
  $SPARK_HOME/sbin/stop-slaves.sh
  echo -e "---------------------------------------"
  $SPARK_HOME/sbin/stop-master.sh
  echo -e "---------------------------------------"
}
function spark_restart(){
  echo -e " Spark 服务重启中,请等待!"
  spark_stop
  sleep 2
  spark_start
}
function spark_status(){
  echo -e "---------------Spark---------------"
  echo -e " Spark 服务状态如下:"
  jps -ml | grep Master > /dev/null && echo -e " Master 服务运行正常" || echo -e " Master 服务运行异常"
  jps -ml | grep Worker > /dev/null && echo -e " Worker 服务运行正常" || echo -e " Worker 服务运行异常"
  echo -e "----------------------------------"
}

# Function for Flink
function fl() {
  case $1 in
    "start")
      flink_start
      ;;
    "stop")
      flink_stop
      ;;
    "restart")
      flink_restart
      ;;
    "status")
      flink_status
      ;;
    "sql")
      flink_sql
      ;;
    *)
      echo "Usage: fl start|stop|restart|status|sql"
      ;;
  esac
}
function flink_start(){
  echo -e " Flink Standalone 服务启动中,请等待!"
  $FLINK_HOME/bin/start-cluster.sh
  echo -e "----------------------------------"
  echo -e " Flink on Yarn 服务启动中,请等待!"
  $FLINK_HOME/bin/yarn-session.sh -d > /dev/null
  echo -e "----------------------------------"
}
function flink_stop(){
  echo -e " Flink 服务停止中,请等待!"
  $FLINK_HOME/bin/stop-cluster.sh
  echo -e "----------------------------------"
  echo -e "Flink on Yarn 服务停止中,请等待!"
  app_id=$(yarn application -list | grep "Flink session cluster" | awk '{print $1}')
  yarn application -kill $app_id
  echo -e "----------------------------------"
}
function flink_restart(){
  echo -e " Flink 服务重启中,请等待!"
  flink_stop
  sleep 2
  flink_start
}
function flink_status(){
  echo -e "---------------Flink---------------"
  echo -e " Flink 服务状态如下:"
  jps -ml | grep YarnSessionClusterEntrypoint > /dev/null && echo -e " Flink on Yarn 服务运行正常" || echo -e " Flink on Yarn 服务运行异常"
  jps -ml | grep StandaloneSessionClusterEntrypoint > /dev/null && echo -e " Flink Standalone 服务运行正常" || echo -e " Flink Standalone 服务运行异常"
  echo -e "----------------------------------"
}
function flink_sql(){
  echo " --------开启 Flink SQL...-------"
  $FLINK_HOME/bin/sql-client.sh embedded -s yarn-session
}

# Function for HBase
function hb() {
  case $1 in
    "start")
      hbase_start
      ;;
    "stop")
      hbase_stop
      ;;
    "restart")
      hbase_restart
      ;;
    "status")
      hbase_status
      ;;
    *)
      echo "Usage: hb start|stop|restart|status"
      ;;
  esac
}
function hbase_start(){
  echo -e " HBase 服务启动中,请等待!"
  $HBASE_HOME/bin/start-hbase.sh
}
function hbase_stop(){
  echo -e " HBase 服务停止中,请等待!"
  $HBASE_HOME/bin/stop-hbase.sh
}
function hbase_restart(){
  echo -e " HBase 服务重启中,请等待!"
  hbase_stop
  sleep 2
  hbase_start
}
function hbase_status(){
  echo -e "---------------HBase---------------"
  echo -e " HBase 服务状态如下:"
  jps -ml | grep HMaster > /dev/null && echo -e " HMaster 服务运行正常" || echo -e " HMaster 服务运行异常"
  jps -ml | grep HRegionServer > /dev/null && echo -e " HRegionServer 服务运行正常" || echo -e " HRegionServer 服务运行异常"
  echo -e "----------------------------------"
}

# Function for Phoenix
function ph(){
  $PHOENIX_HOME/bin/sqlline.py localhost:2181
}

# Function for DataX
function datax() {
  python $DATAX_HOME/bin/datax.py $@
}

# Init
# typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
# fastfetch 
