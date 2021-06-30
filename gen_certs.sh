openssl req -x509 -newkey rsa:4096 -sha256 -days 3650 -nodes \
  -keyout key.pem -out cert.pem -subj '/C=AT/ST=Salzburg/L=Koppl/O=zerobyte/OU=hq/CN=localhost' \
  -addext 'subjectAltName=DNS:localhost,DNS:example.com,DNS:example.net'
