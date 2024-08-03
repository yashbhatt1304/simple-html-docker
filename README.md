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
docker build -t simple-html-docker:latest .
```
* Run the docker image.
```
docker run -p 81:80 simple-html-docker:latest
```
* Navigat to Elastic Cloud Registry and create a new public repository with your choice of name.
* Configure your amazon access key and access id by running the following command in EC2 instance.
```
aws configure
```
* Run the below commands to push the image to ECR registry.
```
aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/f8g8h5d4
docker build -t ecr-simple-docker-yash .
docker tag ecr-simple-docker-yash:latest public.ecr.aws/f8g8h5d4/ecr-simple-docker-yash:latest
docker push public.ecr.aws/f8g8h5d4/ecr-simple-docker-yash:latest
```
* You can see the image is pushed to the repository.
