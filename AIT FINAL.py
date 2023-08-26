# -*- coding: utf-8 -*-
"""
Created on Fri Nov 25 19:37:19 2022

@author: jaswa
"""

import matplotlib.pyplot as plt
import pandas

df=pandas.read_csv("C:/Users/jaswa/.ipython/FINAL.AIT.csv")
df

df.head()

df.columns

subset =df[['max_temp','station_name']]
subset.head()

x=df.max_temp
y=df.station_name
x
y

#max_temp

plt.plot(x,y, '.-')
plt.title('max_temp vs station_name ')
plt.xlabel('max_temp')
plt.ylabel('station_name')
plt.show()


#min_temp

x1=df.min_temp
y1=df.station_name
x1
y1

plt.plot(x1,y1, '.-')
plt.title('min_temp vs station_name ')
plt.xlabel('min_temp')
plt.ylabel('station_name')
plt.show()



x2=df.min_temp
y2=df.station_name
x2
y2

plt.plot(x2,y2, '.-')
plt.title('min_temp vs station_name ')
plt.xlabel('min_temp')
plt.ylabel('station_name')
plt.show()



