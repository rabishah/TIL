# benchmark your deployed revision (AWS Codedeploy)

```
#!/bin/bash

DEPLOYMENT_ID=$1
DEPLOYMENT_DETAILS=`aws deploy get-deployment --deployment-id $DEPLOYMENT_ID`
CREATE_TIME=`echo $DEPLOYMENT_DETAILS | jq '.deploymentInfo.createTime'`
COMPLETE_TIME=`echo $DEPLOYMENT_DETAILS | jq '.deploymentInfo.completeTime'`

DIFF=$(bc <<< "$COMPLETE_TIME - $CREATE_TIME")
RESULT=$(bc <<< "$DIFF / 60")

echo $RESULT min
```

### usage 
> ./script.sh deployment-id

### dependencies 
[jq](https://stedolan.github.io/jq/)
