curl -X POST http://10.19.1.21:7263/graphql \
  -H "Content-Type: application/json" \
  -d '{
    "query": "mutation AddPoints($input: AddPointsInput!) { addPoints(input: $input) { frameIndex rleMaskList { objectId rleMask { size counts order } } } }",
    "variables": {
      "input": {
        "sessionId": "0ab4656c-063d-4974-b446-86778dd61898",
        "frameIndex": 0,
        "clearOldPoints": false,
        "objectId": 1,
        "labels": [1],
        "points": [[100, 100]]
      }
    }
  }'

{"data": {"addPoints": {"frameIndex": 0, "rleMaskList": [{"objectId": 1, "rleMask": {"size": [720, 1280], "counts": "PPTl0", "order": "F"}}]}}}
