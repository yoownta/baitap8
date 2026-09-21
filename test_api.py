import urllib.request
import json

url = 'http://localhost:8088/graphql'
headers = {'Content-Type': 'application/json'}
data = json.dumps({"query": "{ getAllProducts { id title } }"}).encode('utf-8')

req = urllib.request.Request(url, data=data, headers=headers)
try:
    with urllib.request.urlopen(req) as response:
        print(response.read().decode('utf-8'))
except Exception as e:
    print(f"Error: {e}")
