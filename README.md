//

Hello Damian,

It seems the Solumina application team is requesting an increase in Analytics Data Retention (Event Service Data Retention). To accommodate this, we can update the retention periods for the following:
* Transaction Analytics
* Log Analytics
* Browser Analytics
* Mobile Analytics
* Browser Synthetic Analytics
* Connected Devices Analytics
Before doing this we should reach out to the team to understand the reason behind such a long retention period. As a first step, we can increase the retention to 1 month. However, we need to keep in mind that extending the Analytics retention will increase the disk usage on the Events Service node.
Before making this change, it’s important to confirm that we have sufficient storage to handle the increase. Additionally, after adjusting the retention, we will need to closely monitor the Events Service's resource usage. If disk space becomes full, the service could enter an unhealthy state, and performance may be impacted if high disk usage persists.
Additionally, to update the data retention settings, we can log into the administrator console of the Controller by adding /controller/admin.jsp to the controller host and then navigate to the Controller Settings in the top-left corner.

