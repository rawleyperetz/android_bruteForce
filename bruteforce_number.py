from itertools import product
import os

os.chdir(r'/home/rawleyperetz/Desktop')

num='0123456789'

brute_list=[]

last=int(input('Enter a number <=6: '))
for length in range(1,(last+1)):
  to_attempt = product(num, repeat=length)
  for attempt in to_attempt:
    brute_list.append(''.join(attempt))

file = open('brute_number.txt','w')
for number in brute_list:
  file.write(number+'\n')
file.close()
