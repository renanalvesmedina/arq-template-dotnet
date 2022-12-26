namespace EntrypointFullNamespace;

public static class HostingExtensions
{
    public static WebApplicationBuilder ConfigureServices(this WebApplicationBuilder builder)
    {
        builder.Services.AddControllers();

        builder.Services.AddSuperPresenter();

        return builder;
    }
}