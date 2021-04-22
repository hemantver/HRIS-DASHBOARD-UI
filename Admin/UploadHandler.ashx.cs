using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Transactions;
using System.Web;

namespace HRISDashboard.Admin
{
    /// <summary>
    /// Summary description for UploadHandler
    /// </summary>
    public class UploadHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            using (var txscope = new TransactionScope(TransactionScopeOption.RequiresNew))
            {
                try
                {
                    if (context.Request.Files.Count > 0)
                    {
                        string RefNo = context.Request.Form["RefNo"].ToString();
                        string filePath = context.Request.Form["filePath"].ToString();
                        string fileType = context.Request.Form["fileType"].ToString();
                        string strNewFolder = filePath;

                        NameValueCollection arr = context.Request.Form;
                        HttpFileCollection files = context.Request.Files;

                        string newfileName = "";
                        string fname = "";
                        if (RefNo != "" && files.Count > 0)
                        {
                            List<CommonUploadFile> lstDoc = new List<CommonUploadFile>();

                            for (int i = 0; i < files.Count; i++)
                            {

                                HttpPostedFile file = files[i];
                                string unqFileName = GlobalFunctions.GetUniqueFileName(file.FileName);
                                newfileName = RefNo + '_' + (new GlobalFunctions()).GetUniqueFilename(strNewFolder, unqFileName);
                                fname = context.Server.MapPath("~/" + strNewFolder + '/' + newfileName);
                                file.SaveAs(fname);

                                string fileNo = "";
                                string LetterNo = "";

                                CommonUploadFile objDoc = new CommonUploadFile();
                                objDoc.FileId = Convert.ToInt32(arr[0]);
                                objDoc.UniqueFileName = newfileName;
                                objDoc.FileName = file.FileName;
                                objDoc.FilePath = strNewFolder;
                                objDoc.FileSpec = arr[0];
                                objDoc.FileNo = fileNo;
                                objDoc.LetterNo = LetterNo;
                                objDoc.RefNo = RefNo;
                                lstDoc.Add(objDoc);
                            }

                            string strDocs = Newtonsoft.Json.JsonConvert.SerializeObject(lstDoc);

                            txscope.Complete();
                            context.Response.Write(strDocs);
                        }
                        else
                        {

                            txscope.Dispose();
                            context.Response.Write("NoFiles");
                        }
                    }
                    else
                    {
                        txscope.Dispose();
                        context.Response.Write("SizeExceed");
                    }
                }
                catch (Exception ex)
                {
                    txscope.Dispose();
                    context.Response.Write("Error");
                }
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}