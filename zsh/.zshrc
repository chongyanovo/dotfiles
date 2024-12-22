# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme
# ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(
tmux
  git
  web-search
  jsontools
  extract
  colored-man-pages
  aliases
  docker
  docker-compose
  kubectl
  history
  vscode
  zoxide
  sudo
  buf
  golang
)

# oh-my-zsh
source ~/.oh-my-zsh/oh-my-zsh.sh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

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
# Alias for vim
alias v="nvim"
alias vi="nvim"
alias vim="nvim"

# Alias for tmux
alias update_tmux="tmux source ~/.tmux.conf"

# Alias for extract
alias x="extract"

# Alias for clear
alias c="clear"

# Alias for web_search
alias wsb="web_search baidu"
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

# Sbt Environment Variable
export SBT_HOME=$HOME/env/sbt
export PATH="$SBT_HOME/bin:$PATH"

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
export GOPATH=$HOME/env/go
export GOROOT=$HOME/sdk/go1.22
export PATH=$PATH:$GOROOT/bin
# export PATH="/opt/homebrew/Cellar/go@1.22/1.22.10/bin"
export GO111MODULE=on
export GOPROXY="https://goproxy.cn,direct"
export GOPRIVATE="*.ucloudadmin.com"
export GONOPROXY="*.ucloudadmin.com"
export GONOSUMDB="*.ucloudadmin.com"

# pyenv Environment Variable
export PYENV_ROOT=$HOME/env/pyenv
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# NVM Environment Variable
export NVM_DIR="$HOME/.nvm"
function load_nvm() {
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"                                       # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion
}
nvm() {
  . "$NVM_DIR/nvm.sh"
  nvm $@
}

# pnpm Environment Variable
export PNPM_HOME="/Users/chongyan/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac


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
export HADOOP_CLASSPATH=$(hadoop classpath)
export HADOOP_INSTALL=$HADOOP_HOME
export HADOOP_MAPRED_HOME=$HADOOP_HOME
export HADOOP_COMMON_HOME=$HADOOP_HOME
export HADOOP_HDFS_HOME=$HADOOP_HOME
export YARN_HOME=$HADOOP_HOME
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native

# Hudi Environment Variable
export HUDI_HOME=$HOME/env/hudi
export PATH=$PATH:$HUDI_HOME/bin

# Hive Environment Variable
export HIVE_HOME=$HOME/env/hive
export PATH=$PATH:$HIVE_HOME/bin
export HIVE_LOG_DIR=$HIVE_HOME/logs
export HIVE_CONF=$HIVE_HOME/conf
export HIVE_LIB=$HIVE_HOME/lib

# Zookeeper Environment Variable
export ZOOKEEPER_HOME=$HOME/env/zookeeper
export PATH=$PATH:$ZOOKEEPER_HOME/bin

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

# Canal Environment Variable
export CANAL_HOME=$HOME/env/canal

# Canal Admin Environment Variable
export CANAL_ADMIN_HOME=$HOME/env/canal-admin

# MySQL Environment Variable
export PATH="/opt/homebrew/opt/mysql@8.0/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/mysql@8.0/lib"
export CPPFLAGS="-I/opt/homebrew/opt/mysql@8.0/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/mysql@8.0/lib/pkgconfig"

# PostgreSQL Environment Variable
export PATH="/opt/homebrew/opt/postgresql@13/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/postgresql@13/lib"
export CPPFLAGS="-I/opt/homebrew/opt/postgresql@13/include"

# Prometheus Environment Variable
export PROMETHEUS_HOME=$HOME/env/prometheus
export PROMETHEUS_DATA=$PROMETHEUS_HOME/data
export PROMETHEUS_LOG=$PROMETHEUS_HOME/log/prometheus.log

# Grafana Environment Variable
export GRAFANA_HOME=$HOME/env/grafana
export GRAFANA_LOG=$GRAFANA_HOME/log/grafana.log

