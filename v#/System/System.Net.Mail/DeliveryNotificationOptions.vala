

using System;

namespace System.Net.Mail {

	[Flags]
	public enum DeliveryNotificationOptions
	{
		None,
		OnSuccess,
		OnFailure,
		Delay = 4,
		Never = 134217728,
	}
}

