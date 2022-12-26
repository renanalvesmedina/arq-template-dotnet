@ECHO OFF

echo "Tesing WebApi"
dotnet new sd-ms --fortify-app "UmNome Qualquer" --namespace Hello.Wrld --domain cards --domain-prefix cd --k8s-namespace cards --system cd-auth --team cards --repository cd-ms-bla --app-name cd-alef -o ./tests-result/webapi-without-deps-with-dots
cd ./tests-result/webapi-without-deps-with-dots
dotnet build
cd ../../

dotnet new sd-ms --fortify-app "UmNome Qualquer" --namespace HelloWrld --domain cards --domain-prefix cd --k8s-namespace cards --system cd-auth --team cards --repository cd-ms-bla --app-name cd-alef -o ./tests-result/webapi-without-deps
cd ./tests-result/webapi-without-deps
dotnet build
cd ../../

dotnet new sd-ms --fortify-app "UmNome Qualquer" --namespace HelloWrld --domain cards --domain-prefix cd --k8s-namespace cards --system cd-auth --team cards --repository cd-ms-bla --app-name cd-alef --silverback true -o ./tests-result/webapi-with_kafka
cd ./tests-result/webapi-with_kafka
dotnet build
cd ../../

dotnet new sd-ms --fortify-app "UmNome Qualquer" --namespace HelloWrld --domain cards --domain-prefix cd --k8s-namespace cards --system cd-auth --team cards --repository cd-ms-bla --app-name cd-alef --redis true -o ./tests-result/webapi-with_redis
cd ./tests-result/webapi-with_redis
dotnet build
cd ../../

dotnet new sd-ms --fortify-app "UmNome Qualquer" --namespace HelloWrld --domain cards --domain-prefix cd --k8s-namespace cards --system cd-auth --team cards --repository cd-ms-bla --app-name cd-alef --mongodb true -o ./tests-result/webapi-with_mongodb
cd ./tests-result/webapi-with_mongodb
dotnet build
cd ../../

dotnet new sd-ms --fortify-app "UmNome Qualquer" --namespace HelloWrld --domain cards --domain-prefix cd --k8s-namespace cards --system cd-auth --team cards --repository cd-ms-bla --app-name cd-alef --silverback true --redis true --mongodb true -o ./tests-result/webapi-with-all
cd ./tests-result/webapi-with-all
dotnet build
cd ../../

echo "Tesing Worker"
dotnet new sd-ms --fortify-app "UmNome Qualquer" --namespace HelloWrld --domain cards --domain-prefix cd --k8s-namespace cards --system cd-auth --team cards --repository cd-ms-bla --app-name cd-alef --template worker -o ./tests-result/worker-without-deps
cd ./tests-result/worker-without-deps
dotnet build
cd ../../

dotnet new sd-ms --fortify-app "UmNome Qualquer" --namespace HelloWrld --domain cards --domain-prefix cd --k8s-namespace cards --system cd-auth --team cards --repository cd-ms-bla --app-name cd-alef --template worker --silverback true -o ./tests-result/worker-with_kafka
cd ./tests-result/worker-with_kafka
dotnet build
cd ../../

dotnet new sd-ms --fortify-app "UmNome Qualquer" --namespace HelloWrld --domain cards --domain-prefix cd --k8s-namespace cards --system cd-auth --team cards --repository cd-ms-bla --app-name cd-alef --template worker --redis true -o ./tests-result/worker-with_redis
cd ./tests-result/worker-with_redis
dotnet build
cd ../../

dotnet new sd-ms --fortify-app "UmNome Qualquer" --namespace HelloWrld --domain cards --domain-prefix cd --k8s-namespace cards --system cd-auth --team cards --repository cd-ms-bla --app-name cd-alef --template worker --mongodb true -o ./tests-result/worker-with_mongodb
cd ./tests-result/worker-with_mongodb
dotnet build
cd ../../

dotnet new sd-ms --fortify-app "UmNome Qualquer" --namespace HelloWrld --domain cards --domain-prefix cd --k8s-namespace cards --system cd-auth --team cards --repository cd-ms-bla --app-name cd-alef --template worker --silverback true --redis true --mongodb true -o ./tests-result/worker-with-all
cd ./tests-result/worker-with-all
dotnet build
cd ../../

echo "Tesing Hangfire"
dotnet new sd-ms --fortify-app "UmNome Qualquer" --namespace HelloWrld --domain cards --domain-prefix cd --k8s-namespace cards --system cd-auth --team cards --repository cd-ms-bla --app-name cd-alef --template hangfire -o ./tests-result/hangfire-without-deps
cd ./tests-result/hangfire-without-deps
dotnet build
cd ../../

dotnet new sd-ms --fortify-app "UmNome Qualquer" --namespace HelloWrld --domain cards --domain-prefix cd --k8s-namespace cards --system cd-auth --team cards --repository cd-ms-bla --app-name cd-alef --template hangfire --silverback true -o ./tests-result/hangfire-with_kafka
cd ./tests-result/hangfire-with_kafka
dotnet build
cd ../../

dotnet new sd-ms --fortify-app "UmNome Qualquer" --namespace HelloWrld --domain cards --domain-prefix cd --k8s-namespace cards --system cd-auth --team cards --repository cd-ms-bla --app-name cd-alef --template hangfire --redis true -o ./tests-result/hangfire-with_redis
cd ./tests-result/hangfire-with_redis
dotnet build
cd ../../

dotnet new sd-ms --fortify-app "UmNome Qualquer" --namespace HelloWrld --domain cards --domain-prefix cd --k8s-namespace cards --system cd-auth --team cards --repository cd-ms-bla --app-name cd-alef --template hangfire --mongodb true -o ./tests-result/hangfire-with_mongodb
cd ./tests-result/hangfire-with_mongodb
dotnet build
cd ../../

dotnet new sd-ms --fortify-app "UmNome Qualquer" --namespace HelloWrld --domain cards --domain-prefix cd --k8s-namespace cards --system cd-auth --team cards --repository cd-ms-bla --app-name cd-alef --template hangfire --silverback true --redis true --mongodb true -o ./tests-result/hangfire-with-all
cd ./tests-result/hangfire-with-all
dotnet build
cd ../../

echo "Finished"