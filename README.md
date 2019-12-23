# containerized-aws-cdk
![Build status](https://github.com/ThinkThenRant/containerized-aws-cdk/workflows/Publish%20Docker%20image/badge.svg "Status")
A containerized, complete AWS CDK setup so that you can start working on your CDK app in no time without worrying about installation

## Usage
**DockerHub:**
Download the containerized CDK Docker image
```
docker pull thinkthenrant/containerized-aws-cdk:latest
```

Then, create a directory that we will persist the CDK app in and launch the
containerized CDK image:
```
mkdir myCdkApp

docker run -it -v $PWD/myCdkApp:/myCdkApp -w=/myCdkApp thinkthenrant/containerized-aws-cdk
```

Or **GitHub Packages:**
Download the containerized CDK Docker image
```
# USERNAME is your GitHub user name
# TOKEN is your GitHub personall access token
docker login -u USERNAME -p TOKEN docker.pkg.github.com
docker pull docker.pkg.github.com/thinkthenrant/containerized-aws-cdk/aws-cdk:latest
```

Then, create a directory that we will persist the CDK appsin and launch the
containerized CDK image:
```
mkdir myCdkApp

docker run -it -v $PWD/myCdkApp:/myCdkApp -w=/myCdkApp docker.pkg.github.com/thinkthenrant/containerized-aws-cdk/aws-cdk
```

### Start creating your CDK app
After your container started, run:
```
cdk init
```
and follow along!

More information: https://docs.aws.amazon.com/cdk/index.html
