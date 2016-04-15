require 'kafka-jar'

describe "Kafka Jar" do
  it "should have kafka loaded" do
    java_import "java.util.Properties"                                                                                      
    java_import "kafka.server.KafkaConfig"
    java_import "kafka.server.KafkaServerStartable"
    java_import "org.apache.kafka.clients.producer.KafkaProducer"
    java_import "org.apache.kafka.clients.producer.ProducerRecord"
    java_import "org.apache.zookeeper.server.ServerConfig"
    java_import "org.apache.zookeeper.server.ZooKeeperServerMain"
    java_import "org.apache.zookeeper.server.quorum.QuorumPeerConfig"
  end
end
