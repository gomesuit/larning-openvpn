#! /usr/bin/env python
import sys,ConfigParser

# Read username and password
filename = sys.argv[1]
fp = open(filename)
data = fp.readlines()
fp.close()
userId = data[0].rstrip()
password = data[1].rstrip()

# Read users database
config = ConfigParser.ConfigParser()
config.readfp(open('/vagrant/settings/passwdfile'))
users = config.items('password')

# Check for users database
flag = (userId, password) in users

if flag == True:
        print "[Auth] Success!"
        sys.exit(0)
else:
        print "[Auth] Failed."
        sys.exit(1)
