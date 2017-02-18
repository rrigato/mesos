#!/usr/bin/python
import pandas as pd

class runModel: 
	def __init__(self):
		'''
			initializes the object by calling the loadData() function
		'''
		self.loadData()
	def loadData(self):
		'''
			Reads the data into memory
		'''		
		self.allData = pd.read_csv("allData.csv")


if __name__ == '__main__':
	hackObj = runModel()