# pushgateway Environment Variable
export PUSHGATEWAY_HOME=$HOME/env/pushgateway
export PUSHGATEWAY_LOG=$HOME/env/pushgateway/log/pushgateway.log

# node_exporter Environment Variable
export NODE_EXPORTER_HOME=$HOME/env/node_exporter
export NODE_EXPORTER_LOG=$HOME/env/node_exporter/log/node_exporter.log

# ===========================
# ======== Function =========
# ===========================
# Base Function
function check_process() {
  local process_name=$1
  local pid=$(ps -ef | grep $process_name | grep -v grep | awk '{print $2}')
  echo $pid
}

# Function for Brew Service
function svc() {
  case $1 in
  "list")
    brew services list
    ;;
  *)
    echo "Usage: brew service list"
    ;;
  esac
}

# Function for Java
function jv() {
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

# Function for MySQL
function my() {
  case $1 in
  "start")
    echo -e "MySQL 服务启动中,请等待..."
    brew services start mysql@8.0
    ;;
  "stop")
    echo -e "MySQL 服务停止中,请等待..."
    brew services stop mysql@8.0
    ;;
  "restart")
    echo -e "MySQL 服务重启中,请等待!"
    brew services restart mysql@8.0
    ;;
  "status")
    echo -e "---------------MySQL---------------"
    echo -e "MySQL 服务状态如下:"
    brew services info mysql@8.0
    echo -e "-----------------------------------"
    ;;
  *)
    echo "Usage: MySQL start|stop|restart|status"
    ;;
  esac
}

# Function for PostgreSQL
function pg() {
  case $1 in
  "start")
    echo -e "PostgreSQL 服务启动中,请等待..."
    brew services start postgresql@13
    ;;
  "stop")
    echo -e "PostgreSQL 服务停止中,请等待..."
    brew services stop postgresql@13
    ;;
  "restart")
    echo -e "PostgreSQL 服务重启中,请等待!"
    brew services restart postgresql@13
    ;;
  "status")
    echo -e "---------------MySQL---------------"
    echo -e "PostgreSQL 服务状态如下:"
    brew services info postgresql@13
    echo -e "-----------------------------------"
    ;;
  *)
    echo "Usage: PostgreSQL start|stop|restart|status"
    ;;
  esac
}

# Function for Redis
function redis() {
  case $1 in
  "start")
    echo -e "Redis 服务启动中,请等待..."
    brew services start redis
    ;;
  "stop")
    echo -e "Redis 服务停止中,请等待..."
    brew services stop redis
    ;;
  "restart")
    echo -e "Redis 服务重启中,请等待!"
    brew services restart redis
    ;;
  "status")
    echo -e "---------------Redis---------------"
    echo -e "Redis 服务状态如下:"
    brew services info redis
    echo -e "----------------------------------"
    ;;
  *)
    echo "Usage: rd start|stop|restart|status"
    ;;
  esac
}

# Function for MongoDB
function mg() {
  case $1 in
  "start")
    echo -e "MongoDB 服务启动中,请等待..."
    brew services start mongodb-community@7.0
    ;;
  "stop")
    echo -e "MongoDB 服务停止中,请等待..."
    brew services stop mongodb-community@7.0
    ;;
  "restart")
    echo -e "MongoDB 服务重启中,请等待!"
    brew services restart mongodb-community@7.0
    ;;
  "status")
    echo -e "---------------MongoDB---------------"
    echo -e "MongoDB 服务状态如下:"
    brew services info mongodb-community@7.0
    echo -e "------------------------------------"
    ;;
  "shell")
    mongosh
    ;;
  *)
    echo "Usage: mongo start|stop|restart|status"
    ;;
  esac
}

