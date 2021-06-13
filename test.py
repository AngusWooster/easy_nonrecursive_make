#!/usr/bin/env python3
import sys
from datetime import datetime
from datetime import date

today = date.today()
now = datetime.now()
d = today.strftime("%Y%m%d")

current_time = now.strftime("%H_%M_%S")

print (d+"_"+current_time+"_its_sec.txt")

with open(d+"_"+current_time+"_its_sec.txt", 'w') as f:
        print("123", file=f)