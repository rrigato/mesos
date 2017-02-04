###How to view a Mesos cluster from a node via LAN

#####First setup up the master node

We first need to find our iPv4 address:
```
ip route get 8.8.8.8 | awk '{print $NF; exit}'
```

We can use the above ipv4 to setup the apache mesos master 
```
#change directory to where apache mesos was built
cd ~Documents/Mesos/mesos-1.1.0/build
  
sudo ./bin/mesos-master.sh --ip=< your ipv4> --work_dir=/var/lib/mesos
```
Make sure to replace the above with your actual ipv4

Verifiy that you are listening on the correct port. Mesos by default has its master at port 5050 and agent at port 5051:

```
netstat -tulnp | grep 5050
```
The above will display that port 5050 is listening on the ipv4 of your server

#####View the Mesos web UI from the node
Simply type 
```
http://<your ipv4>:5050  
```
on any browser for a computer connected to your lan and you should be able to see cluster information



###Adding agent nodes 
Adding agent nodes is relatively straight forward, simply include the master ipv4 address

```
#cd to the build directory of your Mesos cluster
sudo ./bin/mesos-agent.sh --master=<master ipv4>:<master port> --port=<port yout  want for agent> --work_dir=/var/lib/mesos
```

To check that it worked, go to http://<master ipv4>:<master port>
and the resources associated with the new agent should now be present



###Running Apache Spark using an Apache Mesos Cluster
The first environment variable you need to set in order to run apache Spark on Mesos is the MESOS_NATIVE_JAVA_LIBRARY environemnt variable

To set this variable cd to the configuration directory of the downloaded Spark cluster

```
cd ~/Documents/Spark/spark-2.1.0/conf
```

And [create a spark-env.sh file to point to the libmesos.so file]()

