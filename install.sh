######################################################################
#Install apache mesos on ubuntu 16
#
#
#
#
######################################################################

#get the file and move it to a new directory
wget http://www.apache.org/dist/mesos/1.1.0/mesos-1.1.0.tar.gz
mv mesos* Documents/apacheMesos

#untar the file
tar -zxf mesos-1.1.0.tar.gz




#updating and installing dependencies
sudo apt-get update

sudo apt-get install -y tar wget git

sudo apt-get install -y openjdk-8-jdk

sudo apt-get -y install build-essential python-dev libcurl4-nss-dev libsasl2-dev libsasl2-modules maven libapr1-dev libsvn-dev zlib1g-dev


#Building mesos
cd mesos-1.1.0



#the build and configuration will take a while
mkdir build

#############################################################
#Make sure to run the following commands from the build directory
#
#
################################################################
../configure
make

#run the test to make sure it is installed
make test
#make install

#starting the mesos master
./bin/mesos-master.sh --ip=127.0.0.1 --work_dir=/var/lib/mesos

#starting the mesos agent
./bin/mesos-agent.sh --master=127.0.0.1:5050 --work_dir=/var/lib/mesos
