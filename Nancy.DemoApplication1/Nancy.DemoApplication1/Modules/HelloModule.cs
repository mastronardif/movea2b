namespace Nancy.DemoApplication1.Modules
{
    using Nancy;

    public class HelloModule : NancyModule
    {
        public HelloModule() : base("/hello")
        {
            Get["/"] = _ => "HelloModule Hello World";


        //http://localhost:55881/Hello/sayhello
            Get["/sayhello"] = _ =>
            {
                return "HelloModule Hello from Nancy";
            };
        }
    }
}