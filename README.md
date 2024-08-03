# simple-html-docker

###### Follow below steps to deploy Simple HTML website through docker and ECR
* Launch the EC2 instance.
* Update the apt package manager by running the following comand.
``` 
sudo apt update 
```
* Install the git, docker and nginx by running the following command.
```
sudo apt install git-all
sudo apt install niginx 
sudo apt install docker.io 
```
* If you're getting permission deniew error than, run the following command.
```
sudo chmod 666 /var/run/docker.sock
```
* Clone the github repository that contains the code with the below command.
```
git clone https://github.com/yashbhatt1304/simple-html-docker.git
```
* Navigate to the simple-html-docker folder and build docker image.
```
docket build -t simple-html-docker:latest .
```
* Run the docker image.
```
docker run -p 81:80 simple-html-docker:latest
```