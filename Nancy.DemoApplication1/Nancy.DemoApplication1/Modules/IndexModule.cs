namespace Nancy.DemoApplication1.Modules
{
    using Nancy;

    public class IndexModule : NancyModule
    {
        public IndexModule()
        {
            Get["/"] = _ => View["contract001"];

            Get["/sayhello"] = _ =>
            {
                return "Hello from Nancy";
            };
        }
    }
}