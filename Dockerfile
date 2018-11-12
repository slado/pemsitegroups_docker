FROM microsoft/dotnet:2.1.1-aspnetcore-runtime


# Create app directory
WORKDIR /app

#copy application
COPY . .


#EXPOSE 8888
WORKDIR /app/PEM.SiteGroups
ENTRYPOINT ["dotnet", "PEM.Configuration.SiteGroups.dll"]
#RUN ["cmd ", "/c dir /s"]
