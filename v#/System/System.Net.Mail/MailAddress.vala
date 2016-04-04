using GLib;

namespace System.Net.Mail {

errordomain Error {
    ArgumentNullException,
    CreateFormatException
}


	public class MailAddress : Object
	{
		

		string address;
		string displayName;
		string host;
		string user;
		string to_string;
		
		
		public MailAddress(string address, string? displayName = null)
		{
			if (address == null){
throw new Error.ArgumentNullException ("address");
}else if (address.length == 0){
				throw new Error.ArgumentNullException ("address");
}else if (displayName != null){
		this.displayName = displayName.strip ();
}
	
			ParseAddress (address);
		}

		void ParseAddress (string address)
		{
			// 1. Quotes for display name
			var _address = address.strip ();
			int idx = _address.index_of ("\"");
				int closing = _address.index_of ("\"");

			if (idx != -1) {
				if (idx != 0 || _address.length == 1){
			CreateFormatException ();
}else if(closing == idx){
			CreateFormatException ();
}else if (this.displayName == null){
					this.displayName = _address.substring (idx + 1, closing - idx - 1).strip ();
				_address = _address.substring (closing + 1).strip ();
}

			}

			// 2. <email>
			idx = _address.index_of ("<");
			if (idx >= 0) {
				if (this.displayName == null)
					this.displayName = address.substring (0, idx).strip ();
				int end = _address.index_of (">", idx + 1);

				if (_address.length - 1 == idx){
			CreateFormatException ();
}else if(end == -1){
			CreateFormatException ();
}

				_address = _address.substring (idx + 1, end - idx - 1).strip ();


			}
			this.address = _address;
			// 3. email
			idx = address.index_of ("@");
			if (idx <= 0){
			CreateFormatException ();
}

			if (idx != address.last_index_of ("@")){
			CreateFormatException ();
}


			this.user = address.substring (0, idx).strip ();
			if (user.length == 0){
			CreateFormatException ();
}

			this.host = address.substring (idx + 1).strip ();
			if (host.length == 0){
				CreateFormatException ();
}

		}


		public string Address {
			get { return address; }
		}

		public string DisplayName {
			get {
				if (displayName == null)
					return "";
				return displayName;
			}
		}

		public string Host {
			get { return host; }
		}

		public string User {
			get { return user; }
		}


/*		
		public override bool Equals (Object obj)
		{
			if (obj == null)
				return false;

			return (0 == String.Compare (ToString (), obj.ToString (), StringComparison.OrdinalIgnoreCase));
		}
*/

		public  int GetHashCode ()
		{
		return (int)this.ToString ().hash ();
		}


		public string ToString ()
		{
			if (this.to_string != null)
				return this.to_string;

			if (this.displayName != null || this.displayName.length < 1){
			this.to_string = "\""+this.DisplayName+"\" <"+this.Address+">";
			}else{
				this.to_string = this.address;
}
			return this.to_string;
		}


/*
		private static FormatException CreateFormatException () {
			return new FormatException ("The specified string is not in the "
				+ "form required for an e-mail address.");
		}
*/

private static void CreateFormatException () {
    // error domain, error code, error message
    throw new Error.CreateFormatException ("The specified string is not in the "
				+ "form required for an e-mail address.");
}





	}
}

