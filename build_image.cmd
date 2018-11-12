robocopy /E /R:0 \\FS3\Releases\HOS\PEM.SiteGroups\1.0.0.0 .\PEM.SiteGroups 
cd PEM.SiteGroups
docker build -t slado/pemsitegroups:latest -f ..\Dockerfile .
cd ..

