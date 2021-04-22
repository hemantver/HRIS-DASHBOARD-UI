using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Xml;

public class GlobalFunctions
{
    public static string GetUniqueFileName(string filename)
    {
        try
        {
            string[] ext = filename.Split('.');
            return ext[0] + Guid.NewGuid().ToString() + "." + ext[ext.Length - 1];
        }
        catch (Exception ex)
        {
            //  new ExceptionAndEventHandling(ex);
            return ex.ToString();
        }
    }

    public string GetUniqueFilename(string folder, string postedFileName)
    {
        string fileExtension = postedFileName.Substring(postedFileName.LastIndexOf('.') + 1);
        int index = 2;

        while (System.IO.File.Exists(HttpContext.Current.Server.MapPath("~/" + folder + "/" + postedFileName)))
        {
            if (index == 2)
                postedFileName =
                    string.Format("{0} ({1}).{2}",
                                  postedFileName.Substring(0, postedFileName.LastIndexOf('.')),
                                  index,
                                  fileExtension);
            else
                postedFileName =
                    string.Format("{0} ({1}).{2}",
                                  postedFileName.Substring(0, postedFileName.LastIndexOf(' ')),
                                  index,
                                  fileExtension);
            index++;
        }

        return postedFileName;
    }

    public static String ConvertToXMLFormat<T>(ref ICollection<T> list)
    {
        XmlDocument doc = new XmlDocument();
        XmlNode node = doc.CreateNode(XmlNodeType.Element, string.Empty, "root", null);

        foreach (T xml in list)
        {
            XmlElement element = doc.CreateElement("data");
            PropertyInfo[] allProperties = xml.GetType().GetProperties();
            foreach (PropertyInfo thisProperty in allProperties)
            {
                object value = thisProperty.GetValue(xml, null);
                XmlElement tmp = doc.CreateElement(thisProperty.Name);
                if (value != null)
                {
                    tmp.InnerXml = value.ToString();
                }
                else
                {
                    tmp.InnerXml = string.Empty;
                }
                element.AppendChild(tmp);
            }
            node.AppendChild(element);
        }
        doc.AppendChild(node);
        return doc.InnerXml;
    }

}