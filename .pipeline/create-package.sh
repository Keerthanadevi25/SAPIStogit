#!/bin/bash
2
 
3
TOKEN=$(curl -s -X POST \
4
"${TOKEN_URL}?grant_type=client_credentials" \
5
-u "${CLIENT_ID}:${CLIENT_SECRET}" \
6
| jq -r '.access_token')
7
 
8
curl -X POST \
9
"${TMN_URL}/api/v1/IntegrationPackages" \
10
-H "Authorization: Bearer ${TOKEN}" \
11
-H "Content-Type: application/json" \
12
-d '{
13
"Id":"Test_Package",
14
"Name":"Test_Package",
15
"Description":"Created by CI/CD"
16
}'
