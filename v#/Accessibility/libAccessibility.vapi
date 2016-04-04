/* libAccessibility.vapi generated by valac 0.26.1, do not modify. */

namespace Accessibility {
	[CCode (cheader_filename = "libAccessibility.h")]
	public interface IAccessible : GLib.Object {
		public abstract void accDoDefaultAction (GLib.Object childID);
		public abstract GLib.Object accHitTest (int xLeft, int yTop);
		public abstract void accLocation (out int pxLeft, out int pyTop, out int pcxWidth, out int pcyHeight, GLib.Object childID);
		public abstract GLib.Object accNavigate (int navDir, GLib.Object childID);
		public abstract void accSelect (int flagsSelect, GLib.Object childID);
		public abstract GLib.Object get_accChild (GLib.Object childID);
		public abstract string get_accDefaultAction (GLib.Object childID);
		public abstract string get_accDescription (GLib.Object childID);
		public abstract string get_accHelp (GLib.Object childID);
		public abstract int get_accHelpTopic (out string pszHelpFile, GLib.Object childID);
		public abstract string get_accKeyboardShortcut (GLib.Object childID);
		public abstract string get_accName (GLib.Object childID);
		public abstract GLib.Object get_accRole (GLib.Object childID);
		public abstract GLib.Object get_accState (GLib.Object childID);
		public abstract string get_accValue (GLib.Object childID);
		public abstract void set_accName (GLib.Object childID, string newName);
		public abstract void set_accValue (GLib.Object childID, string newValue);
		public abstract int accChildCount { get; }
		public abstract GLib.Object accFocus { get; }
		public abstract GLib.Object accParent { get; }
		public abstract GLib.Object accSelection { get; }
	}
}
