#!/bin/bash
#su caysen -c "xfce4-terminal -e 'gpclient connect --browser default utdvpn.utdallas.edu'"
su caysen -c "gpclient connect --browser default utdvpn.utdallas.edu" 2> /home/caysen/log.txt
