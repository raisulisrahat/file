//


Yesterday:
MAM 385: I've implemented AppDynamics support's recommendation to optimize the server for Elasticsearch. However, running the Events Service through the Enterprise Console with a non-root user is problematic. While Elasticsearch won't launch under the root user, the Enterprise Console insists on using it for the Events Service. I'm reaching out to AppDynamics support to understand why the console utilizes the root user for this service when it conflicts with the underlying component.
Key Points:
Server tuning for Elasticsearch was completed based on AppDynamics support and community resources.
Running the Events Service through the Enterprise Console requires a non-root user due to an Elasticsearch limitation.
The current setup creates a conflict as the Enterprise Console uses the root user, which is incompatible with Elasticsearch.
Seeking clarification from AppDynamics support regarding the root user usage in the Enterprise Console.


Today:

MAM 385: Reconnect with AppD Support to update them on my findings related to the Events Service installation.
