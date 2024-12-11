//
Hi Raza,

Could you please confirm if the thread correlation feature is enabled for your .NET Agent?

If it is not currently enabled, please follow the steps below to enable it:

Shut down the AppDynamics.Agent.Coordinator service.
Open the config.xml file as an administrator.
Modify the XML file by adding the following configuration under the <instrumentation> element:

``
<instrumentation>
    <instrumentor name="ThreadCorrelationThreadPoolCLR2Instrumentor" enabled="true"/>
    <instrumentor name="ThreadCorrelationThreadPoolCLR4Instrumentor" enabled="true"/>
    <instrumentor name="ThreadStartCLR2Instrumentor" enabled="true"/>
    <instrumentor name="ThreadStartCLR4Instrumentor" enabled="true"/>
</instrumentation>
``
Save the config.xml file.
Restart the AppDynamics.Agent.Coordinator service.
Restart any instrumented applications for the changes to take effect.

Let me know once you've confirmed the status or if you need any further assistance.


