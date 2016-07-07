require 'swagger_client'

client = SwaggerClient::DefaultApi.new
sample_object = client.sample_id_get('577e209b1000009102f260cc')
puts ''
puts 'THIS IS THE OBTAINED RESULT:'
puts <<-EOF
  {
    "value_true": #{sample_object.value_true},
    "value_false": #{sample_object.value_false}
  }
EOF
puts '----------------------------'
puts ":-( :-( :-("
