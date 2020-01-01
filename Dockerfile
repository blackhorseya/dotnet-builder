FROM mcr.microsoft.com/dotnet/core/sdk:3.1-alpine
MAINTAINER SeanCheng

RUN apk add --no-cache openjdk11
RUN dotnet tool install --global coverlet.console && \
    dotnet tool install --global dotnet-sonarscanner
ENV PATH=$PATH:/root/.dotnet/tools/