# Function for Neo4j
function n4j() {
  case $1 in
  "start")
    jv 11
    echo -e "Neo4j 服务启动中,请等待..."
    $NEO4J_HOME/bin/neo4j start
    ;;
  "stop")
    jv 11
    echo -e "Neo4j 服务停止中,请等待..."
    $NEO4J_HOME/bin/neo4j stop
    ;;
  "restart")
    echo -e "Neo4j 服务重启中,请等待!"
    n4j stop
    sleep 2
    n4j start
    ;;
  "status")
    echo -e "---------------Neo4j---------------"
    echo -e "Neo4j 服务状态如下:"
    check_process neo4j >/dev/null && echo -e "Neo4j 服务运行正常" || echo -e "Neo4j 服务运行异常"
    echo -e "----------------------------------"
    ;;
  "shell")
    jv 11
    $NEO4J_HOME/bin/cypher-shell
    ;;
  *)
    echo "Usage: neo4j start|stop|restart|status|shell"
    ;;
  esac
}

# Function for Jenkins
function jekins() {
  case $1 in
  "start")
    echo -e "Jenkins 服务启动中,请等待..."
    brew services start jenkins-lts
    ;;
  "stop")
    echo -e "Jenkins 服务停止中,请等待..."
    brew services stop jenkins-lts
    ;;
  "restart")
    echo -e "Jenkins 服务重启中,请等待!"
    brew services restart jenkins-lts
    ;;
  "status")
    echo -e "---------------Jenkins---------------"
    echo -e "Jenkins 服务状态如下:"
    brew services info jenkins-lts
    echo -e "------------------------------------"
    ;;
  *)
    echo "Usage: jekins start|stop|restart|status"
    ;;
  esac
}

# Function for Nacos
function nacos() {
  case $1 in
  "start")
    echo -e "Nacos 服务启动中,请等待..."
    $NACOS_HOME/bin/startup.sh -m standalone
    ;;
  "stop")
    echo -e "Nacos 服务停止中,请等待..."
    $NACOS_HOME/bin/shutdown.sh
    ;;
  "status")
    echo -e "---------------Nacos---------------"
    echo -e "Nacos 服务状态如下:"
    check_process nacos >/dev/null && echo -e "Nacos 服务运行正常" || echo -e "Nacos 服务运行异常"
    echo -e "----------------------------------"
    ;;
  *)
    echo "Usage: nacos start|stop|status"
    ;;
  esac
}

# Function for Elasticsearch
function elk() {
  case $1 in
  "start")
    echo -e "Elasticsearch 服务启动中,请等待..."
    echo -e "-------------------------------------------"
    $ES_CLUSTER_1_HOME/bin/elasticsearch -d
    echo -e "-------------------------------------------"
    $ES_CLUSTER_2_HOME/bin/elasticsearch -d
    echo -e "-------------------------------------------"
    $ES_CLUSTER_3_HOME/bin/elasticsearch -d
    echo -e "-------------------------------------------"
    ;;
  "stop")
    echo -e "Elasticsearch 服务停止中,请等待..."
    kill -9 $(lsof -i:9201 | awk '{print $2}')
    kill -9 $(lsof -i:9202 | awk '{print $2}')
    kill -9 $(lsof -i:9203 | awk '{print $2}')
    ;;
  "restart")
    elk stop
    sleep 2
    elk start
    ;;
  "status")
    echo -e "---------------Elasticsearch---------------"
    echo -e "Elasticsearch 服务状态如下:"
    if [ -n "$(check_process elasticsearch)" ]; then
      echo -e "Elasticsearch 服务运行正常"
    else
      echo -e "Elasticsearch 服务运行异常"
    fi
    echo -e "-------------------------------------------"
    ;;
  *)
    echo "Usage: elk start|stop|restart|status"
    ;;
  esac
}

