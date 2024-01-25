//
AppD Python Agent Deployment Process - Jenkins

Dockerfile:
Steps for creating a Docker file, We create a Dockerfile for the application. We use the appdynamics Python Agent Docker image ("appdynamics/python-agent-init") as the base image and instruct the Dockerfile to copy the application to that image during the image build.

Consul:
This is where we store global and shared Appdynamics required variables/parameters
We create a template file in the consul repository to store the global and *shared appdynamics required variables that will be pulled by Jenkins later during the Jenkins pipeline deployment.

[agent]
APPDYNAMICS AGENT_APPLICATION_NAME='’
APPDYNAMICS_AGENT_TIER_NAME='' APPDYNAMICS_AGENT_NODE_NAME=''

[controller]
APPDYNAMICS CONTROLLER_HOST_NAME='hostname'
APPDYNAMICS CONTROLLER_PORT=8090
APPDYNAMICS CONTROLLER_SSL_ENABLED=off
APPDYNAMICS_AGENT_ACCOUNT_NAME='customer1'
APPDYNAMICS_AGENT_ACCOUNT_ACCESS_KEY='access_key'

*shared vars are same for all the applications

Vault:

This is where we store secret Appdynamics required variables/parameter
At this stage, we have to create a vault for the application under vault namespace and store the application specific secret variables there, eg license key

APPDYNAMICS AGENT ACCOUNT_ACCESS_KEY


Jenkins:

Now that we are ready to run the Jenkins deployment pipeline, it will pull the environment variables/python parameters from the application specific consul repo and export them to the Docker image during the image build. And the appdynamics Python agent deployment is complete.

If we need to update any variables/parameters we do it in the consul template file or vault and run the Jenkins pipeline again.
