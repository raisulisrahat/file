//

Hi Raj,


To view the Standalone Machine Agent inside an Application Tier, you need the below parameters included in the Machine Agent controller.xml file:

```
<?xml version="1.0" encoding="UTF-8"?>
<controller-info>    
    <controller-host>your-controller-host</controller-host>
    <controller-port>your-controller-port</controller-port>   
    <account-access-key>your-access-key</account-access-key>
    <controller-ssl-enabled>true</controller-ssl-enabled>
    <enable-orchestration>false</enable-orchestration>
    <sim-enabled>false</sim-enabled>
    <unique-host-id>your-host-id</unique-host-id>  
    <account-name>your-account-name</account-name>
</controller-info>
```

If you already have a running App Agent for that Application and want to correlate the Machine Agent with that App Agent then the Unique Node ID should be identical for that Machine Agent and App Agent.

Let me know if you have any questions. 

Thanks,
Sayed
