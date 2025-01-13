
![hq720](https://github.com/user-attachments/assets/3eaa07a3-3a0e-4e2e-b344-e6c9431aa7ba)



## Terraform Module - Kestra Framework   | ⭐⭐⭐
Kestra is an open-source infinitely-scalable orchestration platform enabling all engineers to manage business-critical workflows declaratively in code . Infrastructure as Code (IaC)

🚀  Key Features
```
✅ Intuitive UI & Code Editor
✅ Event-Driven & Scheduled Workflows
✅ Declarative YAML Interface
✅ Rich Plugin Ecosystem
✅ Scalable
✅ Version Control
✅ Structure & Resilience
```


🧩 Plugin Ecosystem :
```
📃 Run Anywhere:
Local or Remote Execution: Execute tasks on your local machine, remote servers via SSH, or scale out to serverless containers using Task Runners.
Docker and Kubernetes Support: Seamlessly run Docker containers within your workflows or launch Kubernetes jobs to handle compute-intensive workloads.

📃 Code in Any Language:
Scripting Support: Write scripts in your preferred programming language. Kestra supports Python, Node.js, R, Go, Shell, and others, allowing you to integrate existing codebases and deployment patterns.
Flexible Automation: Execute shell commands, run SQL queries against various databases, and make HTTP requests to interact with APIs.

📃 Event-Driven and Real-Time Processing:
Real-Time Triggers: React to events from external systems in real-time, such as file arrivals, new messages in message buses (Kafka, Redis, Pulsar, AMQP, MQTT, NATS, AWS SQS, Google Pub/Sub, Azure Event Hubs)
Custom Events: Define custom events to trigger flows based on specific conditions or external signals, enabling highly responsive workflows.

📃 Cloud Integrations:
AWS, Google Cloud, Azure: Integrate with a variety of cloud services to interact with storage solutions, messaging systems, compute resources, and more.
Big Data Processing: Run big data processing tasks using tools like Apache Spark or interact with analytics platforms like Google BigQuery.

📃 Monitoring and Notifications:
Stay Informed: Send messages to Slack channels, email notifications, or trigger alerts in PagerDuty to keep your team updated on workflow statuses.
```


🔨 Example : Config 

## AWS
```
configuration:
  kestra:
    queue:
      type: postgres
    repository:
      type: postgres
  datasources:
    postgres:
      url: jdbc:postgresql://<your-rds-url-endpoint>:5432/kestra
      driverClassName: org.postgresql.Driver
      username: your_username
      password: your_password

configuration:
  kestra:
    storage:
      type: s3
      s3:
        accessKey: "<your-aws-access-key-id>"
        secretKey: "<your-aws-secret-access-key>"
        region: "<your-aws-region>"
        bucket: "<your-s3-bucket-name>"

```
## Google
```
configuration:
  kestra:
    queue:
      type: postgres
    repository:
      type: postgres
  datasources:
    postgres:
      url: jdbc:postgresql://<your-db-external-endpoint>:5432/<db_name>
      driverClassName: org.postgresql.Driver
      username: <your-username>
      password: <your-password>

configuration:
  kestra:
    storage:
      type: gcs
      gcs:
        bucket: "<your-cloud-storage-bucket-name>"
        projectId: "<your-gcp-project-name>"
        serviceAccount: |
          "<stringified-json-file-contents>"
```
