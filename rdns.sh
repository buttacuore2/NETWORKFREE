#!/bin/bash
ZONE_ID="a3e6bf07fda3ed8e56dde17376255188"
API_TOKEN="dwBIJbunVoeQ_lzgUs0VPUINO2pxFjxETij4kSb3"
RECORD_NAME="devpro1.andotv.ggff.net"
RECORD_TYPE="A"
RECORD_CONTENT="1.1.1.1"
RECORD_TTL=300
PROXIED="false"
API_URL="https://api.cloudflare.com/client/v4/zones/$ZONE_ID/dns_records"
DATA='{"type":"'"$RECORD_TYPE"'", "name":"'"$RECORD_NAME"'", "content":"'"$RECORD_CONTENT"'", "ttl":'$RECORD_TTL', "proxied": '"$PROXIED"'}'

curl -X POST "$API_URL" \
     -H "Authorization: Bearer $API_TOKEN" \
     -H "Content-Type: application/json" \
     --data "$DATA"
