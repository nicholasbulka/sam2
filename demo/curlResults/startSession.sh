curl -X POST http://10.19.1.21:7263/graphql \
  -H "Content-Type: application/json" \
  -d '{
    "query": "mutation StartSession($input: StartSessionInput!) { startSession(input: $input) { sessionId } }",
    "variables": {
      "input": {
        "path": "gallery/04_coffee.mp4"
      }
    }
  }'

{"data": {"startSession": {"sessionId": "0ab4656c-063d-4974-b446-86778dd61898"}}}
