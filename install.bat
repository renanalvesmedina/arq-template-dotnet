@ECHO OFF
cd templates

cd MicroserviceSolution
dotnet new --install .\
cd ..
cd EntrypointProject
dotnet new --install .\
cd ..
cd NugetLibrarySolution
dotnet new --install .\