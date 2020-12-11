# Shell script to delete the heapdumps, javacore dumps and snap dumps from the /tmp directory
# Author: Neal Hilty
# last updated: 12/10/2002
#!/bin/bash
PATH="/usr/local/bin:/usr/bin:/bin"
date >> /home/oasis/scripts/utilSCleanupTemp.log
df -k /tmp >> /home/oasis/scripts/utilSCleanupTemp.log
find /tmp -name "heapdump.*" -exec rm {} \;
find /tmp -name "javacore.*" -exec rm {} \;
find /tmp -name "Snap.*" -exec rm {} \;
df -k /tmp >> /home/oasis/scripts/utilSCleanupTemp.log
