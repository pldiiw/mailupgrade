#!/bin/bash

head -c 512 /dev/urandom | sha512sum | cut -d ' ' -f 1
