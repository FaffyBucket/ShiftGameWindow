#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance




RegRead, AdvancedCheckbox, HKCU, Software\FaffyBucket\Windowed Game Control
	, AdvancedCheckbox
If (ErrorLevel == 1)
{
	AdvancedCheckbox = 0
}
RegRead, WGCX, HKCU, Software\FaffyBucket\Windowed Game Control, WGCX
RegRead, WGCY, HKCU, Software\FaffyBucket\Windowed Game Control, WGCY
MsgBox WGCX: %WGCX%
ExitApp