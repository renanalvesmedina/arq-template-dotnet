@ECHO OFF

echo "Tesing WebApi"
echo "Creating solution"
dotnet new coe-ms --namespace App --domain commons --domain-prefix coe --k8s-namespace coe --system coe-auth --team sysmap-coe --repository coe-ms-bla --app-name coe-app1 -o ./tests-result/single-project/webapi-with-all
cd ./tests-result/single-project/webapi-with-all

echo "Creating single WebApi project"
dotnet new coe-project --solutionFileName Coe.App.sln --subcomponentOf coe-ms-bla --namespace App2 --app-name coe-app2 --k8s-namespace coe --system coe-auth --team sysmap-coe

echo "Creating single Worker project"
dotnet new coe-project --solutionFileName Coe.App.sln --subcomponentOf coe-ms-bla --namespace App3 --app-name coe-app3 --k8s-namespace coe --system coe-auth --team sysmap-coe --template worker

dotnet build