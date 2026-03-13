# Live Data Streaming Platform

This project demonstrates a real-time enterprise data streaming architecture.

Multiple business systems generate events including:

• HR systems 
• Finance systems
• Sales platforms
• Website user activity
• Database changes

These events are streamed into Apache Kafka and consumed by multiple applications for analytics, storage, and alerting.

## Kafka Topics

hr-events
finance-transactions
sales-orders
website-events
database-changes

## Data Producers

HR Producer
Simulates employee events such as onboarding and leave requests.

Finance Producer
Simulates payment transactions.

Sales Producer
Generates order and purchase events.

Website Producer
Simulates user activity such as page views and clicks.

Database Producer
Simulates database insert and update operations.

## Data Consumers

Real-Time Dashboard
Displays live streaming events.

Data Lake Consumer
Stores events in S3 for analytics.

Alerting Consumer
Detects anomalies such as high transaction amounts.

## System Architecture

The platform will run on AWS and include:

• Amazon VPC
• EC2 instances hosting Apache Kafka brokers
• Apache ZooKeeper for cluster coordination
• Amazon EBS for persistent storage
• Amazon S3 for data lake storage
• Amazon CloudWatch for monitoring

## System Architecture

The platform will run on AWS and include:

• Amazon VPC
• EC2 instances hosting Apache Kafka brokers
• Apache ZooKeeper for cluster coordination
• Amazon EBS for persistent storage
• Amazon S3 for data lake storage
• Amazon CloudWatch for monitoring

## Technology Stack

Streaming Platform
Apache Kafka

Cloud Infrastructure
Amazon Web Services

Infrastructure as Code
Terraform

Compute
Amazon EC2

Storage
Amazon EBS
Amazon S3

Monitoring
Amazon CloudWatch