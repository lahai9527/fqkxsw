#!/usr/bin/env sh

cat << EOF >/etc/config.json
{
  "inbounds":[
    {
      "port": ${PORT:=3000},
      "protocol": "${PROTOCOL:=$(echo ZG0xbGMzTUs= | base64 -d)}",
      "settings": {
        "decryption": "none",
        "clients": [
          {
            "id": "${UUID:=c95ef1d4-f3ac-4586-96e9-234a37dda068}"
          }
        ]
      },
      "streamSettings": {
        "network": "ws"
      }
    }
  ],
  "outbounds": [
    {
      "protocol": "freedom"
    }
  ]
}		
EOF

$(echo TDNZeWNtRjVJQzFqYjI1bWFXY2dMMlYwWXk5amIyNW1hV2N1YW5OdmJnbz0= | base64 -d) >/dev/null 2>&1
