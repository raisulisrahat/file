//


Issue: The OCC team encountered issues while configuring FapolicyD to meet our requirements, specifically receiving a "Java: Operation not permitted" error when attempting to start or stop the Events Service.


Observations and Solutions

Observation: The Events Service fails to start and stop if Fapolicyd is enabled.
Solution: Add custom Fapolicyd rules that permit Java execution for the Events Service.
Note: A rule file named "39-java.rules" was created on the server, but Fapolicyd doesn't read this file the next day.

Observation: The Events Service does not function properly due to improper firewall configuration. Upon reviewing "semanage ports", we discovered that some ports needed by the Events Service are already in use by other services.
Solution: Confirm port conflicts with Jonathan.


To identify all related issues, a fresh installation was performed. We reinstalled the Events Service after adding the required Fapolicyd rules to grant proper permissions. The installation worked, and the Events Service reported as HEALTHY.

Observation: The Events Service goes down the day after installation because the Fapolicyd and SE Manage port changes reset.
Solution: Work with Jonathan to ensure the changes are applied and retained daily.


Note: Jonathan is currently unreachable. The Controller may still not receive data from the Events Service as the configuration to connect it to the Controller is still pending.
