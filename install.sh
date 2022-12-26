#!/bin/bash
echo "Installing templates..."
dotnet new --install ./templates/EntrypointProject/
dotnet new --install ./templates/MicroserviceSolution/
dotnet new --install ./templates/NugetLibrarySolution/
