FROM microsoft/dotnet:2.1.1-aspnetcore-runtime


# Create app directory
WORKDIR /app

#copy application
COPY . .


#EXPOSE 8888
ENTRYPOINT ["dotnet", "PEM.Configuration.SiteGroups.dll"]
