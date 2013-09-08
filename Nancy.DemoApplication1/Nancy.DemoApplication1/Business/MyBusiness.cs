using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Xml;
using System.Xml.Serialization;
using System.Xml.Xsl; 


namespace mybusiness
{
    class MyBusiness
    {
        //setTransactionID(strxml, Transaction ID);
        static public int addTransactionID(ref string xml, string Tag)
        {
            int iRetval = 0;

            // get next transactionID
            string transactionID = "Fasdf234eewU";
            string TagTransitionID = string.Format("<{0}>{1}</{0}> ", Tag, transactionID);
            
            // add Element to xml
            xml = myxslxml.MyXml.AddTagValue(xml, TagTransitionID);

            return iRetval;       
        }
        
    }
}
