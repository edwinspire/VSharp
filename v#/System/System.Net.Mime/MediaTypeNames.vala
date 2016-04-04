
namespace System.Net.Mime {
	public struct MediaTypeNames
	{

public Application Application;
public Image Image;
public Text Text;
		
	}


public struct Application {
			public string prefix;
			public string Octet;
			public string Pdf;
			public string Rtf;
			public string Soap;
			public string Zip;
public Application(){
			this.prefix = "application/";
			this.Octet	= prefix + "octet-stream";
			this.Pdf		= prefix + "pdf";
			this.Rtf		= prefix + "rtf";
			this.Soap	= prefix + "soap+xml";
			this.Zip		= prefix + "zip";
}


		}
		public struct Image {
			public string prefix;
			public string Gif;
			public string Jpeg;
			public string Tiff;
public Image(){
this.prefix		= "image/";
			this.Gif		= prefix + "gif";
			this.Jpeg	= prefix + "jpeg";
			this.Tiff	= prefix + "tiff";
}
		}
		public struct Text {
			public string prefix;
			public string Html;
			public string Plain;
			public string RichText;
			public string Xml;
public Text(){
this.prefix		= "text/";
			this.Html	= prefix + "html";
			this.Plain	= prefix + "plain";
			this.RichText	= prefix + "richtext";
			this.Xml		= prefix + "xml";
}

		}



}
