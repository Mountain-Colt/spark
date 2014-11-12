"""SimpleApp.py"""  # this only works locally, will update once we have a working master deployed
from pyspark import SparkContext
sparkDirectory = "/Users/williamburgo/Desktop/spark-1.1.0-bin-hadoop2.4" # directory where spark is built
logFile = sparkDirectory + "/README.md"  # Should be some file on your system
sc = SparkContext("local", "Simple App")
logData = sc.textFile(logFile).cache()

numAs = logData.filter(lambda s: 'a' in s).count()
numBs = logData.filter(lambda s: 'b' in s).count()

print "Lines with a: %i, lines with b: %i" % (numAs, numBs)


#for configuring slave to connect to a mesos master
"""
val conf = new SparkConf()
  .setMaster("mesos://HOST:5050")
  .setAppName("My app")
  .set("spark.executor.uri", "<path to spark-1.1.0.tar.gz uploaded above>")
val sc = new SparkContext(conf)
""