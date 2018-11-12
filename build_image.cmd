robocopy /E /R:0 \\FS3\Releases\HOS\PEM.SiteGroups\1.0.0.0 .\PEM.SiteGroups 
rem cd PEM.SiteGroups
rem docker build -t slado/pemsitegroups:latest -f ..\Dockerfile .
docker build -t slado/pemsitegroups:latest .
REm cd ..

