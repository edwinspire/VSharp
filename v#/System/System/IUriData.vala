
/*
using System.Collections;
using System.Globalization;
using System.Security.Permissions;
using System.Text;
*/
using GLib;

namespace System {
	public interface IUriData:GLib.Object {
		public abstract string AbsolutePath { get; }
		public abstract string AbsoluteUri { get; }
		public abstract string AbsoluteUri_SafeUnescaped { get; }
		public abstract string Authority { get; }
		public abstract string Fragment { get; }
		public abstract string Host { get; }
		public abstract string PathAndQuery { get; }
		public abstract string StrongPort { get; }
		public abstract string Query { get; }
		public abstract string UserInfo { get; }
	}
}
