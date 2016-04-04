
// These values are taken from 'man 5 terminfo' and /usr/include/term.h.
// They are the indexes for the boolean capabilities in a terminfo file.
namespace System {
	enum TermInfoBooleans {
		AutoLeftMargin,		// 0
		AutoRightMargin,
		NoEscCtlc,
		CeolStandoutGlitch,
		EatNewlineGlitch,
		EraseOverstrike,
		GenericType,
		HardCopy,
		HasMetaKey,
		HasStatusLine,
		InsertNullGlitch,
		MemoryAbove,
		MemoryBelow,
		MoveInsertMode,
		MoveStandoutMode,
		OverStrike,
		StatusLineEscOk,
		DestTabsMagicSmso,
		TildeGlitch,
		TransparentUnderline,
		XonXoff,
		NeedsXonXoff,
		PrtrSilent,
		HardCursor,
		NonRevRmcup,
		NoPadChar,
		NonDestScrollRegion,
		CanChange,
		BackColorErase,
		HueLightnessSaturation,
		ColAddrGlitch,
		CrCancelsMicroMode,
		HasPrintWheel,
		RowAddrGlitch,
		SemiAutoRightMargin,
		CpiChangesRes,
		LpiChangesRes,		// 36
		Last
	}
}

