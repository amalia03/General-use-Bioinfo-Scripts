#!/bin/bash

##This command will activate the align_speed.sh command every three hours for 120 times or ~ 2 weeks. 

seq 1 120 | xargs -I{} sh -c "./align_speed.sh && sleep 3h"                     │
