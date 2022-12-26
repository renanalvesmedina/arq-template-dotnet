using EntrypointFullNamespace;
using Super.Common.Hosting.WebApi;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.ConfigureSuperHost(options => options.ApplicationName = "AppNameTemplate");

builder.ConfigureSuperWebApi(apiInfo =>
{
    apiInfo.Title = "TODO: api title";
    apiInfo.Description = "TODO: api description";
});

builder.ConfigureServices();
var app = builder.Build();

if (OpenApiGenerator.Runner.ShouldExecute(args))
{
    await OpenApiGenerator.Runner.RunAsync(args, app.Services);
    return;
}

// Configure the HTTP request pipeline.

app.UseRouting();
app.MapControllers();


await app.RunAsync();
