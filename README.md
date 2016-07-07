This repository documents a bug in the swagger codegen tool for ruby language.

I used http://www.mocky.io/ to generate a response object which have two boolean attributes:

http://www.mocky.io/v2/577e209b1000009102f260cc

In the JSON response one of the attributes is true and the other false.
When using the swagger client, both attributes are evaluated to false.

* json-boolean-attribute-ruby-bug.yaml contents the swagger definitions
* run.sh generates the client, builds the corresponding gem and installs it
* sample.rb is a ruby script that fetch the response from the server and shows the result.
