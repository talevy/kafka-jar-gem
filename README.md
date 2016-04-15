# kafka-jar-gems

[![Travis Build Status](https://travis-ci.org/logstash-plugins/logstash-output-redis.svg)](https://travis-ci.org/talevy/kafka-jar-gem)

Repo containing jruby projects wrapping the Kafka jar

## Install

```ruby
require 'kafka-jar', '~> 0.8.2.2'
```

## Example: Starting Up Kafka Server

```ruby
java_import "java.util.Properties"                                                                                      
java_import "kafka.server.KafkaConfig"
java_import "kafka.server.KafkaServerStartable"
java_import "org.apache.kafka.clients.producer.KafkaProducer"
java_import "org.apache.kafka.clients.producer.ProducerRecord"
java_import "org.apache.zookeeper.server.ServerConfig"
java_import "org.apache.zookeeper.server.ZooKeeperServerMain"
java_import "org.apache.zookeeper.server.quorum.QuorumPeerConfig"

zk_props = Properties.new
zk_props.set_property("dataDir", "/tmp/zookeeper")
zk_props.set_property("clientPort", "2181")
zk = ZooKeeperServerMain.new
quorum_configuration = QuorumPeerConfig.new
quorum_configuration.parse_properties(zk_props)
config = ServerConfig.new
config.read_from(quorum_configuration)
Thread.new do
  zk.run_from_config(config)
end

kafka_props = Properties.new
kafka_props.set_property("zookeeper.connect", "localhost:2181")
kafka_props.set_property("broker.id", "0")
kafka_config = KafkaConfig.new(kafka_props)
@server = KafkaServerStartable.new(kafka_config)
@server.startup
```
