using GLib;
#if NET_4_5

namespace System
{
	public interface IProgress<in T>:Object
	{
		public abstract void Report (T value);
	}
}

#endif