# Function for Kibana
function kb() {
  case $1 in
  "start")
    echo -e "Kibana 服务启动中,请等待..."
    nohup $KIBANA_HOME/bin/kibana >$KIBANA_HOME/logs/kibana.log 2>&1 &
    ;;
  "stop")
    echo -e "Kibana 服务停止中,请等待..."
    kill -9 $(lsof -i:5601 | awk '{print $2}')
    ;;
  "restart")
    kb stop
    sleep 2
    kb start
    ;;
  "status")
    echo -e "---------------Kibana---------------"
    echo -e "Kibana 服务状态如下:"
    if [ -n "$(check_process kibana)" ]; then
      echo -e "Kibana 服务运行正常"
    else
      echo -e "Kibana 服务运行异常"
    fi
    echo -e "----------------------------------"
    ;;
  *)
    echo "Usage: kb start|stop|restart|status"
    ;;
  esac
}

# Function for Bigdata
function bigdata() {
  case $1 in
  "start")
    echo -e "Bigdata 相关服务启动中,请等待..."
    my start
    hdp start
    hv start
    # sp start
    ;;
  "stop")
    echo -e "Bigdata 相关服务停止中,请等待..."
    # sp stop
    hv stop
    hdp stop
    my stop
    ;;
  "status")
    echo -e "Bigdata 相关服务状态如下:"
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

# Function for Hadoop
function hdp() {
  case $1 in
  "start")
    echo -e "Hadoop 服务启动中,请等待..."
    echo -e "------------------------------------"
    start-dfs.sh
    echo -e "------------------------------------"
    start-yarn.sh
    echo -e "------------------------------------"
    $HADOOP_HOME/bin/mapred --daemon start historyserver
    ;;
  "stop")
    echo -e "Hadoop 服务停止中,请等待..."
    $HADOOP_HOME/bin/mapred --daemon stop historyserver
    echo -e "------------------------------------"
    stop-yarn.sh
    echo -e "------------------------------------"
    stop-dfs.sh
    echo -e "------------------------------------"
    ;;
  "restart")
    echo -e "Hadoop 服务重启中,请等待!"
    echo -e "------------------------------------"
    hdp stop
    sleep 2
    hdp start
    echo -e "------------------------------------"
    ;;
  "status")
    echo -e "---------------Hadoop---------------"
    echo -e "Hadoop 服务状态如下:"
    jps | grep NameNode >/dev/null && echo -e "NameNode 服务运行正常" || echo -e "NameNode 服务运行异常"
    jps | grep SecondaryNameNode >/dev/null && echo -e "SecondaryNameNode 服务运行正常" || echo -e "SecondaryNameNode 服务运行异常"
    jps | grep DataNode >/dev/null && echo -e "DataNode 服务运行正常" || echo -e "DataNode 服务运行异常"
    jps | grep ResourceManager >/dev/null && echo -e "ResourceManager 服务运行正常" || echo -e "ResourceManager 服务运行异常"
    jps | grep NodeManager >/dev/null && echo -e "NodeManager 服务运行正常" || echo -e "NodeManager 服务运行异常"
    jps | grep JobHistoryServer >/dev/null && echo -e "JobHistoryServer 服务运行正常" || echo -e "JobHistoryServer 服务运行异常"
    echo -e "------------------------------------"
    ;;
  *)
    echo "Usage: hdp start|stop|restart|status"
    ;;
  esac
}

# Function for Hive
function hv() {
  case $1 in
  "start")
    echo -e "服务启动中,HiveServer2启动时间较长,请等待!"
    # 启动Metastore
    metapid=$(check_process metastore)
    cmd="nohup hive --service metastore >$HIVE_LOG_DIR/metastore.log 2>&1 &"
    [ -z "$metapid" ] && eval $cmd || echo -e "hiveserver2 Metastroe 服务已启动"

    # 启动HiveServer2
    server2pid=$(check_process hiveserver2)
    cmd="nohup hiveserver2 >$HIVE_LOG_DIR/hiveServer2.log 2>&1 &"
    [ -z "$server2pid" ] && eval $cmd || echo -e "HiveServer2 服务已启动"
    ;;
  "stop")
    echo -e "服务停止中,请等待..."
    # 停止Metastore
    metapid=$(check_process metastore)
    [ "$metapid" ] && kill $metapid || echo -e "Metastore 服务未启动"

    # 停止HiveServer2
    server2pid=$(check_process hiveserver2)
    [ "$server2pid" ] && kill $server2pid || echo -e "HiveServer2 服务未启动"
    ;;
  "restart")
    echo -e "服务重启中,HiveServer2启动时间较长,请等待!"
    hv stop
    sleep 2
    hv start
    ;;
  "status")
    echo -e "---------------Hive---------------"
    echo -e "Hive 服务状态如下:"
    check_process metastore >/dev/null && echo -e "Metastore 服务运行正常" || echo -e "Metastore 服务运行异常"
    check_process hiveserver2 >/dev/null && echo -e "HiveServer2 服务运行正常" || echo -e "HiveServer2 服务运行异常"
    echo -e "-----------------------------------"
    ;;
  "beeline")
    beeline -u jdbc:hive2://localhost:10000
    ;;
  *)
    echo "Usage: hv start|stop|restart|status"
    ;;
  esac
}

