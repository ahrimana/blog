#!/bin/bash

arguments="$@"
if [ -z $arguments ]; then
    arguments="python /app/manage.py runserver 0.0.0.0:8000"
fi

sudo docker run -it -p 8000:8000 -v /vagrant/projects/ahrimana:/app --rm --link postgresql:postgresql ahrimana/blog:latest $arguments
