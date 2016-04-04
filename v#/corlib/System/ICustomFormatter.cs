
//using System.Runtime.InteropServices;

namespace System {

 	public interface ICustomFormatter {
		public abstract string Format (string format, Object arg, IFormatProvider formatProvider);
	}
}
