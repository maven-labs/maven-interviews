# Maven Interview Playground

## Setup

``` bash
git clone git@github.com:maven-labs/maven-interviews.git
cd maven-interviews
bundle install
./bin/rake db:setup
```

## Run Server
Start the rails server
``` bash
./bin/rails server -b 0.0.0.0
```

When starting, the server will print out the IP address and web address to access from a remote machine/phone:
```
=> Booting Puma
=> Rails 5.2.2 application starting in development
=> Run `rails server -h` for more startup options

IP Address: 10.0.2.40
Available at: http://10.0.2.40.nip.io:3000/

# ...
```
