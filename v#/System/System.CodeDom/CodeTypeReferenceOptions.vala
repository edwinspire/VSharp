
//using System.Runtime.InteropServices;

namespace System.CodeDom
{
	[Flags]
	[Serializable]
	public enum CodeTypeReferenceOptions
	{
		GlobalReference = 1,
		GenericTypeParameter = 1 << 1
	}
}

