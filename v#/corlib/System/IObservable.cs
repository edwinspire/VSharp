using GLib;

namespace System
{
	public interface IObservable<out T>:Object
	{
		IDisposable Subscribe (IObserver<T> observer);
	}
}


