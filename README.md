
![hq720](https://github.com/user-attachments/assets/3eaa07a3-3a0e-4e2e-b344-e6c9431aa7ba)



## Terraform - Kestra Framework   | ⭐⭐⭐
Kestra is an open-source, event-driven orchestration platform that makes both scheduled and event-driven workflows easy. By Infrastructure as Code

🚀  Key Features
```
✅ Everything as Code and from the UI
✅ Event-Driven & Scheduled Workflows
✅ Declarative YAML Interface
✅ Rich Plugin Ecosystem
✅ Intuitive UI & Code Editor
✅ Scalable
✅ Version Control
✅ Structure & Resilience
```


📝 Instruction 
How to launch  : Will be soon 



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
