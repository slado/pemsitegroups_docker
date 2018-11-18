FROM microsoft/dotnet:2.1.1-aspnetcore-runtime
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop';"]

# Create app directory
WORKDIR /app

#copy application
WORKDIR /package 
RUN Invoke-WebRequest -OutFile package.zip http://sk0050p.datapac.local:5000/api/components/PEM.SiteGroups/1.0.0.0

#expand packages
RUN Expand-Archive package.zip /app

#EXPOSE 8888
WORKDIR /app

#Copy configuration
COPY appsettings.json .

#Set entru point
ENTRYPOINT ["dotnet", "PEM.Configuration.SiteGroups.dll"]
#RUN ["cmd ", "/c dir /s"]
