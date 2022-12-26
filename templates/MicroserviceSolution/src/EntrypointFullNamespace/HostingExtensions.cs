#if (IsWebApi)
using System.Reflection;
#endif

namespace EntrypointFullNamespace;

public static class HostingExtensions
{
    public static WebApplicationBuilder ConfigureServices(this WebApplicationBuilder builder)
    {
#if (IsWebApi)
        //This line is only required because there's no reference for Application during configuration
        //but when you have any reference for application this line is not required
        Assembly.Load("FullNamespace.Application");

        builder.Services.AddControllers();
        builder.Services.AddSuperPresenter();

        var superAssemblies = AppDomain.CurrentDomain.GetSuperLoadedAssemblies();

        builder.Services.AddAutoMapper(superAssemblies);

        builder.Services.AddSuperMediator(superAssemblies, opt => opt.UseValidation());
#endif
#if (IsWorker)
        builder.Services.AddHostedService<Worker>();
#endif
#if (IsHangfire)
        builder.Services.AddSuperHangfireServer(options => { options.Queues = new[] { "AppNameTemplate" }; });
#endif
#if (silverback)
        //See documentation: https://dev.azure.com/Superdigital-HoldCo/global-platform/_git/arq-lib-common-silverback
        builder.Services.AddSuperSilverback()
                .AddAllEndpointsConfigurators<SilverbackEndpointConfigurator>();
#endif

#if (mongodb)
        //See documentation: https://dev.azure.com/Superdigital-HoldCo/global-platform/_git/arq-lib-common-mongo
        builder.Services.AddSuperMongo();

        //Example of adding a collection, you can inject into constructor using IMongoCollection<WeatherForecast>
        // services.AddMongoCollection<WeatherForecast>(opt => opt
        //     // If collection does not exist, create with cosmos shard key
        //     .CreateWithCosmosShardKey(x => x.WeatherForecastId)

        //     // Define indexes
        //     .HasIndex(b => b.Ascending(x => x.WeatherForecastId), new CreateIndexOptions { Unique = true })
        //     .HasIndex(b => b.Ascending(x => x.Date))

        //     // Or explicitly say there is no index
        //     .HasNoIndex()
        // );
#endif

#if (redis)
        //See documentation: https://dev.azure.com/Superdigital-HoldCo/global-platform/_git/arq-lib-common-data?path=/docs/redis.md&_a=preview
        builder.Services.AddSuperDistributedCache();
#endif
        return builder;
    }
}