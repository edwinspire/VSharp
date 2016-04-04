using GLib;

namespace Accessibility {
	
	public interface IAccessible:Object {
		
		public abstract void   accDoDefaultAction (Object childID);
		public abstract Object accHitTest (int xLeft, int yTop);
		public abstract void   accLocation (out int pxLeft, out int pyTop, out int pcxWidth, out int pcyHeight, Object childID);
		public abstract Object accNavigate(int navDir, Object childID);
		public abstract void   accSelect(int flagsSelect, Object childID);
		public abstract Object get_accChild(Object childID);
		public abstract string get_accDefaultAction(Object childID);
		public abstract string get_accDescription(Object childID);
		public abstract string get_accHelp(Object childID);
		public abstract int    get_accHelpTopic(out string pszHelpFile,Object childID);
		public abstract string get_accKeyboardShortcut(Object childID);
		public abstract string get_accName(Object childID);
		public abstract Object get_accRole(Object childID);
		public abstract Object get_accState(Object childID);
		public abstract string get_accValue(Object childID);
		public abstract void   set_accName(Object childID, string newName);
		public abstract void   set_accValue(Object childID, string newValue);


		public abstract int    accChildCount { get; }
		public abstract Object accFocus { get; }
		public abstract Object accParent { get;}
		public abstract Object accSelection { get; } 
	}
}
