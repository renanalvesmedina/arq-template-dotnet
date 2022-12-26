@ECHO OFF
cd templates

cd MicroserviceSolution
dotnet new --uninstall .\
cd ..

cd EntrypointProject
dotnet new --uninstall .\
cd ..

cd NugetLibrarySolution
dotnet new --uninstall .\