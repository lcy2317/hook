#!/bin/bash
ps -ef | grep java | grep  hook | cut -c 9-15 | xargs kill -9