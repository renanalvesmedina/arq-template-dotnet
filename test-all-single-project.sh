#!/bin/bash
echo "Tesing WebApi"
echo "Creating solution"
dotnet new sd-ms --fortify-app "UmNome Qualquer" --namespace App --domain cards --domain-prefix "cd" --k8s-namespace cards --system "cd-auth" --team cards --repository "cd-ms-bla" --app-name "cd-app1" --silverback true --redis true --mongodb true -o "./tests-result/single-project/webapi-with-all"
cd "./tests-result/single-project/webapi-with-all"
echo "Creating single WebApi project"
dotnet new sd-project --fortify-app "UmNome Qualquer" --solutionFileName Super.App.sln --subcomponentOf "cd-ms-bla" --namespace App2 --app-name "cd-app2" --k8s-namespace cards --system "cd-auth" --team cards
echo "Creating single Worker project"
dotnet new sd-project --fortify-app "UmNome Qualquer" --solutionFileName Super.App.sln --subcomponentOf "cd-ms-bla" --namespace App3 --app-name "cd-app3" --k8s-namespace cards --system "cd-auth" --team cards --template worker
echo "Creating single HangfireServer project"
dotnet new sd-project --fortify-app "UmNome Qualquer" --solutionFileName Super.App.sln --subcomponentOf "cd-ms-bla" --namespace App4 --app-name "cd-app4" --k8s-namespace cards --system "cd-auth" --team cards --template hangfire
dotnet build