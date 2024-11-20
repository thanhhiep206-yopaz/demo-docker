
#!/bin/bash

rm -f tmp/pids/server.pid && bundle install && rails server -b 0.0.0.0 -p 3001
