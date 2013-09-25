using System.Collections.Generic;
namespace Nancy.DemoApplication1.Modules
{
    using mynancy;
    using Nancy;

    public class ShipperModule : NancyModule
    {
        public ShipperModule() : base("/shipper")
        {
            Get["/"] = _ => View["wtf"];

            Get["/sayhello"] = _ =>
            {
                return "wtf: Hello from Nancy";
            };

            Post["/trackme"] = parameters =>
            {
                //string from = parameters.from;
                string retval = string.Empty;
                string strXslt = string.Empty;
                //string strxml = makeXML_InitalContract ("Contract001", Request);
                string strxml = mynancy.MyNancy.makeXML_FromRequestData("Trackme001", Request);
                string strResults = string.Empty;

                //myhelpers.MyHelpers.ReadFromApp_Data("~/App_Data/testdata.xml", ref strxml);
                //myhelpers.MyHelpers.ReadFromApp_Data("~/App_Data/contract001.xsl", ref strXslt);
                myhelpers.MyHelpers.ReadFromApp_Data("~/App_Data/trackme.xsl", ref strXslt);
                //myhelpers.MyHelpers.ReadFromApp_Data("~/App_Data/contract0012.xsl", ref strXslt);
                //myhelpers.MyHelpers.ReadFromApp_Data("~/App_Data/contract00123.xsl", ref strXslt);


                // Set Transaction ID
                //int iii = mybusiness.MyBusiness.addTransactionID(ref strxml, "transaction");

                myxslxml.MyXml.my_XslXmlTransformToString(strxml, strXslt, ref strResults);
                return strResults;
                //return "contract001Module: ____ <br/>" + strResults;
            };            
        }
       
    }
}