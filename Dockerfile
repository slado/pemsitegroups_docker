FROM microsoft/aspnetcore

# Create app directory
WORKDIR /app

#copy application
COPY PEM.SiteGroups .


#EXPOSE 8888
ENTRYPOINT ["dotnet", "PEM.Configuration.SiteGroups.dll"]