# Function for Zookeeper
function zk() {
  case $1 in
  "start")
    echo -e "Zookeeper 服务启动中,请等待..."
    echo -e "---------------------------------------"
    zkServer.sh start $ZOOKEEPER_HOME/conf/zoo1.cfg
    echo -e "---------------------------------------"
    zkServer.sh start $ZOOKEEPER_HOME/conf/zoo2.cfg
    echo -e "---------------------------------------"
    zkServer.sh start $ZOOKEEPER_HOME/conf/zoo3.cfg
    echo -e "---------------------------------------"
    ;;
  "stop")
    echo -e "Zookeeper 服务停止中,请等待..."
    echo -e "---------------------------------------"
    zkServer.sh stop $ZOOKEEPER_HOME/conf/zoo1.cfg
    echo -e "---------------------------------------"
    zkServer.sh stop $ZOOKEEPER_HOME/conf/zoo2.cfg
    echo -e "---------------------------------------"
    zkServer.sh stop $ZOOKEEPER_HOME/conf/zoo3.cfg
    echo -e "---------------------------------------"
    ;;
  "restart")
    echo -e "Zookeeper 服务重启中,请等待!"
    zk stop
    sleep 2
    zk start
    ;;
  "status")
    echo -e "---------------Zookeeper---------------"
    echo -e "Zookeeper 服务状态如下:"
    if [ -z "$(check_process zoo1)" ]; then
      echo -e "Zookeeper-1 服务运行异常"
    else
      echo -e "Zookeeper-1 服务运行正常"
    fi
    if [ -z "$(check_process zoo2)" ]; then
      echo -e "Zookeeper-2 服务运行异常"
    else
      echo -e "Zookeeper-2 服务运行正常"
    fi
    if [ -z "$(check_process zoo3)" ]; then
      echo -e "Zookeeper-3 服务运行异常"
    else
      echo -e "Zookeeper-3 服务运行正常"
    fi
    echo -e "---------------------------------------"
    ;;
  "cli")
    zkCli.sh -server localhost:2181,localhost:2182,localhost:2183
    ;;
  *)
    echo "Usage: zk start|stop|restart|status|cli"
    ;;
  esac
}

# Function for Kafka
function kf() {
  case $1 in
  "start")
    echo -e "Kafka 服务启动中,请等待..."
    $KAFKA_HOME/bin/kafka-server-start.sh -daemon $KAFKA_HOME/config/server-1.properties
    $KAFKA_HOME/bin/kafka-server-start.sh -daemon $KAFKA_HOME/config/server-2.properties
    $KAFKA_HOME/bin/kafka-server-start.sh -daemon $KAFKA_HOME/config/server-3.properties
    ;;
  "stop")
    echo -e "Kafka 服务停止中,请等待..."
    $KAFKA_HOME/bin/kafka-server-stop.sh
    ;;
  "restart")
    echo -e "Kafka 服务重启中,请等待!"
    kf stop
    sleep 2
    kf start
    ;;
  "status")
    echo -e "---------------Kafka---------------"
    echo -e "Kafka 服务状态如下:"
    jps -ml | grep kafka | grep $KAFKA_HOME/config/server-1.properties >/dev/null && echo -e "Kafka-1 服务运行正常" || echo -e "Kafka-1 服务运行异常"
    jps -ml | grep kafka | grep $KAFKA_HOME/config/server-2.properties >/dev/null && echo -e "Kafka-2 服务运行正常" || echo -e "Kafka-2 服务运行异常"
    jps -ml | grep kafka | grep $KAFKA_HOME/config/server-3.properties >/dev/null && echo -e "Kafka-3 服务运行正常" || echo -e "Kafka-3 服务运行异常"
    echo -e "----------------------------------"
    ;;
  *)
    echo "Usage: kf start|stop|restart|status"
    ;;
  esac
}

