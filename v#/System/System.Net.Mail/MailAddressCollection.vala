/*
using System;
using System.Collections.ObjectModel;
using System.Text;
*/
using Gee;

namespace System.Net.Mail {
	public class MailAddressCollection : HashSet<MailAddress>
	{
		

		public void Add (string addresses)
		{
			foreach (string address in addresses.split (",")){
				this.add (new MailAddress(address));
}

		}

		protected void InsertItem (int index, MailAddress item)
		{
			if (item == null){
			throw new Error.ArgumentNullException ("");
}

			this.InsertItem (index, item);
		}
		
		protected void SetItem (int index, MailAddress item)
		{
			if (item == null){
				throw new Error.ArgumentNullException ("");
}
			this.SetItem (index, item);
		}

		public string ToString ()
		{
			StringBuilder sb = new StringBuilder ();
 int i = this.size-1;
foreach (var maddress in this) {
				if (i > 0){
		
			sb.append (", ");
}
				sb.append (maddress.ToString ());
i--;    
}


/*
			for (int i = 0; i < this.size; i += 1) {
				if (i > 0){
					sb.append (", ");
}
				sb.append (this[i].ToString ());
			}
*/

			return sb.str;
		}

		
	}
}

