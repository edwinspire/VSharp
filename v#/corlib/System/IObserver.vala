using GLib;

namespace System
{
	public interface IObserver<T>:Object
	{
		public abstract void OnCompleted ();
		// TODO public abstract  void OnError (Exception error);
		public abstract  void OnNext(T value);
	}
}


