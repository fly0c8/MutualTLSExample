# openssl  req -newkey rsa:2048 \
# 	-new -nodes -x509 \
# 	-days 3650 \
# 	-out cert.pem \
# 	-keyout key.pem \
# 	-subj "/C=AT/ST=Salzburg/L=Koppl/O=zerobyte/OU=hq/CN=localhost"
# 	-addext "subjectAltName = DNS:reactive.at"

openssl req -x509 -newkey rsa:4096 -sha256 -days 3650 -nodes \
  -keyout key.pem -out cert.pem -subj '/C=AT/ST=Salzburg/L=Koppl/O=zerobyte/OU=hq/CN=localhost' \
  -addext 'subjectAltName=DNS:localhost,DNS:example.com,DNS:example.net'
