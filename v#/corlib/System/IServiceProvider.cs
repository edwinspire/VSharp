
//using System.Runtime.InteropServices;

namespace System
{
	public interface IServiceProvider
	{
		object GetService (Type serviceType);
	}
}
