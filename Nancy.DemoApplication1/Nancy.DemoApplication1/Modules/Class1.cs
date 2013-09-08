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
                string strResults = string.Empty;

                //myhelpers.MyHelpers.ReadFromApp_Data("~/App_Data/testdata.xml", ref strxml);
                //myhelpers.MyHelpers.ReadFromApp_Data("~/App_Data/contract001.xsl", ref strXslt);
                myhelpers.MyHelpers.ReadFromApp_Data("~/App_Data/contract0012.xsl", ref strXslt);
                //myhelpers.MyHelpers.ReadFromApp_Data("~/App_Data/contract00123.xsl", ref strXslt);


                // Set Transaction ID
                int iii = mybusiness.MyBusiness.addTransactionID(ref strxml, "transaction");

                myxslxml.MyXml.my_XslXmlTransformToString(strxml, strXslt, ref strResults);
                return strResults;
                //return "contract001Module: ____ <br/>" + strResults;
            };

            Post["/contract0012"] = parameters =>
            {
                //string from = parameters.from;
                string retval = string.Empty;
                string strXslt = string.Empty;
                string strResults = string.Empty; 
                
                string strxml = makeXML_InitalContract("Contract0012", Request);

                // if cancel
                //bool val = myxslxml.MyXml.isTagValue(strxml, "Contract0012/yessubmit");
                //val = myxslxml.MyXml.isTagValue(strxml, "Contract0012/cancelsubmit");
                // if continue w/ request

                if ( myxslxml.MyXml.isTagValue(strxml, "Contract0012/cancelsubmit"))
                {
                    myhelpers.MyHelpers.ReadFromApp_Data("~/App_Data/contract001.xsl", ref strXslt);
                    myxslxml.MyXml.my_XslXmlTransformToString(strxml, strXslt, ref strResults);
                    return strResults;
                }

                if (myxslxml.MyXml.isTagValue(strxml, "Contract0012/yessubmit"))
                {
                    // step II a
                    // mail contract to user.

                //myhelpers.MyHelpers.ReadFromApp_Data("~/App_Data/testdata.xml", ref strxml);
                //myhelpers.MyHelpers.ReadFromApp_Data("~/App_Data/contract001.xsl", ref strXslt);
                myhelpers.MyHelpers.ReadFromApp_Data("~/App_Data/contract00123.xsl", ref strXslt);

                // style the _____.
                //  = StyleTheShit(xml, xslt);
                

                myxslxml.MyXml.my_XslXmlTransformToString(strxml, strXslt, ref strResults);

                // mail initial contract to move requester.
                string to   = "mastronardif@gmail.com";
                string from = "mastronardif@netcarrier.com";

                // if everything passes mail to user.
                retval += mymail.MyMail.SendByMG22(to, from, strResults);
                }

                return strResults;
                //return "contract001Module: ____ <br/>" + strResults;

                // mail to 
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