# Function for Spark
function sp() {
  case $1 in
  "start")
    echo -e "Spark 服务启动中,请等待..."
    $SPARK_HOME/sbin/start-master.sh
    echo -e "---------------------------------------"
    $SPARK_HOME/sbin/start-slaves.sh
    echo -e "---------------------------------------"
    ;;
  "stop")
    echo -e "Spark 服务停止中,请等待..."
    $SPARK_HOME/sbin/stop-slaves.sh
    echo -e "---------------------------------------"
    $SPARK_HOME/sbin/stop-master.sh
    echo -e "---------------------------------------"
    ;;
  "restart")
    echo -e "Spark 服务重启中,请等待!"
    sp stop
    sleep 2
    sp start
    ;;
  "status")
    echo -e "---------------Spark---------------"
    echo -e "Spark 服务状态如下:"
    jps -ml | grep Master >/dev/null && echo -e "Master 服务运行正常" || echo -e "Master 服务运行异常"
    jps -ml | grep Worker >/dev/null && echo -e "Worker 服务运行正常" || echo -e "Worker 服务运行异常"
    echo -e "----------------------------------"
    ;;
  *)
    echo "Usage: sp start|stop|restart|status"
    ;;
  esac
}

# Function for Flink
function fl() {
  case $1 in
  "start")
    echo -e "Flink Standalone 服务启动中,请等待..."
    $FLINK_HOME/bin/start-cluster.sh
    echo -e "----------------------------------"
    echo -e "Flink on Yarn 服务启动中,请等待..."
    $FLINK_HOME/bin/yarn-session.sh -d >/dev/null
    echo -e "----------------------------------"
    ;;
  "stop")
    echo -e "Flink 服务停止中,请等待..."
    $FLINK_HOME/bin/stop-cluster.sh
    echo -e "----------------------------------"
    echo -e "Flink on Yarn 服务停止中,请等待..."
    app_id=$(yarn application -list | grep "Flink session cluster" | awk '{print $1}')
    yarn application -kill $app_id
    echo -e "----------------------------------"
    ;;
  "restart")
    echo -e "Flink 服务重启中,请等待!"
    fl stop
    sleep 2
    fl start
    ;;
  "status")
    echo -e "---------------Flink---------------"
    echo -e "Flink 服务状态如下:"
    jps -ml | grep YarnSessionClusterEntrypoint >/dev/null && echo -e "Flink on Yarn 服务运行正常" || echo -e "Flink on Yarn 服务运行异常"
    jps -ml | grep StandaloneSessionClusterEntrypoint >/dev/null && echo -e "Flink Standalone 服务运行正常" || echo -e "Flink Standalone 服务运行异常"
    echo -e "----------------------------------"
    ;;
  "sql")
    echo "--------开启 Flink SQL...-------"
    $FLINK_HOME/bin/sql-client.sh embedded -s yarn-session
    ;;
  *)
    echo "Usage: fl start|stop|restart|status|sql"
    ;;
  esac
}

