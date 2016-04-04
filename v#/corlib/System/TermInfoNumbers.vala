
// These values are taken from 'man 5 terminfo' and /usr/include/term.h.
// They are the indexes for the numeric capabilities in a terminfo file.
namespace System {
	enum TermInfoNumbers {
		Columns,		// 0
		InitTabs,
		Lines,
		LinesOfMemory,
		MagicCookieGlitch,
		PaddingBaudRate,
		VirtualTerminal,
		WidthStatusLine,
		NumLabels,
		LabelHeight,
		LabelWidth,
		MaxAttributes,
		MaximumWindows,
		MaxColors,
		MaxPairs,
		NoColorVideo,
		BufferCapacity,
		DotVertSpacing,
		DotHorzSpacing,
		MaxMicroAddress,
		MaxMicroJump,
		MicroColSize,
		MicroLineSize,
		NumberOfPins,
		OutputResChar,
		OutputResLine,
		OutputResHorzInch,
		OutputResVertInch,
		PrintRate,
		WideCharSize,
		Buttons,
		BitImageEntwining,
		BitImageType,		// 32
		Last
	}
}


