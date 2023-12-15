wget https://archive.apache.org/dist/kafka/2.8.0/kafka_2.12-2.8.0.tgz

tar -xzf kafka_2.12-2.8.0.tgz

# start zookeeper
cd kafka_2.12-2.8.0
bin/zookeeper-server-start.sh config/zookeeper.properties

# start kafka server
cd kafka_2.12-2.8.0
bin/kafka-server-start.sh config/server.properties

# create a topic to store data
cd kafka_2.12-2.8.0
bin/kafka-topics.sh --create --topic news --bootstrap-server localhost:9092

# create producer to store data on topic called news
bin/kafka-console-producer.sh --topic news --bootstrap-server localhost:9092

# create a consumer to consume data from topic
cd kafka_2.12-2.8.0
bin/kafka-console-consumer.sh --topic news --from-beginning --bootstrap-server localhost:9092

rm kafka_2.12-2.8.0.tgz