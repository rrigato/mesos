#!/usr/bin/python
from pyspark.sql import SparkSession



class runModel: 
	def __init__(self):
		'''
			initializes the object by calling the loadData() function
		'''
		self.spark = SparkSession.builder.appName("TruMedia Hackathon").getOrCreate()
		self.loadData()
	def loadData(self):
		'''
			Reads the data into memory
		'''		
		print("Hello World")



if __name__ == '__main__':
	hackObj = runModel()
