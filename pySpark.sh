##########################################################
#Running apache Spark
#
#
#
########################################################


cd ~/Documents/Spark/spark-2.1.0

#start pyspark
./bin/pyspark


#resiliant distributed dataset of the readme
textFile = sc.textFile("README.md")
textFile.count()
textFile.first()
