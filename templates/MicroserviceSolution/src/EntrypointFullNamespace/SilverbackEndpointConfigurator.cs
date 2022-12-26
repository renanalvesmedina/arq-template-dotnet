using Silverback.Messaging.Configuration;
using Super.Common.Silverback.SuperBuilder;

namespace EntrypointFullNamespace;

public class SilverbackEndpointConfigurator : IEndpointsConfigurator
{
    private readonly SuperEndpointsOptions _superEndpointsOptions;

    public SilverbackEndpointConfigurator(SuperEndpointsOptions superEndpointsOptions)
    {
        _superEndpointsOptions = superEndpointsOptions;
    }

    public void Configure(IEndpointsConfigurationBuilder builder)
    {
        builder
            .CreateSuperEndpointsBuilder(_superEndpointsOptions);
    }
}
