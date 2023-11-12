#!/usr/bin/env bash

locust -f locustfile.py --host https://ud-az-devops-02.azurewebsites.net/ --users 500 --spawn-rate 5 