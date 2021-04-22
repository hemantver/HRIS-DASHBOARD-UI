using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class CommonUploadFile
{
    public Int64 FileId { get; set; }
    public string RefNo { get; set; }
    public string LetterNo { get; set; }
    public string FileName { get; set; }
    public string FileNo { get; set; }
    public string FilePath { get; set; }
    public string FileSpec { get; set; }
    public string UniqueFileName { get; set; }

    public Boolean SignPDF { get; set; }
}