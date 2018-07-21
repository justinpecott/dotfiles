```bash
# Longest TLD
wget -qO - http://data.iana.org/TLD/tlds-alpha-by-domain.txt | tail -n+2 | wc -L

# My IP Address
curl https://wtfismyip.com/text
```