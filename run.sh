#!/bin/bash
swagger-codegen generate -i json-boolean-attribute-ruby-bug.yaml -l ruby -o client/

cd client
if [ -e "swagger_client-1.0.0.gem" ]
then
  rm swagger_client-1.0.0.gem
fi
gem build swagger_client.gemspec
gem install swagger_client-1.0.0.gem --no-ri --no-rdoc

cd ..

echo '----------------------------'
echo THIS IS THE EXPECTED RESPONSE
curl http://www.mocky.io/v2/577e209b1000009102f260cc
echo ''
echo '----------------------------'

ruby sample.rb
