set -x
METHOD="$1"
PAYLOAD="$2"
ENDPOINT="$3"
SESSION=$(< session)
COMMAND="curl -i -v -X $METHOD -H \"Content-Type: application/json\" --data-binary @$PAYLOAD http://localhost:9515/session/$SESSION$ENDPOINT"
$COMMAND
