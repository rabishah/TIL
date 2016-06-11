# AWS API Gateway 


### create-resources
```
aws apigateway create-resource --rest-api-id "ibhgtnfm" --parent-id "dbfhfhf" \
--path "/shops/{shop_id}" --path-part "shop_id"
```
response
```
{
    "path": "/shops/{shop_id}",
    "pathPart": "{shop_id}",
    "id": "ghfgrs",
    "parentId": "dbfhfhf"
}
```

### get-resources
```
aws apigateway get-resources --rest-api-id "ibhgtnfm"
```
response
```
[ 
	{                                                                                                                              
    "path": "/shops/{shop_id}",                                                                                               
    "id": "ghfgrs",                                                                                                            
    "pathPart": "{shop_id}",                                                                                                      
    "parentId": "dbfhfhf"                                                                                                       
  },
  
  ....
  ....
  ....
  
]
```

### update-resources

```
aws apigateway update-resource --rest-api-id "ibhgtnfm" --resource-id "dffdfff" \
--patch-operations '[{"op":"replace", "path":"/pathPart", "value":"{shopping_id}"}]'
```
response
```
{
    "resourceMethods": {
        "PUT": {},
        "GET": {}
    },
    "pathPart": "{shopping_id}",
    "parentId": "dbfhfhf",
    "path": "/shops/{shopping_id}",
    "id": "dfdfdfd"
}
```

### put-integration

> integrate resources with end-point

```
aws apigateway put-integration --rest-api-id "iyd3243gdi" --resource-id "42343"   \
--http-method "POST" --type HTTP --integration-http-method "POST"                 \
--uri 'http://${stageVariables.NODE_ENDPOINT}/promotions/{promotion_id}'
```
response
```
{
    "httpMethod": "POST",
    "cacheKeyParameters": [],
    "type": "HTTP",
    "uri": "http://${stageVariables.NODE_ENDPOINT}/shops/{shopping_id}",
    "cacheNamespace": "itg53u"
}
```

### put-method

> method for resources: PUT, POST, DELETE, PATCH

```
aws apigateway put-method --rest-api-id "sfasdgdi" --resource-id "byera6"    \
--http-method "POST" --authorization-type "NONE"
```
response
```
{
    "apiKeyRequired": false,
    "httpMethod": "POST",
    "authorizationType": "NONE"
}
```

### get-rest-apis
```
aws apigateway get-rest-apis
```
response
```
{
    "items": [
        {
            "description": "API Gateway",
            "createdDate": 1459175054,
            "id": "fdsfdfsi",
            "name": "shopAPI"
        },
        {
            "description": "API Gateway",
            "createdDate": 1459155301,
            "id": "uo5qcj14s3",
            "name": "productAPI"
        }
   ]
}
```
