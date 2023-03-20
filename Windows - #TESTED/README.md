# Collect Geo-Location Information from a Windows machine

## Step 1

Install the New Relic Infra Agent via our [Guided Install method](https://one.newrelic.com/launcher/nr1-core.explorer?pane=eyJuZXJkbGV0SWQiOiJucjEtY29yZS5saXN0aW5nIn0=&cards[0]=eyJuZXJkbGV0SWQiOiJucjEtaW5zdGFsbC1uZXdyZWxpYy5ucjEtaW5zdGFsbC1uZXdyZWxpYyIsImFjdGl2ZUNvbXBvbmVudCI6IlZUU09FbnZpcm9ubWVudCIsInBhdGgiOiJndWlkZWQifQ==)

## Step 2

Placed the .ps1 and .yml scripts into the New Relic dir - C:\Program Files\New Relic\newrelic-infra\integrations.d\

## Step 3

Login to New Relic and head over to [Logs > Manage data > Parsing] (https://one.newrelic.com/logger?) for the account that your Infrastructure agent was installed

## Step 4

Follow these instructions on how to [Create and view custom parsing rules](https://docs.newrelic.com/docs/logs/ui-data/parsing/#custom-parsing)

- Call the rule <code>publicIPCollector</code>
- Field to parse will be <code>message</code>
- Paste the contents of the <code>grok_pattern</code> file into the <code>Parsing rule</code> section
- Confirm that your IP is being detected and passing out information like the following in the <code>Output</code> section
  <code>

{
"ip.region": "<data>",
"ip.regionName": "<data>",
"ip.countryCode": "<data>",
"ip.city": "<data>y",
"ip.postalCode": "<data>",
"ip.latitude": "<data>5",
"ip.longitude": "<data>",
"ip": "<data>",
"ip.countryName": "<data>"
}

## Check out our Map Widget to visualise the data! (TBD)
