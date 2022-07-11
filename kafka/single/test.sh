./kafka-console-producer.sh --broker-list localhost:9092 -topic arthub-topic-AssetHub_liutq


./kafka-console-consumer.sh --zookeeper 172.17.50.55:2182 172.17.50.56:2181 172.17.50.57:2181 --topic arthub-topic-AssetHub_liutq --from-beginning