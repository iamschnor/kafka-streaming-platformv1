# System Architecture

This document describes how data flows through the Live Data Streaming Platform.

## Step 1 — Data Sources

The following systems generate events:

HR System
Finance System
Sales System
Website Activity
Database Changes

## Step 2 — Kafka Producers

Each system sends events using a producer application.

Producers publish messages into Kafka topics.

HR Producer → hr-events topic
Finance Producer → finance-transactions topic
Sales Producer → sales-orders topic
Website Producer → website-events topic
Database Producer → database-changes topic

## Step 3 — Apache Kafka Cluster

All events are streamed into an Apache Kafka cluster.

The cluster will contain:

3 Kafka Brokers
Replication factor of 3
Distributed across multiple availability zones

Kafka acts as the central event streaming platform.

## Step 4 — Data Consumers

Consumers read events from Kafka topics and process them.

Real-Time Dashboard Consumer
Displays live streaming events.

Data Lake Consumer
Stores events into Amazon S3 for analytics.

Alerting Consumer
Detects anomalies such as high transaction values.

## Step 5 — Data Storage

Processed streaming data is stored in Amazon S3.

This storage acts as a data lake for future analytics and reporting.

## Step 6 — Monitoring

The platform will be monitored using Amazon CloudWatch.

Metrics include:

CPU usage
Disk usage
Network traffic
Kafka service health

## End-to-End Data Flow

Data Sources
(HR, Finance, Sales, Website, Database)

↓

Kafka Producers

↓

Apache Kafka Cluster (3 Brokers)

↓

Kafka Topics

↓

Consumers

↓

Dashboard | Alerts | Data Lake (Amazon S3)

## Architecture Summary

This architecture demonstrates a real-time data streaming platform using Apache Kafka deployed on AWS.

The system supports multiple producers, distributed message streaming, scalable consumers, and persistent storage in Amazon S3.