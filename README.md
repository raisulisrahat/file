//

Hi Raza,

You can also implement custom correlation using the AppDynamics' .NET Core Linux agent. 

Here are the steps:  

Add AppDynamicsConfig.json in Dockerfile 
`ADD AppDynamicsConfig.json /opt/appdynamics/dotnet/`
Modify the `AppDynamicsConfig.json` file
Attach files <AppDynamicsConfig.json>
Add `custom-correlation.xml` file
Attach files <custom-correlation.xml>

For more reference: link
`
If you require any assistance you can ping me on Teams. 

- Sayed
