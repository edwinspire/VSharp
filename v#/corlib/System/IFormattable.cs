//using System.Runtime.InteropServices;

namespace System {

	public interface IFormattable {
		public abstract string ToString (string format, IFormatProvider formatProvider);
	}
}
