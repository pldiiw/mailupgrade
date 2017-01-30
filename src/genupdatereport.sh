#!/bin/bash

apt-get -s upgrade |
  awk -F '[][() ]' '/^Inst/ { print "PROGRAM: "$2 \
                                    "\n\t⤷ INSTALLED VERSION: "$4 \
                                    "\n\t⤷ AVAILABLE VERSION: "$7 }'
