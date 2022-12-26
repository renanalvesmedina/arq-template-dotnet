using EntrypointFullNamespace;
#if (IsWebApi)
using Super.Common.Hosting.WebApi;
#endif

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.ConfigureSuperHost(options => options.ApplicationName = "AppNameTemplate");

#if (IsWebApi)
builder.ConfigureSuperWebApi(apiInfo =>
{
    apiInfo.Title = "TODO: api title";
    apiInfo.Description = "TODO: api description";
});
#endif
#if (IsWorker)
builder.ConfigureSuperWorker();
#endif
#if (IsHangfire)
builder.ConfigureSuperWorker();
#endif
builder.ConfigureServices();

var app = builder.Build();

#if (IsWebApi)
if (OpenApiGenerator.Runner.ShouldExecute(args))
{
    await OpenApiGenerator.Runner.RunAsync(args, app.Services);
    return;
}

// Configure the HTTP request pipeline.
#endif

#if (!IsWebApi)
app.UseRouting();
#endif
#if (IsWebApi)
app.MapControllers();
#endif

await app.RunAsync();
