//using System;
//using System.Runtime.InteropServices;

namespace System {

	public interface IAppDomainSetup {

		public abstract string ApplicationBase { get; set; }

		public abstract string ApplicationName { get; set; }

		public abstract string CachePath { get; set; }

		public abstract string ConfigurationFile { get; set; }

		public abstract string DynamicBase { get; set; }

		public abstract string LicenseFile { get; set; }

		public abstract string PrivateBinPath { get; set; }

		public abstract string PrivateBinPathProbe { get; set; }

		public abstract string ShadowCopyDirectories { get; set; }

		public abstract string ShadowCopyFiles { get; set; }
	}
}
