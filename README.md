//

Instrumenting an application with AppDynamics involves configuring the AppDynamics agent and integrating it into the deployment process. Here's a step-by-step guide based on the provided overview:
Step 1: Prepare AppD Base Image
Ensure that the AppDynamics agent is installed on the AppD base image. This image should serve as the foundation for deploying your application.
Step 2: Configure AppD Agent using Consul and Vault
Utilize Consul and Vault for dynamic configuration of the AppDynamics agent. Ensure that the necessary configurations are stored securely in Vault and can be retrieved by the application during runtime.
Step 3: Application Team Changes to Consul
The application team should make the necessary changes to Consul to include the AppDynamics agent configurations. This may involve updating the key-value store in Consul with the required properties for the AppDynamics agent.
Step 4: Jenkins Build and Deployment
Set up Jenkins to automate the build and deployment process. Configure Jenkins to fetch the AppDynamics configurations from Consul and Vault during the build or deployment process.
Step 5: Application Reports in AppDynamics Controller
Once the application is deployed, it should start reporting to the AppDynamics controller. Verify that the metrics and data from your application are visible in the AppDynamics controller.
Step 6: Sample Consult Configuration
Here's an example of how the Consult configuration might look:
APPDYNAMICS AGENT_APPLICATION_NAME: "MAP-application-service-v1"
APPDYNAMICS_AGENT_TIER_NAME: 'Service’
APPDYNAMICS_NODE_NAME_PREFIX: 'map-prod’
ENABLE_APPDYNAMICS: 'true'
Step 7: Bounce the Application Server
After the deployment, restart or bounce the application server to ensure that the AppDynamics agent picks up the new configurations and starts reporting metrics to the AppDynamics controller.
Sandbox Object <Link>
AppD Java Agent Deployment Process - Jenkins <Link>
AppD Python Agent Deployment Process - Jenkins <Link>


