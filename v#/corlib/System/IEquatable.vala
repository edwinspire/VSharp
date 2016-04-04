using GLib;

namespace System {
	public interface IEquatable <T>:Object {
		public abstract bool Equals (T other);
	}
}