# Function for HBase
function hb() {
  case $1 in
  "start")
    echo -e "HBase 服务启动中,请等待..."
    $HBASE_HOME/bin/start-hbase.sh
    ;;
  "stop")
    echo -e "HBase 服务停止中,请等待..."
    $HBASE_HOME/bin/stop-hbase.sh
    ;;
  "restart")
    echo -e "HBase 服务重启中,请等待!"
    hb stop
    sleep 2
    hb start
    ;;
  "status")
    hbase_sta echo -e "---------------HBase---------------"
    echo -e "HBase 服务状态如下:"
    jps -ml | grep HMaster >/dev/null && echo -e "HMaster 服务运行正常" || echo -e "HMaster 服务运行异常"
    jps -ml | grep HRegionServer >/dev/null && echo -e "HRegionServer 服务运行正常" || echo -e "HRegionServer 服务运行异常"
    echo -e "----------------------------------"tus
    ;;
  *)
    echo "Usage: hb start|stop|restart|status"
    ;;
  esac
}

# Function for Phoenix
function ph() {
  $PHOENIX_HOME/bin/sqlline.py localhost:2181
}

# Function for DataX
function datax() {
  python $DATAX_HOME/bin/datax.py $@
}

# Function for Canal
function canal() {
  case $1 in
  "start")
    echo -e "Canal 服务启动中,请等待..."
    $CANAL_HOME/bin/startup.sh
    ;;
  "stop")
    echo -e "Canal 服务停止中,请等待..."
    $CANAL_HOME/bin/stop.sh
    ;;
  "restart")
    echo -e "Canal 服务重启中,请等待!"
    canal stop
    sleep 2
    canal start
    ;;
  "status")
    echo -e "---------------Canal---------------"
    echo -e "Canal 服务状态如下:"
    jps -ml | grep CanalLauncher >/dev/null && echo -e "Canal 服务运行正常" || echo -e "Canal 服务运行异常"
    echo -e "----------------------------------"
    ;;
  *)
    echo "Usage: canal start|stop|restart|status"
    ;;
  esac
}

# Function for Canal Admin
function canal_admin() {
  case $1 in
  "start")
    echo -e "Canal Admin 服务启动中,请等待..."
    $CANAL_ADMIN_HOME/bin/startup.sh
    ;;
  "stop")
    echo -e "Canal Admin 服务停止中,请等待..."
    $CANAL_ADMIN_HOME/bin/stop.sh
    ;;
  "restart")
    echo -e "Canal Admin 服务重启中,请等待!"
    canaladmin stop
    sleep 2
    canaladmin start
    ;;
  "status")
    echo -e "---------------Canal Admin---------------"
    echo -e "Canal Admin 服务状态如下:"
    jps -ml | grep CanalAdminWeb >/dev/null && echo -e "Canal Admin 服务运行正常" || echo -e "Canal Admin 服务运行异常"
    echo -e "----------------------------------"
    ;;
  *)
    echo "Usage: canal_admin start|stop|restart|status"
    ;;
  esac
}

# Function for Prometheus
function prometheus() {
  case $1 in
  "start")
    echo -e "Prometheus 服务启动中,请等待..."
    nohup $PROMETHEUS_HOME/prometheus --config.file=$PROMETHEUS_HOME/config/prometheus.yml --web.listen-address=0.0.0.0:9090 --storage.tsdb.path=$PROMETHEUS_DATA --storage.tsdb.retention=365d --web.enable-lifecycle >$PROMETHEUS_LOG 2>&1 &
    echo -e "Prometheus 服务服务已启动!"
    ;;
  "stop")
    echo -e "Prometheus 服务停止中,请等待..."
    if [ -z $(check_process prometheus) ]; then
      echo "没有找到 Prometheus 服务"
    else
      kill -9 $(check_process prometheus)
      echo "Prometheus 服务已停止!"
    fi
    ;;
  "restart")
    echo -e "Prometheus 服务重启中,请等待!"
    pr stop
    sleep 2
    pr start
    ;;
  "status")
    echo -e "---------------Prometheus---------------"
    echo -e "Prometheus 服务状态如下:"
    if [ -z $(check_process prometheus) ]; then
      echo -e "Prometheus 服务停止"
    else
      echo -e "Prometheus 服务运行正常"
    fi
    echo -e "----------------------------------"
    ;;
  *)
    echo "Usage: prometheus start|stop|restart|status"
    ;;
  esac
}

