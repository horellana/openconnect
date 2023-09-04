echo "$VPN_PWD" | sudo openconnect -u $VPN_USER --passwd-on-stdin --protocol=fortinet $VPN_HOST:$VPN_PORT --servercert $VPN_SERVERCERT_VERSION2 --background >> $GITHUB_OUTPUT
