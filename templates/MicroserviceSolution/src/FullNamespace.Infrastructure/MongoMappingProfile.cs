using System.Collections.Generic;
using System.Linq;
using AutoMapper;
using MongoDB.Bson;

namespace FullNamespace.Infrastructure;

public class MongoMappingProfile : Profile
{
    public MongoMappingProfile()
    {
        CreateMap<List<ObjectId>, List<string>>().ConvertUsing(o => o.Select(os => os.ToString()).ToList());
        CreateMap<List<string>, List<ObjectId>>().ConvertUsing(o => o.Select(os => ObjectId.Parse(os)).ToList());
        CreateMap<ObjectId, string>().ConvertUsing(o => o.ToString());
        CreateMap<string, ObjectId>().ConvertUsing(s => ObjectId.Parse(s));
    }
}
