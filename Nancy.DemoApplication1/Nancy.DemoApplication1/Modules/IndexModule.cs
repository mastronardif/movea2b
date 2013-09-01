namespace Nancy.DemoApplication1.Modules
{
    using Nancy;

    public class IndexModule : NancyModule
    {
        public IndexModule()
        {
            //Get["/"] = _ => View["contract001"];
            Get["/"] = _ => Response.AsRedirect("/Content/index.html");

            Get["/sayhello"] = _ =>
            {
                return "Hello from Nancy";
            };

            //Get["/a2b"] = _ => View["../Content/index.html"];
            Get["/a2b"] = _ =>
            {
                // Perform validation, then redirect
                return Response.AsRedirect("/Content/index.html");
            };
        }
    }
}