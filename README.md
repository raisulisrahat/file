//

1 Observation: The Events Service fails to start and stop if Fapolicyd is enabled.
Solution: Add custom Fapolicyd rules that permit Java execution for the Events Service.
 
/etc/fapolicyd/ruled/39-java.rules
[rules]

Note: A rule file named "39-java.rules" was created on the server, but Fapolicyd doesn't read this file the next day.


2 Observation: The Events Service does not function properly due to improper firewall configuration. Upon reviewing "semanage ports,"  we discovered that some ports needed by the Events Service are already in use by other services.
Solution: Confirm ES port conflicts with Jonathan.

Events Services Ports List
9080/tcp
9081/tcp
9200/tcp
9300-9400/tcp

Note: We have added the ES ports on the firewall rule and "semanage port “http_port_t”, but can’t confirm the AWS security group. Moreover, I see the ports we need are assigned to another semanage port group, will it create confliction? 

To identify all related issues, a fresh installation was performed. We reinstalled the Events Service after adding the required Fapolicyd rules to grant proper permissions. The installation worked, and the Events Service reported as HEALTHY.

3 Observation: The Events Service goes down the day after installation because the FapolicyD and SE Manage port changes reset the next day.
Solution: Work with Jonathan to ensure the changes are applied and retained daily.
