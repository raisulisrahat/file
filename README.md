//

Deploying Controllers in a High Availability (HA) configuration ensures minimal downtime during server failures or maintenance. The setup features two Controllers, each with its own MySQL database, using Master-Master replication to maintain synchronized data. This configuration supports seamless failover, optimized maintenance, and resource-intensive tasks like data backup or long-running queries on the secondary Controller without impacting live operations.
Key highlights:
Resilience: Ensures system availability and reduced disruption.
Data Sync: Primary and secondary Controllers maintain updated replicas.
Load Balancing: Agents connect via a proxy load balancer for redundancy.
Recommended Setup: Equivalent versions and resources in the same data center, with a dedicated high-capacity link for replication.
