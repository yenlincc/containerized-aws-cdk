# containerized-aws-cdk
A containerized, complete AWS CDK setup so that you can start working on your CDK app in no time without worrying about installation

## Usage
Download the docker image via either:

**DockerHub:**
```
docker pull thinkthenrant/containerized-aws-cdk:latest
```

Or **GitHub Packages:**
```
# USERNAME is your GitHub user name
# TOKEN is your GitHub personall access token
docker login -u USERNAME -p TOKEN docker.pkg.github.com
docker pull docker.pkg.github.com/thinkthenrant/containerized-aws-cdk/aws-cdk:latest
```

Then, create a directory that we will store CDK apps in and launch the
containerized CDK image:
```
mkdir myCdkApp

# if pulled from DockerHub
docker run -it -v $PWD/myCdkApp:/myCdkApp -w=/myCdkApp thinkthenrant/containerized-aws-cdk

# if pulled from GitHub Packages
docker run -it -v $PWD/myCdkApp:/myCdkApp -w=/myCdkApp docker.pkg.github.com/thinkthenrant/containerized-aws-cdk/aws-cdk
```
