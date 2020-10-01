# This Dockerfile demonstrates how to use Docker to create an image
# after a build is produced and tested by Azure Pipeline
# See http://docs.microsoft.com/azure/devops/pipelines/languages/docker for more information

# Create a container with the compiled asp.net core app
FROM dotnetmentor/aws-s3:latest
RUN apk add --no-cache git
RUN go build -o /bin/HelloWorld

# Create app directory
WORKDIR /app
COPY . .
#RUN dotnet publish
# Copy files from the artifact staging folder on agent
#COPY ./PublishOutput/ .

ENTRYPOINT ["dotnet", "dotnetcore-sample.dll"]
