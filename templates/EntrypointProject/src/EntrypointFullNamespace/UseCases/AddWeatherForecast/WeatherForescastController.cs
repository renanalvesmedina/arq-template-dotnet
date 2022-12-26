using Microsoft.AspNetCore.Mvc;
using Super.Common.Model.Presenter.WebApi;

namespace EntrypointFullNamespace.UseCases.AddWeatherForecast;

[ApiVersion("1")]
[Route("v{version:apiVersion}/[controller]")]
public class WeatherForecastController : ApiController
{
    /// <summary>
    /// Summary of endpoint
    /// </summary>
    /// <returns></returns>
    [HttpPost]
    public async Task<IActionResult> AddForecastAsync(AddWeatherForecastRequest request)
    {
        // var command = Map<AddWeatherForecastCommand>(request);

        // var result = await Send(command);
        // return Created(result);
        return Ok();
    }
}
