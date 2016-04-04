//using System.Runtime.InteropServices;
//using System.Runtime.CompilerServices;
//using System.Runtime.ConstrainedExecution;

namespace System {

	[Serializable]
	public class Object:GLib.Object {

		// <summary>
		//   Compares this Object to the specified Object.
		//   Returns true if they are equal, false otherwise.
		// </summary>
		public virtual bool Equals (Object obj)
		{
			return this == obj;
		}

		// <summary>
		//   Compares two Objects for equality
		// </summary>
		public static bool EqualsObjects (Object objA, Object objB)
		{
			if (objA == objB)
				return true;
			
			if (objA == null || objB == null)
				return false;

			return objA.Equals (objB);
		}

		// <summary>
		//   Initializes a new instance of the Object class.
		// </summary>
//		[ReliabilityContractAttribute (Consistency.WillNotCorruptState, Cer.MayFail)]
		public Object ()
		{
		}


/*
		// <summary>
		//   Object destructor. 
		// </summary>
		[ReliabilityContractAttribute (Consistency.WillNotCorruptState, Cer.Success)]
		~Object ()
		{
		}
*/

		// <summary>
		//   Returns a hashcode for this Object.  Each derived
		//   class should return a hash code that makes sense
		//   for that particular implementation of the Object.
		// </summary>
		public virtual int GetHashCode () {
			return InternalGetHashCode (this);
		}

		// <summary>
		//   Returns the Type associated with the Object.
		// </summary>
//		[MethodImplAttribute(MethodImplOptions.InternalCall)]
	public Type GetType ();

		// <summary>
		//   Shallow copy of the Object.
		// </summary>
		//[MethodImplAttribute(MethodImplOptions.InternalCall)]
		protected extern Object MemberwiseClone ();

		// <summary>
		//   Returns a stringified representation of the Object.
		//   This is not supposed to be used for user presentation,
		//   use Format() for that and IFormattable.
		//
		//   ToString is mostly used for debugging purposes. 
		// </summary>
		public virtual string ToString ()
		{
			return GetType ().ToString ();
		}

		// <summary>
		//   Tests whether a is equal to b.
		//   Can not figure out why this even exists
		// </summary>
//		[ReliabilityContractAttribute (Consistency.WillNotCorruptState, Cer.Success)]
		public static bool ReferenceEquals (Object objA, Object objB)
		{
			return (objA == objB);
		}

//		[MethodImplAttribute(MethodImplOptions.InternalCall)]
		internal static extern int InternalGetHashCode (Object o);

//		[MethodImplAttribute(MethodImplOptions.InternalCall)]
// TODO		internal extern IntPtr obj_address ();
 
//#pragma warning disable 169
		void FieldGetter (string typeName, string fieldName, ref Object val)
		{
			/* never called */
		}

		void FieldSetter (string typeName, string fieldName, Object val)
		{
			/* never called */
		}
//#pragma warning restore 169
	}
}
