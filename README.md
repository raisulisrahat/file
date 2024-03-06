//

Daily Status:
Yesterday:

When we reinstalled Events Service, it was running as a non-root user through the Enterprise Console. However, the cluster's health is unknown.
Events Service can't connect to the 9080 port.

Today:
I've identified a method to install the Events Service on a non-root user. The plan is to create a non-root user on the server, configure it, and then allow the root user to SSH into the non-root user to install and start the Events Service.

Blockers: None



