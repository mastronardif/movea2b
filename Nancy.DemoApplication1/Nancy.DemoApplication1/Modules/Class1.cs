using System.Collections.Generic;
namespace Nancy.DemoApplication1.Modules
{
    using Nancy;

    public class contract001Module : NancyModule
    {
        public contract001Module() : base("/contract001")
        {
            Get["/"] = _ => View["wtf"];

            Get["/sayhello"] = _ =>
            {
                return "wtf: Hello from Nancy";
            };

            Post["/contract001"] = parameters =>
            {
                //string from = parameters.from;
                string retval = string.Empty;
                string strXslt = string.Empty;
                string strxml = makeXML_InitalContract ("Contract001", Request);

                myhelpers.MyHelpers.ReadFromApp_Data("~/App_Data/testdata.xml", ref strxml);
                myhelpers.MyHelpers.ReadFromApp_Data("~/App_Data/myTable.xsl", ref strXslt);

                // style the _____.
                //  = StyleTheShit(xml, xslt);
                string strResults = string.Empty;

                myxslxml.MyXml.my_XslXmlOutsss(strxml, strXslt, ref strResults);

                return "contract001Module: ____ <br/>" + strResults;
            };
        }

        private string makeXML_InitalContract (string root, Nancy.Request request)
        {
            string retval = string.Empty;

            foreach (string key in Request.Form.Keys)
            {
                string val = Request.Form[key];
                string pair = string.Format("<{0}>{1}</{0}>", key, Request.Form[key]);
                retval += pair;
                retval += "\n";
            }

            retval = string.Format("<{0}>\n{1}\n </{0}>\n", root, retval);

            return retval;
        }
    }
}