# Function for Grafana
function grafana() {
  case $1 in
  "start")
    echo -e "Grafana 服务启动中,请等待..."
    nohup $GRAFANA_HOME/bin/grafana-server >$GRAFANA_LOG 2>&1 &
    echo -e "Grafana 服务已启动"
    ;;
  "stop")
    echo -e "Grafana 服务停止中,请等待..."
    if [ -z $(check_process grafana) ]; then
      echo "没有找到 Grafana 服务"
    else
      kill -9 $(check_process grafana)
      echo "Grafana 服务已停止!"
    fi
    ;;
  "restart")
    echo -e "Grafana 服务重启中,请等待!"
    grafana start
    sleep 2
    grafana stops
    ;;
  "status")
    echo -e "---------------Grafana---------------"
    echo -e "Grafana 服务状态如下:"
    if [ -z $(check_process grafana) ]; then
      echo -e "Grafana 服务停止"
    else
      echo -e "Grafana 服务运行正常"
    fi
    echo -e "----------------------------------"
    ;;
  *)
    echo "Usage: grafana start|stop|restart|status"
    ;;
  esac
}

# Function for pushgateway
function pushgateway() {
  case $1 in
  "start")
    echo -e "pushgateway 服务启动中,请等待..."
    nohup $PUSHGATEWAY_HOME/bin/pushgateway >$PUSHGATEWAY_LOG 2>&1 &
    ;;
  "stop")
    echo -e "pushgateway 服务停止中,请等待..."
    if [ -z $(check_process spushgateway) ]; then
      echo "没有找到 pushgateway 服务"
    else
      kill -9 $(check_process pushgateway)
      echo "pushgateway 服务已停止!"
    fi
    ;;
  "restart")
    echo -e "pushgateway 服务重启中,请等待!"
    pushgateway stop
    sleep 2
    pushgateway start
    ;;
  "status")
    echo -e "---------------pushgateway---------------"
    echo -e "pushgateway 服务状态如下:"
    if [ -z $(check_process pushgateway) ]; then
      echo -e "pushgateway 服务停止"
    else
      echo -e "pushgateway 服务运行正常"
    fi
    echo -e "----------------------------------"
    ;;
  *)
    echo "Usage: pushgateway start|stop|restart|status"
    ;;
  esac
}

# Function for node_exporter
function node_exporter() {
  case $1 in
  "start")
    echo -e "node_exporter 服务启动中,请等待..."
    nohup $NODE_EXPORTER_HOME/node_exporter >$NODE_EXPORTER_LOG 2>&1 &
    echo -e "node_exporter 服务已启动!"
    ;;
  "stop")
    echo -e "node_exporter 服务停止中,请等待..."
    if [ -z $(check_process node_exporter) ]; then
      echo "没有找到 node_exporter 服务"
    else
      kill -9 $(check_process node_exporter)
      echo "node_exporter 服务已停止!"
    fi
    ;;
  "restart")
    echo -e "node_exporter 服务重启中,请等待!"
    node_exporter stop
    sleep 2
    node_exporter start
    echo -e "node_exporter 服务重启成功"
    ;;
  "status")
    echo -e "---------------node_exporter---------------"
    echo -e "node_exporter 服务状态如下:"
    if [ -z $(check_process node_exporter) ]; then
      echo -e "node_exporter 服务停止"
    else
      echo -e "node_exporter 服务运行正常"
    fi
    echo -e "----------------------------------"
    ;;
  *)
    echo "Usage: node_exporter start|stop|restart|status"
    ;;
  esac
}

# Function for node_exporter
# function node_exporter() {
# }

# pnpm
export PNPM_HOME="/Users/chongyan/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end