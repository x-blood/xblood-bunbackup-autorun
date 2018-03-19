rem ### Run bunbackup
BunBackup.exe /AUTO

rem ### Send to Slack
SET SLACK_CHANNEL=#notifications
rem SET SLACK_EXECUTE_DATE=%date:~0,4%%date:~5,2%%date:~8,2%
rem SET SLACK_TEXT=[Office]Successful backup process with BunBackup. *Finished Date:%SLACK_EXECUTE_DATE%*
SET SLACK_TEXT=[Office]Successful backup process with BunBackup.
SET SLACK_BOTNAME=BunBackup Notification
SET SLACK_FACEICON=:bunbackup:
SET SLACK_WEBHOOKURL=%BB_SLACK_WEBHOOKURL%

curl -X POST --data-urlencode ^
payload="{\"channel\":\"%SLACK_CHANNEL%\", \"username\": \"%SLACK_BOTNAME%\", \"icon_emoji\": \"%SLACK_FACEICON%\", \"text\":\"%SLACK_TEXT%\"}" %SLACK_WEBHOOKURL%


