FROM microsoft/aspnetcore:2.0
#Install git
#RUN apk add --no-cache git
#Get the hello world package from a GitHub repository
#RUN go get github.com/dotnet/example/hello
#WORKDIR /go/src/github.com/dotnet/example/hello
# Build the project and send the output to /bin/HelloWorld 
#RUN dotnet publish

FROM microsoft/aspnetcore:2.0
#Copy the build's output binary from the previous build container
COPY . .
ENTRYPOINT ["/bin/HelloWorld"]
