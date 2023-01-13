; This disassembly was created using Emulicious (https://www.emulicious.net)
.MEMORYMAP
SLOTSIZE $7FF0
SLOT 0 $0000
SLOTSIZE $10
SLOT 1 $7FF0
SLOTSIZE $4000
SLOT 2 $8000
DEFAULTSLOT 2
.ENDME
.ROMBANKMAP
BANKSTOTAL 7
BANKSIZE $7FF0
BANKS 1
BANKSIZE $10
BANKS 1
BANKSIZE $4000
BANKS 5
.ENDRO

.enum $C000 export
_RAM_C000_ dw
.ende

.enum $C003 export
_RAM_C003_ dw
.ende

.enum $C008 export
_RAM_C008_ db
.ende

.enum $C00E export
_RAM_C00E_ db
_RAM_C00F_ db
_RAM_C010_ dw
_RAM_C012_ dw
_RAM_C014_ db
_RAM_C015_ db
.ende

.enum $C0FC export
_RAM_C0FC_ dw
_RAM_C0FE_ dw
_RAM_C100_ dw
_RAM_C102_ dw
_RAM_C104_ dw
_RAM_C106_ dw
_RAM_C108_ db
.ende

.enum $C10A export
_RAM_C10A_ db
.ende

.enum $C10C export
_RAM_C10C_ db
.ende

.enum $C110 export
_RAM_C110_ db
.ende

.enum $C13C export
_RAM_C13C_ db
.ende

.enum $C63F export
_RAM_C63F_ db
.ende

.enum $C6C0 export
_RAM_C6C0_ db
.ende

.enum $C9C0 export
_RAM_C9C0_ db
.ende

.enum $CB3F export
_RAM_CB3F_ db
.ende

.enum $CBC0 export
_RAM_CBC0_ db
.ende

.enum $D37D export
_RAM_D37D_ db
.ende

.enum $D73B export
_RAM_D73B_ db
_RAM_D73C_ db
_RAM_D73D_ db
_RAM_D73E_ db
.ende

.enum $D741 export
_RAM_D741_ db
.ende

.enum $D747 export
_RAM_D747_ dsb $13
.ende

.enum $D771 export
_RAM_D771_ db
.ende

.enum $D777 export
_RAM_D777_ dsb $13
.ende

.enum $D7A1 export
_RAM_D7A1_ db
.ende

.enum $D7A7 export
_RAM_D7A7_ dsb $13
.ende

.enum $D7D1 export
_RAM_D7D1_ db
.ende

.enum $D7D7 export
_RAM_D7D7_ dsb $13
.ende

.enum $D801 export
_RAM_D801_ dw
_RAM_D803_ dw
.ende

.enum $D831 export
_RAM_D831_ db
.ende

.enum $DE3C export
_RAM_DE3C_ db
.ende

.enum $DF18 export
_RAM_DF18_ db
.ende

.enum $DFDF export
_RAM_DFDF_ db
.ende

.enum $DFFF export
_RAM_DFFF_ db
.ende

.enum $FFF8 export
_RAM_FFF8_ db
.ende

.enum $FFFD export
_RAM_FFFD_ db
_RAM_FFFE_ db
_RAM_FFFF_ db
.ende

; Ports
.define _PORT_61_ $61
.define _PORT_62_ $62
.define _PORT_63_ $63
.define _PORT_7E_ $7E
.define Port_PSG $7F
.define _PORT_88_ $88
.define _PORT_8C_ $8C
.define _PORT_8D_ $8D
.define _PORT_8E_ $8E
.define _PORT_8F_ $8F
.define _PORT_A0_ $A0
.define Port_VDPData $BE
.define Port_VDPAddress $BF
.define _PORT_C8_ $C8
.define _PORT_CA_ $CA
.define _PORT_CB_ $CB
.define _PORT_CD_ $CD
.define _PORT_CE_ $CE
.define _PORT_DC_ $DC

; Input Ports
.define Port_VDPStatus $BF
.define Port_IOPort1 $DC
.define Port_IOPort2 $DD

.BANK 0 SLOT 0
.ORG $0000

_LABEL_0_:
	di
	jp _LABEL_D6_

; Data from 4 to 37 (52 bytes)
.db $FF $FF $FF $FF $C3 $47 $01 $FF $FF $FF $FF $FF $ED $4D $FF $FF
.db $FF $FF $FF $FF $ED $4D $FF $FF $FF $FF $FF $FF $ED $4D $FF $FF
.db $FF $FF $FF $FF $ED $4D $FF $FF $FF $FF $FF $FF $C3 $AD $00 $FF
.db $FF $FF $FF $FF

_LABEL_38_:
	jp _LABEL_10DA_

; Data from 3B to 65 (43 bytes)
.dsb 43, $FF

_LABEL_66_:
	retn

; Data from 68 to 6F (8 bytes)
.db $C3 $03 $C0 $FF $FF $FF $FF $FF

; Data from 70 to 81 (18 bytes)
_DATA_70_:
.db $16 $80 $A0 $81 $0E $82 $7E $85 $00 $86 $03 $87 $00 $88 $00 $89
.db $C0 $8A

; Data from 82 to D5 (84 bytes)
_DATA_82_:
.dsb 32, $00
.db $22 $09 $C0 $E1 $22 $FE $FF $2A $09 $C0 $C9 $22 $09 $C0 $ED $53
.db $0B $C0 $32 $0D $C0 $E1 $5E $23 $56 $23 $7E $23 $E5 $2A $FE $FF
.db $E5 $21 $A2 $00 $E5 $D5 $32 $FF $FF $3A $0D $C0 $ED $5B $0B $C0
.db $2A $09 $C0 $C9

_LABEL_D6_:
	di
	im 1
	ld hl, $4DED
	ld (_RAM_C000_), hl
	ld (_RAM_C003_), hl
	ld sp, $DFF0
	ld a, $00
	ld (_RAM_FFFD_), a
	inc a
	ld (_RAM_FFFE_), a
	inc a
	ld (_RAM_FFFF_), a
	ld a, $9F
	out (_PORT_7E_), a
	ld a, $BF
	out (_PORT_7E_), a
	ld a, $DF
	out (_PORT_7E_), a
	ld a, $FF
	out (_PORT_7E_), a
	ld a, $00
	out (Port_VDPAddress), a
	ld a, $C0
	out (Port_VDPAddress), a
	ld hl, _DATA_82_
	ld b, $20
	ld c, Port_VDPData
	otir
	ld hl, _DATA_70_
	ld b, $12
	ld c, Port_VDPAddress
	otir
	ld a, $00
	out (Port_VDPAddress), a
	ld a, $40
	out (Port_VDPAddress), a
	ld bc, $4000
	ld a, $00
-:
	out (Port_VDPData), a
	dec c
	jr nz, -
	dec b
	jr nz, -
	ld a, $00
	out (Port_VDPAddress), a
	ld a, $7F
	out (Port_VDPAddress), a
	ld b, $40
	ld a, $D0
-:
	out (Port_VDPData), a
	djnz -
	call _LABEL_1000_
-:
	halt
	jr -

; Data from 147 to 152 (12 bytes)
.db $FE $01 $C0 $7D $FE $0A $28 $2B $3A $06 $C0 $CB

; 20th entry of Pointer Table from 147C6 (indexed by _RAM_D73B_)
; Pointer Table from 153 to 166 (10 entries, indexed by unknown)
_DATA_153_:
.dw _DATA_6727_ _DATA_73A_ _RAM_E6C0_ _DATA_F03_ _DATA_1740F_ _DATA_17FD3_ _DATA_73A_ _RAM_CBC0_
.dw _RAM_CB3F_ _RAM_C63F_

; Data from 167 to 167 (1 bytes)
.db $78

; 19th entry of Pointer Table from 147C6 (indexed by _RAM_D73B_)
; Pointer Table from 168 to 17B (10 entries, indexed by unknown)
_DATA_168_:
.dw _DATA_17FD3_ _RAM_D37D_ _DATA_3ABE_ _RAM_C008_ _DATA_17ED3_ _DATA_63A_ _DATA_3CC0_ _DATA_20FE_
.dw _DATA_D38_ _DATA_73A_

; Data from 17C to 17C (1 bytes)
.db $C0

; 18th entry of Pointer Table from 147C6 (indexed by _RAM_D73B_)
; Pointer Table from 17D to 18A (7 entries, indexed by unknown)
_DATA_17D_:
.dw _RAM_FE3C_ _DATA_3818_ _DATA_16F01_ _DATA_732_ _DATA_16FC0_ _DATA_632_ _RAM_C9C0_

; Data from 18B to 193 (9 bytes)
.dsb 9, $FF

; 17th entry of Pointer Table from 147C6 (indexed by _RAM_D73B_)
; Data from 194 to 1AB (24 bytes)
_DATA_194_:
.dsb 24, $FF

; 16th entry of Pointer Table from 147C6 (indexed by _RAM_D73B_)
; Data from 1AC to 1C4 (25 bytes)
_DATA_1AC_:
.dsb 25, $FF

; 15th entry of Pointer Table from 147C6 (indexed by _RAM_D73B_)
; Data from 1C5 to 1DF (27 bytes)
_DATA_1C5_:
.dsb 27, $FF

; 14th entry of Pointer Table from 147C6 (indexed by _RAM_D73B_)
; Data from 1E0 to 1FC (29 bytes)
_DATA_1E0_:
.dsb 29, $FF

; 13th entry of Pointer Table from 147C6 (indexed by _RAM_D73B_)
; Data from 1FD to 21A (30 bytes)
_DATA_1FD_:
.dsb 30, $FF

; 12th entry of Pointer Table from 147C6 (indexed by _RAM_D73B_)
; Data from 21B to 23A (32 bytes)
_DATA_21B_:
.dsb 32, $FF

; 11th entry of Pointer Table from 147C6 (indexed by _RAM_D73B_)
; Data from 23B to 25C (34 bytes)
_DATA_23B_:
.dsb 34, $FF

; 10th entry of Pointer Table from 147C6 (indexed by _RAM_D73B_)
; Data from 25D to 280 (36 bytes)
_DATA_25D_:
.dsb 36, $FF

; 9th entry of Pointer Table from 147C6 (indexed by _RAM_D73B_)
; Data from 281 to 2A6 (38 bytes)
_DATA_281_:
.dsb 38, $FF

; 8th entry of Pointer Table from 147C6 (indexed by _RAM_D73B_)
; Data from 2A7 to 2CE (40 bytes)
_DATA_2A7_:
.dsb 40, $FF

; 7th entry of Pointer Table from 147C6 (indexed by _RAM_D73B_)
; Data from 2CF to 2F9 (43 bytes)
_DATA_2CF_:
.dsb 43, $FF

; 6th entry of Pointer Table from 147C6 (indexed by _RAM_D73B_)
; Data from 2FA to 326 (45 bytes)
_DATA_2FA_:
.dsb 45, $FF

; 5th entry of Pointer Table from 147C6 (indexed by _RAM_D73B_)
; Data from 327 to 356 (48 bytes)
_DATA_327_:
.dsb 48, $FF

; 4th entry of Pointer Table from 147C6 (indexed by _RAM_D73B_)
; Data from 357 to 389 (51 bytes)
_DATA_357_:
.dsb 51, $FF

; 3rd entry of Pointer Table from 147C6 (indexed by _RAM_D73B_)
; Data from 38A to 3BF (54 bytes)
_DATA_38A_:
.dsb 54, $FF

; 2nd entry of Pointer Table from 147C6 (indexed by _RAM_D73B_)
; Data from 3C0 to 3F8 (57 bytes)
_DATA_3C0_:
.dsb 57, $FF

; 1st entry of Pointer Table from 147C6 (indexed by _RAM_D73B_)
; Data from 3F9 to 631 (569 bytes)
_DATA_3F9_:
.dsb 263, $FF
.db $F3 $CD $5A $05 $32 $FE $3F $C3 $75 $00 $CD $5A $05 $32 $FE $3F
.db $C3 $17 $0D $CD $5A $05 $32 $FE $3F $C3 $F8 $01 $CD $5A $05 $32
.db $FE $3F $C3 $E9 $7F $F3 $CD $5A $05 $32 $FE $3F $C3 $E9 $7F $CD
.db $5A $05 $32 $FE $3F $C3 $0B $01 $C5 $D5 $E5 $D9 $08 $F5 $C5 $D5
.db $CD $5A $05 $32 $FE $3F $C3 $C9 $00 $C5 $D5 $E5 $08 $D9 $F5 $C5
.db $D5 $CD $5A $05 $32 $FE $3F $C3 $43 $02 $DB $CD $B7 $28 $1D $E5
.db $DB $DC $FE $FF $20 $12 $DB $DD $F6 $F0 $FE $FF $20 $0A $21 $F8
.db $FF $34 $20 $07 $23 $34 $20 $03 $C3 $00 $00 $E1 $3E $87 $C9
.dsb 179, $FF

; 6th entry of Pointer Table from 17D (indexed by unknown)
; Data from 632 to 639 (8 bytes)
_DATA_632_:
.db $FF $FF $FF $FF $FF $FF $FF $FF

; 6th entry of Pointer Table from 168 (indexed by unknown)
; Data from 63A to 731 (248 bytes)
_DATA_63A_:
.dsb 248, $FF

; 4th entry of Pointer Table from 17D (indexed by unknown)
; Data from 732 to 739 (8 bytes)
_DATA_732_:
.db $FF $FF $FF $FF $FF $FF $FF $FF

; 2nd entry of Pointer Table from 153 (indexed by unknown)
; Data from 73A to D37 (1534 bytes)
_DATA_73A_:
.dsb 1534, $FF

; 9th entry of Pointer Table from 168 (indexed by unknown)
; Data from D38 to F02 (459 bytes)
_DATA_D38_:
.dsb 459, $FF

; 4th entry of Pointer Table from 153 (indexed by unknown)
; Data from F03 to FFF (253 bytes)
_DATA_F03_:
.dsb 253, $FF

_LABEL_1000_:
	ld bc, _RAM_C000_
	ld de, $0000
-:
	ld a, e
	sub $00
	ld a, d
	sbc a, $20
	jp p, +
	ld a, $00
	ld (bc), a
	inc bc
	inc de
	jp -

+:
	call _LABEL_3574_
	ld a, $90
	out (Port_VDPAddress), a
	ld a, $81
	out (Port_VDPAddress), a
	ld c, $00
-:
	ld a, c
	sub $20
	jp nc, +
	ld e, c
	ld d, $00
	sla e
	rl d
	ld hl, $C0BC
	add hl, de
	ld e, l
	ld d, h
	ld (hl), $00
	inc hl
	ld (hl), $00
	inc c
	jp -

+:
	ld a, $40
	push af
	inc sp
	ld hl, $C0BC
	push hl
	ld a, $00
	push af
	inc sp
	call _LABEL_15CA_
	pop af
	pop af
	ld a, $E0
	out (Port_VDPAddress), a
	ld a, $81
	out (Port_VDPAddress), a
	ld a, $00
	out (_PORT_C8_), a
	ld iy, _RAM_C014_
	ld (iy+0), $00
	ld iy, _RAM_C015_
	ld (iy+0), $00
	ld iy, _RAM_C00E_
	ld (iy+0), $00
	ld iy, _RAM_C00F_
	ld (iy+0), $00
	ld a, $05
	out (_PORT_88_), a
	in a, (_PORT_8C_)
	or $40
	out (_PORT_8C_), a
	in a, (Port_IOPort2)
	and $10
	ld c, a
	or a
	jp z, +
	jp ++

+:
	ld a, $00
	push af
	inc sp
	call _LABEL_1340_
	inc sp
++:
	in a, (Port_IOPort1)
	and $30
	ld c, a
	or a
	jp z, +
	jp ++

+:
	ld a, $00
	push af
	inc sp
	call _LABEL_1340_
	inc sp
++:
	call _LABEL_12DF_
	di
	ld a, $02
	call _LABEL_3589_
	ei
	call _LABEL_1B4D_
	ret

_LABEL_10BD_:
	push ix
	ld ix, $0000
	add ix, sp
	di
	ld a, (ix+4)
	ld iy, _RAM_C010_
	ld (iy+0), a
	ld a, (ix+5)
	ld (iy+1), a
	ei
	pop ix
	ret

_LABEL_10DA_:
	di
	push af
	in a, (Port_VDPStatus)
	push bc
	push de
	push hl
	push ix
	push iy
	ld iy, _RAM_C010_
	ld a, (iy+0)
	or (iy+1)
	jp z, +
	ld hl, (_RAM_C010_)
	dec hl
	ld (_RAM_C010_), hl
+:
	ld iy, _RAM_C012_
	ld a, (iy+0)
	or (iy+1)
	jp z, +
	ld hl, (_RAM_C012_)
	dec hl
	ld (_RAM_C012_), hl
+:
	ld iy, _RAM_C00E_
	ld a, (iy+0)
	or a
	jp z, +
	jp _LABEL_1175_

+:
	ld iy, _RAM_C00E_
	ld (iy+0), $01
	xor a
	ld iy, _RAM_C00F_
	or (iy+0)
	jp z, _LABEL_116D_
	ld a, (iy+0)
	and $10
	jp z, +
	in a, (Port_IOPort1)
	cpl
	ld c, a
	and $3F
	ld iy, _RAM_C014_
	ld (iy+0), a
	in a, (Port_IOPort1)
	ld c, a
	srl c
	srl c
	srl c
	srl c
	srl c
	srl c
	in a, (Port_IOPort2)
	add a, a
	add a, a
	ld b, a
	ld a, c
	or b
	ld c, a
	cpl
	ld c, a
	and $3F
	ld iy, _RAM_C015_
	ld (iy+0), a
+:
	ld iy, _RAM_C00F_
	ld (iy+0), $00
_LABEL_116D_:
	ld iy, _RAM_C00E_
	ld (iy+0), $00
_LABEL_1175_:
	ld a, $02
	call _LABEL_3594_
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ei
	ret

; Data from 1184 to 1184 (1 bytes)
.db $C9

_LABEL_1185_:
	push ix
	ld ix, $0000
	add ix, sp
	ld iy, _RAM_C00F_
	ld a, (iy+0)
	or (ix+4)
	ld (iy+0), a
	ld a, (iy+0)
	and $80
	jp z, _LABEL_11A5_
	jp +

_LABEL_11A5_:
	ld iy, _RAM_C00F_
	ld a, (iy+0)
	or a
	jp z, +
	jp _LABEL_11A5_

+:
	pop ix
	ret

; Data from 11B6 to 12DE (297 bytes)
.db $DD $E5 $DD $21 $00 $00 $DD $39 $FD $21 $0F $C0 $FD $7E $00 $DD
.db $B6 $04 $FD $77 $00 $DD $E1 $C9 $3E $12 $D3 $DF $FD $21 $F9 $3F
.db $FD $36 $00 $80 $FD $21 $17 $C0 $FD $7E $00 $D3 $DE $01 $FF $FF
.db $FD $21 $16 $C0 $FD $7E $00 $02 $21 $00 $80 $4E $3E $00 $D3 $DE
.db $FD $21 $F9 $3F $FD $36 $00 $00 $FD $21 $FF $FF $FD $36 $00 $02
.db $69 $C9 $DD $E5 $DD $21 $00 $00 $DD $39 $21 $FA $FF $39 $F9 $F3
.db $21 $FA $7F $7E $DD $77 $FA $23 $7E $DD $77 $FB $DD $36 $FC $00
.db $DD $36 $FD $00 $01 $CE $11 $DD $71 $FE $DD $70 $FF $11 $18 $C0
.db $0E $00 $79 $D6 $64 $D2 $54 $12 $DD $6E $FE $DD $66 $FF $7E $DD
.db $34 $FE $C2 $4E $12 $DD $34 $FF $12 $13 $0C $C3 $38 $12 $0E $00
.db $3E $07 $91 $DA $C0 $12 $FD $21 $17 $C0 $FD $71 $00 $FD $7E $00
.db $87 $87 $FD $77 $00 $FD $7E $00 $E6 $10 $CA $87 $12 $FD $21 $17
.db $C0 $FD $7E $00 $E6 $EF $FD $77 $00 $FD $7E $00 $F6 $20 $FD $77
.db $00 $FD $21 $16 $C0 $FD $36 $00 $00 $FD $21 $16 $C0 $FD $7E $00
.db $D6 $80 $D2 $BC $12 $C5 $CD $18 $C0 $7D $C1 $47 $1E $00 $DD $7E
.db $FC $80 $DD $77 $FC $DD $7E $FD $8B $DD $77 $FD $FD $21 $16 $C0
.db $FD $34 $00 $C3 $8F $12 $0C $C3 $56 $12 $DD $7E $FA $DD $BE $FC
.db $C2 $D2 $12 $DD $7E $FB $DD $BE $FD $CA $D9 $12 $3E $06 $D3 $89
.db $C3 $D6 $12 $FB $DD $F9 $DD $E1 $C9

_LABEL_12DF_:
	ld bc, (_DATA_4656_)
	push bc
	ld hl, $4036
	push hl
	ld hl, $0000
	push hl
	call _LABEL_1907_
	pop af
	pop af
	pop af
	ld hl, $1000
	push hl
	ld hl, $0017
	push hl
	ld hl, $001F
	push hl
	ld hl, $3A36
	push hl
	ld hl, $0000
	push hl
	call _LABEL_1A94_
	ld iy, $000A
	add iy, sp
	ld sp, iy
	ld a, $20
	push af
	inc sp
	ld hl, $39B6
	push hl
	ld a, $00
	push af
	inc sp
	call _LABEL_161F_
	pop af
	pop af
	ld hl, $0030
	push hl
	call _LABEL_10BD_
	pop af
-:
	ld iy, _RAM_C010_
	ld a, (iy+0)
	or (iy+1)
	jp nz, -
	ld hl, $4000
	push hl
	call _LABEL_17DC_
	pop af
	ret

_LABEL_1340_:
	push ix
	ld ix, $0000
	add ix, sp
	ld hl, $FFF5
	add hl, sp
	ld sp, hl
	ld a, $90
	out (Port_VDPAddress), a
	ld a, $81
	out (Port_VDPAddress), a
	call _LABEL_3574_
	di
	ld c, (ix+4)
	ld b, $00
	sla c
	rl b
	sla c
	rl b
	sla c
	rl b
	sla c
	rl b
	ld hl, $1FD6
	add hl, bc
	ld (ix-11), l
	ld (ix-10), h
	ld e, (ix-11)
	ld d, (ix-10)
	inc de
	inc de
	ld a, (de)
	ld e, a
	and $0F
	out (_PORT_A0_), a
	ld a, $F0
	sub e
	jp nc, +
	ld a, $05
	out (_PORT_C8_), a
	ld a, $00
	out (_PORT_DC_), a
	ld a, $01
	out (_PORT_CE_), a
+:
	xor a
	ld (ix-6), a
	ld (ix-5), a
	ld (ix-4), a
	ld (ix-3), a
	ld a, (ix-11)
	add a, $0A
	ld e, a
	ld a, (ix-10)
	adc a, $00
	ld d, a
	ld a, (de)
	ld (ix-9), a
	ld a, (ix-9)
	or a
	jp z, +
	jp ++

+:
	ld (ix-6), $60
	xor a
	ld (ix-5), a
	ld (ix-4), a
	ld (ix-3), a
++:
	ld a, $00
	sub (ix+4)
	jp nc, _LABEL_1441_
	ld (ix-8), $00
_LABEL_13D9_:
	ld a, (ix-8)
	sub (ix+4)
	jp nc, _LABEL_1441_
	ld d, (ix-8)
	ld e, $00
	ld c, d
	ld b, e
	sla c
	rl b
	sla c
	rl b
	sla c
	rl b
	sla c
	rl b
	ld hl, $1FD6
	add hl, bc
	ld e, l
	ld d, h
	ld a, e
	add a, $0A
	ld e, a
	ld a, d
	adc a, $00
	ld d, a
	ld a, (de)
	ld e, a
	ld a, (ix-9)
	cp e
	jp z, +
	jp ++

+:
	ld hl, _DATA_1FD6_
	add hl, bc
	ld e, l
	ld d, h
	ld e, (hl)
	inc hl
	ld d, (hl)
	ld bc, $0000
	ld a, (ix-6)
	add a, e
	ld (ix-6), a
	ld a, (ix-5)
	adc a, d
	ld (ix-5), a
	ld a, (ix-4)
	adc a, c
	ld (ix-4), a
	ld a, (ix-3)
	adc a, b
	ld (ix-3), a
++:
	inc (ix-8)
	jp _LABEL_13D9_

_LABEL_1441_:
	ld c, (ix-6)
	ld a, c
	add a, a
	add a, a
	ld (ix-7), a
	ld a, $06
	push af
	inc sp
	ld l, (ix-4)
	ld h, (ix-3)
	push hl
	ld l, (ix-6)
	ld h, (ix-5)
	push hl
	call _LABEL_60A5_
	ld c, d
	ld d, e
	ld e, h
	ld b, l
	pop af
	pop af
	inc sp
	ld de, $0000
	ld c, $00
	ld a, (ix-7)
	out (_PORT_61_), a
	in a, (_PORT_62_)
	and $E0
	ld c, a
	ld a, b
	or c
	ld b, a
	ld a, (ix-11)
	add a, $03
	ld e, a
	ld a, (ix-10)
	adc a, $00
	ld d, a
	ld a, (de)
	ld c, a
	ld a, b
	or c
	out (_PORT_62_), a
	in a, (_PORT_8C_)
	and $BF
	ld c, a
	ld a, (ix-11)
	add a, $04
	ld e, a
	ld a, (ix-10)
	adc a, $00
	ld d, a
	ld a, (de)
	ld b, a
	ld a, c
	or b
	out (_PORT_8C_), a
	in a, (_PORT_61_)
	out (_PORT_CA_), a
	in a, (_PORT_62_)
	out (_PORT_CB_), a
	ld a, (ix-11)
	add a, $05
	ld c, a
	ld a, (ix-10)
	adc a, $00
	ld b, a
	ld a, (bc)
	ld c, a
	or a
	jp z, +
	ld iy, $3FFA
	ld (iy+0), c
+:
	ld a, (ix-11)
	add a, $06
	ld c, a
	ld a, (ix-10)
	adc a, $00
	ld b, a
	ld a, (bc)
	ld c, a
	or a
	jp z, +
	ld iy, $3FFB
	ld (iy+0), c
+:
	ld a, (ix-11)
	add a, $07
	ld c, a
	ld a, (ix-10)
	adc a, $00
	ld b, a
	ld a, (bc)
	ld c, a
	or a
	jp z, +
	ld iy, $3FFC
	ld (iy+0), c
+:
	ld a, (ix-11)
	add a, $08
	ld c, a
	ld a, (ix-10)
	adc a, $00
	ld b, a
	ld a, (bc)
	ld c, a
	ld e, c
	ld d, $00
	ld a, e
	add a, $01
	ld e, a
	ld a, d
	adc a, $FF
	ld d, a
	ld a, e
	or d
	jp z, +
	ld iy, $3FFD
	ld (iy+0), c
+:
	ld a, (ix-11)
	add a, $0B
	ld c, a
	ld a, (ix-10)
	adc a, $00
	ld b, a
	ld a, (bc)
	ld c, a
	and $80
	jp z, _LABEL_1571_
	in a, (_PORT_88_)
	or $80
	out (_PORT_88_), a
	ld a, (ix-11)
	add a, $0C
	ld e, a
	ld a, (ix-10)
	adc a, $00
	ld d, a
	ld a, (de)
	out (_PORT_8D_), a
	ld a, (ix-11)
	add a, $0D
	ld e, a
	ld a, (ix-10)
	adc a, $00
	ld d, a
	ld a, (de)
	out (_PORT_8E_), a
	ld a, (ix-11)
	add a, $0E
	ld e, a
	ld a, (ix-10)
	adc a, $00
	ld d, a
	ld a, (de)
	out (_PORT_8F_), a
	ld a, (ix-11)
	add a, $0F
	ld e, a
	ld a, (ix-10)
	adc a, $00
	ld d, a
	ld a, (de)
	out (_PORT_63_), a
	jp +

_LABEL_1571_:
	in a, (_PORT_88_)
	and c
	out (_PORT_88_), a
+:
	ld bc, $353C
	ld (ix-2), c
	ld (ix-1), b
	ld de, _RAM_C010_
	ld bc, $0000
-:
	ld a, c
	sub $32
	ld a, b
	sbc a, $00
	jp p, ++
	ld l, (ix-2)
	ld h, (ix-1)
	ld a, (hl)
	inc (ix-2)
	jp nz, +
	inc (ix-1)
+:
	ld (de), a
	inc de
	inc bc
	jp -

++:
	ld iy, _RAM_C00F_
	ld a, (ix-9)
	ld (iy+0), a
	ld iy, _RAM_C00E_
	ld a, (ix-11)
	add a, $09
	ld c, a
	ld a, (ix-10)
	adc a, $00
	ld b, a
	ld a, (bc)
	ld (iy+0), a
	call _RAM_C010_	; Possibly invalid
	ld sp, ix
	pop ix
	ret

_LABEL_15CA_:
	push ix
	ld ix, $0000
	add ix, sp
	ld hl, $FFFE
	add hl, sp
	ld sp, hl
	ld a, $7C
	add a, (ix+4)
	ld c, a
	ld a, $C0
	adc a, $00
	ld b, a
	ld a, (ix+4)
	out (Port_VDPAddress), a
	ld a, $C0
	out (Port_VDPAddress), a
	ld a, (ix+5)
	ld (ix-2), a
	ld a, (ix+6)
	ld (ix-1), a
	ld d, (ix+7)
-:
	ld e, d
	dec d
	xor a
	or e
	jp z, ++
	ld l, (ix-2)
	ld h, (ix-1)
	ld e, (hl)
	ld a, e
	ld (bc), a
	inc bc
	ld a, e
	out (Port_VDPData), a
	inc (ix-2)
	jp nz, +
	inc (ix-1)
+:
	jp -

++:
	ld sp, ix
	pop ix
	ret

_LABEL_161F_:
	push ix
	ld ix, $0000
	add ix, sp
	ld hl, $FFF4
	add hl, sp
	ld sp, hl
	ld a, (ix+7)
	ld (ix-5), a
	ld a, $7C
	add a, (ix+4)
	ld c, a
	ld a, $C0
	adc a, $00
	ld b, a
	ld e, c
	ld d, b
	ld (ix-2), e
	ld (ix-1), d
	ld a, (ix-2)
	ld (ix-8), a
	ld a, (ix-1)
	ld (ix-7), a
	ld d, (ix-5)
-:
	ld e, d
	dec d
	xor a
	or e
	jp z, ++
	ld l, (ix-8)
	ld h, (ix-7)
	ld (hl), $00
	inc (ix-8)
	jp nz, +
	inc (ix-7)
+:
	jp -

++:
	ld (ix-6), $00
	ld (ix-12), c
	ld (ix-11), b
	ld (ix-10), c
	ld (ix-9), b
_LABEL_167F_:
	ld hl, $0008
	push hl
	call _LABEL_10BD_
	pop af
-:
	ld iy, _RAM_C010_
	ld a, (iy+0)
	or (iy+1)
	jp nz, -
	ld a, (ix+7)
	ld (ix-5), a
	ld a, (ix-12)
	ld (ix-2), a
	ld a, (ix-11)
	ld (ix-1), a
	ld a, (ix+4)
	out (Port_VDPAddress), a
	ld a, $C0
	out (Port_VDPAddress), a
	ld b, (ix-2)
	ld d, (ix-1)
	ld c, (ix-5)
-:
	ld e, c
	dec c
	xor a
	or e
	jp z, ++
	ld l, b
	ld h, d
	ld a, (hl)
	out (Port_VDPData), a
	inc b
	jp nz, +
	inc d
+:
	jp -

++:
	xor a
	or (ix-6)
	jp nz, _LABEL_17D7_
	ld (ix-6), $FF
	ld a, (ix+7)
	ld (ix-5), a
	ld a, (ix-10)
	ld (ix-2), a
	ld a, (ix-9)
	ld (ix-1), a
	ld a, (ix+5)
	ld (ix-4), a
	ld a, (ix+6)
	ld (ix-3), a
_LABEL_16F5_:
	ld l, (ix-4)
	ld h, (ix-3)
	ld e, (hl)
	ld a, e
	and $0E
	ld e, a
	ld l, (ix-2)
	ld h, (ix-1)
	ld d, (hl)
	ld a, d
	and $0E
	ld c, a
	ld a, e
	cp c
	jp z, +
	ld c, d
	inc c
	inc c
	ld a, c
	and $0E
	ld c, a
	ld a, d
	and $F0
	ld d, a
	ld l, (ix-2)
	ld h, (ix-1)
	ld (hl), d
	ld a, (hl)
	or c
	ld l, (ix-2)
	ld h, (ix-1)
	ld (hl), a
	ld (ix-6), $00
+:
	ld l, (ix-4)
	ld h, (ix-3)
	ld b, (hl)
	ld a, b
	and $E0
	ld b, a
	ld l, (ix-2)
	ld h, (ix-1)
	ld e, (hl)
	ld a, e
	and $E0
	ld e, a
	ld a, b
	cp e
	jp z, +
	ld l, (ix-2)
	ld h, (ix-1)
	ld b, (hl)
	ld a, b
	add a, $20
	ld e, a
	and $E0
	ld c, a
	ld a, b
	and $0F
	ld b, a
	ld l, (ix-2)
	ld h, (ix-1)
	ld (hl), b
	ld a, (hl)
	or c
	ld l, (ix-2)
	ld h, (ix-1)
	ld (hl), a
	ld (ix-6), $00
+:
	inc (ix-2)
	jp nz, +
	inc (ix-1)
+:
	inc (ix-4)
	jp nz, +
	inc (ix-3)
+:
	ld c, (ix-5)
	dec (ix-5)
	xor a
	or c
	jp z, _LABEL_167F_
	ld l, (ix-4)
	ld h, (ix-3)
	ld c, (hl)
	ld l, (ix-2)
	ld h, (ix-1)
	ld b, (hl)
	ld a, c
	cp b
	jp z, +
	ld l, (ix-2)
	ld h, (ix-1)
	ld c, (hl)
	inc c
	inc c
	ld a, c
	and $0E
	ld l, (ix-2)
	ld h, (ix-1)
	ld (hl), a
	ld (ix-6), $00
+:
	inc (ix-2)
	jp nz, +
	inc (ix-1)
+:
	inc (ix-4)
	jp nz, +
	inc (ix-3)
+:
	ld c, (ix-5)
	dec (ix-5)
	xor a
	or c
	jp nz, _LABEL_16F5_
	jp _LABEL_167F_

_LABEL_17D7_:
	ld sp, ix
	pop ix
	ret

_LABEL_17DC_:
	push ix
	ld ix, $0000
	add ix, sp
	ld hl, $FFF9
	add hl, sp
	ld sp, hl
	ld a, $7C
	add a, (ix+4)
	ld c, a
	ld a, $C0
	adc a, $00
	ld b, a
	ld (ix-7), c
	ld (ix-6), b
	ld (ix-5), c
	ld (ix-4), b
_LABEL_1800_:
	ld hl, $0008
	push hl
	call _LABEL_10BD_
	pop af
-:
	ld iy, _RAM_C010_
	ld a, (iy+0)
	or (iy+1)
	jp nz, -
	ld (ix-3), $FF
	ld d, (ix+5)
	ld a, (ix-7)
	ld (ix-2), a
	ld a, (ix-6)
	ld (ix-1), a
_LABEL_1828_:
	ld l, (ix-2)
	ld h, (ix-1)
	ld b, (hl)
	ld a, b
	and $0E
	ld c, a
	or a
	jp z, +
	ld a, b
	add a, $FE
	ld c, a
	and $0E
	ld c, a
	ld a, b
	and $F0
	ld b, a
	ld l, (ix-2)
	ld h, (ix-1)
	ld (hl), b
	ld a, (hl)
	or c
	ld l, (ix-2)
	ld h, (ix-1)
	ld (hl), a
	ld (ix-3), $00
+:
	ld l, (ix-2)
	ld h, (ix-1)
	ld b, (hl)
	ld a, b
	and $E0
	ld b, a
	or a
	jp z, +
	ld l, (ix-2)
	ld h, (ix-1)
	ld b, (hl)
	ld a, b
	add a, $E0
	ld e, a
	and $E0
	ld c, a
	ld a, b
	and $0F
	ld b, a
	ld l, (ix-2)
	ld h, (ix-1)
	ld (hl), b
	ld a, (hl)
	or c
	ld l, (ix-2)
	ld h, (ix-1)
	ld (hl), a
	ld (ix-3), $00
+:
	inc (ix-2)
	jp nz, +
	inc (ix-1)
+:
	ld c, d
	dec d
	xor a
	or c
	jp z, ++
	ld l, (ix-2)
	ld h, (ix-1)
	ld c, (hl)
	ld a, c
	or a
	jp z, +
	ld l, (ix-2)
	ld h, (ix-1)
	ld c, (hl)
	dec c
	dec c
	ld a, c
	and $0E
	ld l, (ix-2)
	ld h, (ix-1)
	ld (hl), a
	ld (ix-3), $00
+:
	inc (ix-2)
	jp nz, +
	inc (ix-1)
+:
	ld c, d
	dec d
	xor a
	or c
	jp nz, _LABEL_1828_
++:
	ld d, (ix+5)
	ld a, (ix-5)
	ld (ix-2), a
	ld a, (ix-4)
	ld (ix-1), a
	ld a, (ix+4)
	out (Port_VDPAddress), a
	ld a, $C0
	out (Port_VDPAddress), a
	ld c, (ix-2)
	ld b, (ix-1)
	ld e, d
-:
	ld d, e
	dec e
	xor a
	or d
	jp z, +
	ld a, (bc)
	out (Port_VDPData), a
	inc bc
	jp -

+:
	xor a
	or (ix-3)
	jp z, _LABEL_1800_
	ld sp, ix
	pop ix
	ret

_LABEL_1907_:
	push ix
	ld ix, $0000
	add ix, sp
	ld c, (ix+4)
	ld b, (ix+5)
	sla c
	rl b
	sla c
	rl b
	sla c
	rl b
	sla c
	rl b
	sla c
	rl b
	ld a, c
	add a, $00
	ld (ix+4), a
	ld a, b
	adc a, $40
	ld (ix+5), a
	ld c, (ix+4)
	ld b, $00
	ld a, c
	out (Port_VDPAddress), a
	ld c, (ix+5)
	ld b, $00
	ld a, c
	out (Port_VDPAddress), a
	ld a, $04
	jp +

-:
	sla (ix+8)
	rl (ix+9)
+:
	dec a
	jp nz, -
	ld c, (ix+8)
	ld b, (ix+9)
_LABEL_195C_:
	ld e, c
	ld d, b
	dec bc
	ld a, e
	or d
	jp z, _LABEL_19BB_
	ld e, (ix+6)
	ld d, (ix+7)
	ld a, (de)
	out (Port_VDPData), a
	ld a, e
	add a, $01
	ld (ix+6), a
	ld a, d
	adc a, $00
	ld (ix+7), a
	ld e, (ix+6)
	ld d, (ix+7)
	ld a, (de)
	out (Port_VDPData), a
	ld a, e
	add a, $01
	ld (ix+6), a
	ld a, d
	adc a, $00
	ld (ix+7), a
	ld e, (ix+6)
	ld d, (ix+7)
	ld a, (de)
	out (Port_VDPData), a
	ld a, e
	add a, $01
	ld (ix+6), a
	ld a, d
	adc a, $00
	ld (ix+7), a
	ld e, (ix+6)
	ld d, (ix+7)
	ld a, (de)
	out (Port_VDPData), a
	ld a, e
	add a, $01
	ld (ix+6), a
	ld a, d
	adc a, $00
	ld (ix+7), a
	jp _LABEL_195C_

_LABEL_19BB_:
	pop ix
	ret

; Data from 19BE to 1A93 (214 bytes)
.db $DD $E5 $DD $21 $00 $00 $DD $39 $21 $FE $FF $39 $F9 $3E $00 $D3
.db $BF $3E $78 $D3 $BF $DD $7E $04 $DD $77 $FE $DD $7E $05 $DD $77
.db $FF $DD $5E $06 $DD $56 $07 $4B $42 $1B $79 $B0 $CA $06 $1A $DD
.db $6E $FE $DD $66 $FF $7E $D3 $BE $DD $34 $FE $C2 $FF $19 $DD $34
.db $FF $3E $00 $D3 $BE $C3 $E5 $19 $DD $F9 $DD $E1 $C9 $DD $E5 $DD
.db $21 $00 $00 $DD $39 $21 $FD $FF $39 $F9 $DD $4E $04 $DD $46 $05
.db $DD $71 $FD $DD $70 $FE $DD $7E $09 $0F $0F $E6 $C0 $5F $DD $7E
.db $08 $87 $57 $7B $82 $D3 $BF $DD $5E $09 $CB $3B $CB $3B $7B $C6
.db $78 $D3 $BF $DD $4E $06 $DD $46 $07 $DD $36 $FF $00 $AF $DD $B6
.db $0A $CA $56 $1A $DD $36 $FF $08 $51 $58 $4A $43 $6A $63 $2B $55
.db $5C $79 $B0 $CA $8F $1A $DD $6E $FD $DD $66 $FE $7E $D3 $BE $DD
.db $34 $FD $C2 $76 $1A $DD $34 $FE $DD $6E $FD $DD $66 $FE $4E $DD
.db $34 $FD $C2 $86 $1A $DD $34 $FE $79 $DD $B6 $FF $D3 $BE $C3 $58
.db $1A $DD $F9 $DD $E1 $C9

_LABEL_1A94_:
	push ix
	ld ix, $0000
	add ix, sp
	ld hl, $FFFA
	add hl, sp
	ld sp, hl
	ld a, (ix+4)
	ld (ix-6), a
	ld a, (ix+5)
	ld (ix-5), a
	ld a, (ix+10)
	ld (ix-2), a
	ld a, (ix+11)
	ld (ix-1), a
_LABEL_1AB9_:
	ld a, (ix-6)
	out (Port_VDPAddress), a
	ld e, (ix-5)
	ld d, $00
	ld a, e
	add a, $78
	out (Port_VDPAddress), a
	ld e, (ix+8)
	ld d, (ix+9)
	ld a, (ix+6)
	ld (ix-4), a
	ld a, (ix+7)
	ld (ix-3), a
_LABEL_1ADA_:
	ld l, (ix-4)
	ld h, (ix-3)
	ld c, (hl)
	inc hl
	ld b, (hl)
	ld a, (ix-4)
	add a, $02
	ld (ix-4), a
	ld a, (ix-3)
	adc a, $00
	ld (ix-3), a
	ld a, (ix-4)
	ld (ix+6), a
	ld a, (ix-3)
	ld (ix+7), a
	ld a, c
	add a, (ix+12)
	ld c, a
	ld a, b
	adc a, (ix+13)
	ld b, a
	ld a, c
	out (Port_VDPData), a
	ld c, b
	ld b, $00
	ld a, c
	out (Port_VDPData), a
	ld c, e
	ld b, d
	dec de
	ld a, c
	or b
	jp z, +
	jp _LABEL_1ADA_

+:
	ld a, (ix-6)
	add a, $40
	ld (ix-6), a
	ld a, (ix-5)
	adc a, $00
	ld (ix-5), a
	ld c, (ix-2)
	ld b, (ix-1)
	ld l, (ix-2)
	ld h, (ix-1)
	dec hl
	ld (ix-2), l
	ld (ix-1), h
	ld a, c
	or b
	jp z, +
	jp _LABEL_1AB9_

+:
	ld sp, ix
	pop ix
	ret

_LABEL_1B4D_:
	push ix
	ld ix, $0000
	add ix, sp
	ld hl, $FFFA
	add hl, sp
	ld sp, hl
_LABEL_1B5A_:
	call _LABEL_2EFB_
	ld a, $03
	ld iy, _RAM_C104_
	sub (iy+0)
	ld a, $00
	sbc a, (iy+1)
	jp nc, +
	ld (iy+0), $00
	ld (iy+1), $00
+:
	ld hl, _DATA_2656_
	ld (_RAM_C106_), hl
	ld de, (_RAM_C104_)
	ld l, e
	ld h, d
	add hl, hl
	add hl, de
	add hl, hl
	add hl, hl
	ld c, l
	ld b, h
	ld hl, _RAM_C106_
	ld a, (hl)
	add a, c
	ld (hl), a
	inc hl
	ld a, (hl)
	adc a, b
	ld (hl), a
	ld iy, _RAM_C0FC_
	ld a, (iy+0)
	add a, $00
	ld c, a
	ld a, (iy+1)
	adc a, $10
	ld b, a
	ld de, (_RAM_C106_)
	ld a, e
	add a, $0A
	ld e, a
	ld a, d
	adc a, $00
	ld d, a
	ld l, e
	ld h, d
	ld a, (hl)
	ld (ix-2), a
	inc hl
	ld a, (hl)
	ld (ix-1), a
	ld de, (_RAM_C106_)
	ld a, e
	add a, $08
	ld e, a
	ld a, d
	adc a, $00
	ld d, a
	ld l, e
	ld h, d
	ld a, (hl)
	ld (ix-4), a
	inc hl
	ld a, (hl)
	ld (ix-3), a
	ld de, (_RAM_C106_)
	ld a, e
	add a, $06
	ld e, a
	ld a, d
	adc a, $00
	ld d, a
	ld l, e
	ld h, d
	ld a, (hl)
	ld (ix-6), a
	inc hl
	ld a, (hl)
	ld (ix-5), a
	ld de, (_RAM_C106_)
	inc de
	inc de
	inc de
	inc de
	ld l, e
	ld h, d
	ld e, (hl)
	inc hl
	ld d, (hl)
	push bc
	ld l, (ix-2)
	ld h, (ix-1)
	push hl
	ld l, (ix-4)
	ld h, (ix-3)
	push hl
	ld l, (ix-6)
	ld h, (ix-5)
	push hl
	push de
	call _LABEL_1A94_
	ld iy, $000A
	add iy, sp
	ld sp, iy
	in a, (_PORT_CD_)
	or a
	jp z, +
	ld iy, _RAM_C012_
	ld (iy+0), $6C
	ld (iy+1), $07
	jp _LABEL_1C37_

+:
	ld iy, _RAM_C012_
	ld (iy+0), $DC
	ld (iy+1), $14
_LABEL_1C37_:
	ld hl, $0014
	push hl
	call _LABEL_10BD_
	pop af
-:
	ld a, $10
	push af
	inc sp
	call _LABEL_1185_
	inc sp
	ld iy, _RAM_C010_
	ld a, (iy+0)
	or (iy+1)
	jp z, _LABEL_1C6A_
	xor a
	ld iy, _RAM_C014_
	or (iy+0)
	jp nz, -
	xor a
	ld iy, _RAM_C015_
	or (iy+0)
	jp nz, -
_LABEL_1C6A_:
	ld a, $10
	push af
	inc sp
	call _LABEL_1185_
	inc sp
	ld iy, _RAM_C012_
	ld a, (iy+0)
	or (iy+1)
	jp nz, +
	call _LABEL_338F_
+:
	xor a
	ld iy, _RAM_C014_
	or (iy+0)
	jp nz, +
	xor a
	ld iy, _RAM_C015_
	or (iy+0)
	jp z, _LABEL_1C6A_
+:
	ld a, $00
	out (_PORT_CD_), a
	ld iy, _RAM_C012_
	ld (iy+0), $6C
	ld (iy+1), $07
	ld iy, _RAM_C014_
	ld a, (iy+0)
	and $02
	jp z, +
	jp ++

+:
	ld iy, _RAM_C015_
	ld a, (iy+0)
	and $02
	jp z, _LABEL_1E32_
++:
	ld hl, _DATA_2656_
	ld (_RAM_C106_), hl
	ld de, (_RAM_C104_)
	ld l, e
	ld h, d
	add hl, hl
	add hl, de
	add hl, hl
	add hl, hl
	ld c, l
	ld b, h
	ld hl, _RAM_C106_
	ld a, (hl)
	add a, c
	ld (hl), a
	inc hl
	ld a, (hl)
	adc a, b
	ld (hl), a
	ld iy, _RAM_C0FC_
	ld a, (iy+0)
	add a, $00
	ld c, a
	ld a, (iy+1)
	adc a, $18
	ld b, a
	ld de, (_RAM_C106_)
	ld a, e
	add a, $0A
	ld e, a
	ld a, d
	adc a, $00
	ld d, a
	ld l, e
	ld h, d
	ld a, (hl)
	ld (ix-6), a
	inc hl
	ld a, (hl)
	ld (ix-5), a
	ld de, (_RAM_C106_)
	ld a, e
	add a, $08
	ld e, a
	ld a, d
	adc a, $00
	ld d, a
	ld l, e
	ld h, d
	ld a, (hl)
	ld (ix-4), a
	inc hl
	ld a, (hl)
	ld (ix-3), a
	ld de, (_RAM_C106_)
	ld a, e
	add a, $06
	ld e, a
	ld a, d
	adc a, $00
	ld d, a
	ld l, e
	ld h, d
	ld a, (hl)
	ld (ix-2), a
	inc hl
	ld a, (hl)
	ld (ix-1), a
	ld de, (_RAM_C106_)
	inc de
	inc de
	inc de
	inc de
	ld l, e
	ld h, d
	ld e, (hl)
	inc hl
	ld d, (hl)
	push bc
	ld l, (ix-6)
	ld h, (ix-5)
	push hl
	ld l, (ix-4)
	ld h, (ix-3)
	push hl
	ld l, (ix-2)
	ld h, (ix-1)
	push hl
	push de
	call _LABEL_1A94_
	ld iy, $000A
	add iy, sp
	ld sp, iy
	ld iy, _RAM_C104_
	inc (iy+0)
	jp nz, +
	inc (iy+1)
+:
	ld iy, _RAM_C104_
	ld a, (iy+0)
	cp $04
	jp nz, +
	ld a, (iy+1)
	or a
	jp z, ++
+:
	jp +++

++:
	ld iy, _RAM_C104_
	ld (iy+0), $00
	ld (iy+1), $00
+++:
	ld hl, _DATA_2656_
	ld (_RAM_C106_), hl
	ld de, (_RAM_C104_)
	ld l, e
	ld h, d
	add hl, hl
	add hl, de
	add hl, hl
	add hl, hl
	ld c, l
	ld b, h
	ld hl, _RAM_C106_
	ld a, (hl)
	add a, c
	ld (hl), a
	inc hl
	ld a, (hl)
	adc a, b
	ld (hl), a
	ld iy, _RAM_C0FC_
	ld a, (iy+0)
	add a, $00
	ld c, a
	ld a, (iy+1)
	adc a, $10
	ld b, a
	ld de, (_RAM_C106_)
	ld a, e
	add a, $0A
	ld e, a
	ld a, d
	adc a, $00
	ld d, a
	ld l, e
	ld h, d
	ld a, (hl)
	ld (ix-6), a
	inc hl
	ld a, (hl)
	ld (ix-5), a
	ld de, (_RAM_C106_)
	ld a, e
	add a, $08
	ld e, a
	ld a, d
	adc a, $00
	ld d, a
	ld l, e
	ld h, d
	ld a, (hl)
	ld (ix-4), a
	inc hl
	ld a, (hl)
	ld (ix-3), a
	ld de, (_RAM_C106_)
	ld a, e
	add a, $06
	ld e, a
	ld a, d
	adc a, $00
	ld d, a
	ld l, e
	ld h, d
	ld a, (hl)
	ld (ix-2), a
	inc hl
	ld a, (hl)
	ld (ix-1), a
	ld de, (_RAM_C106_)
	inc de
	inc de
	inc de
	inc de
	ld l, e
	ld h, d
	ld e, (hl)
	inc hl
	ld d, (hl)
	push bc
	ld l, (ix-6)
	ld h, (ix-5)
	push hl
	ld l, (ix-4)
	ld h, (ix-3)
	push hl
	ld l, (ix-2)
	ld h, (ix-1)
	push hl
	push de
	call _LABEL_1A94_
	ld iy, $000A
	add iy, sp
	ld sp, iy
_LABEL_1E32_:
	ld iy, _RAM_C014_
	ld a, (iy+0)
	and $01
	jp z, +
	jp ++

+:
	ld iy, _RAM_C015_
	ld a, (iy+0)
	and $01
	jp z, _LABEL_1FB0_
++:
	ld hl, _DATA_2656_
	ld (_RAM_C106_), hl
	ld de, (_RAM_C104_)
	ld l, e
	ld h, d
	add hl, hl
	add hl, de
	add hl, hl
	add hl, hl
	ld c, l
	ld b, h
	ld hl, _RAM_C106_
	ld a, (hl)
	add a, c
	ld (hl), a
	inc hl
	ld a, (hl)
	adc a, b
	ld (hl), a
	ld iy, _RAM_C0FC_
	ld a, (iy+0)
	add a, $00
	ld c, a
	ld a, (iy+1)
	adc a, $18
	ld b, a
	ld de, (_RAM_C106_)
	ld a, e
	add a, $0A
	ld e, a
	ld a, d
	adc a, $00
	ld d, a
	ld l, e
	ld h, d
	ld a, (hl)
	ld (ix-6), a
	inc hl
	ld a, (hl)
	ld (ix-5), a
	ld de, (_RAM_C106_)
	ld a, e
	add a, $08
	ld e, a
	ld a, d
	adc a, $00
	ld d, a
	ld l, e
	ld h, d
	ld a, (hl)
	ld (ix-4), a
	inc hl
	ld a, (hl)
	ld (ix-3), a
	ld de, (_RAM_C106_)
	ld a, e
	add a, $06
	ld e, a
	ld a, d
	adc a, $00
	ld d, a
	ld l, e
	ld h, d
	ld a, (hl)
	ld (ix-2), a
	inc hl
	ld a, (hl)
	ld (ix-1), a
	ld de, (_RAM_C106_)
	inc de
	inc de
	inc de
	inc de
	ld l, e
	ld h, d
	ld e, (hl)
	inc hl
	ld d, (hl)
	push bc
	ld l, (ix-6)
	ld h, (ix-5)
	push hl
	ld l, (ix-4)
	ld h, (ix-3)
	push hl
	ld l, (ix-2)
	ld h, (ix-1)
	push hl
	push de
	call _LABEL_1A94_
	ld iy, $000A
	add iy, sp
	ld sp, iy
	ld iy, _RAM_C104_
	ld a, (iy+0)
	or (iy+1)
	jp z, +
	jp ++

+:
	ld iy, _RAM_C104_
	ld (iy+0), $04
	ld (iy+1), $00
++:
	ld hl, (_RAM_C104_)
	dec hl
	ld (_RAM_C104_), hl
	ld hl, _DATA_2656_
	ld (_RAM_C106_), hl
	ld de, (_RAM_C104_)
	ld l, e
	ld h, d
	add hl, hl
	add hl, de
	add hl, hl
	add hl, hl
	ld c, l
	ld b, h
	ld hl, _RAM_C106_
	ld a, (hl)
	add a, c
	ld (hl), a
	inc hl
	ld a, (hl)
	adc a, b
	ld (hl), a
	ld iy, _RAM_C0FC_
	ld a, (iy+0)
	add a, $00
	ld c, a
	ld a, (iy+1)
	adc a, $10
	ld b, a
	ld de, (_RAM_C106_)
	ld a, e
	add a, $0A
	ld e, a
	ld a, d
	adc a, $00
	ld d, a
	ld l, e
	ld h, d
	ld a, (hl)
	ld (ix-6), a
	inc hl
	ld a, (hl)
	ld (ix-5), a
	ld de, (_RAM_C106_)
	ld a, e
	add a, $08
	ld e, a
	ld a, d
	adc a, $00
	ld d, a
	ld l, e
	ld h, d
	ld a, (hl)
	ld (ix-4), a
	inc hl
	ld a, (hl)
	ld (ix-3), a
	ld de, (_RAM_C106_)
	ld a, e
	add a, $06
	ld e, a
	ld a, d
	adc a, $00
	ld d, a
	ld l, e
	ld h, d
	ld a, (hl)
	ld (ix-2), a
	inc hl
	ld a, (hl)
	ld (ix-1), a
	ld de, (_RAM_C106_)
	inc de
	inc de
	inc de
	inc de
	ld l, e
	ld h, d
	ld e, (hl)
	inc hl
	ld d, (hl)
	push bc
	ld l, (ix-6)
	ld h, (ix-5)
	push hl
	ld l, (ix-4)
	ld h, (ix-3)
	push hl
	ld l, (ix-2)
	ld h, (ix-1)
	push hl
	push de
	call _LABEL_1A94_
	ld iy, $000A
	add iy, sp
	ld sp, iy
_LABEL_1FB0_:
	ld iy, _RAM_C014_
	ld a, (iy+0)
	and $10
	jp z, +
	jp ++

+:
	ld iy, _RAM_C015_
	ld a, (iy+0)
	and $10
	jp z, _LABEL_1C37_
++:
	call _LABEL_29DE_
	jp _LABEL_1B5A_

; Data from 1FD1 to 1FD5 (5 bytes)
.db $DD $F9 $DD $E1 $C9

; Data from 1FD6 to 20FD (296 bytes)
_DATA_1FD6_:
.db $10 $00 $07 $00 $00 $00 $00 $00 $FF $00 $00 $5F $00 $00 $00 $00
.db $00 $01 $07 $00 $00 $00 $00 $00 $FF $00 $00 $5F $00 $00 $00 $00
.db $00 $01 $07 $00 $00 $00 $00 $00 $FF $00 $00 $5F $00 $00 $00 $00
.db $00 $01 $07 $00 $00 $00 $00 $00 $FF $00 $00 $5F $00 $00 $00 $00
.db $80 $00 $03 $00 $00 $00 $00 $00 $00 $00 $00 $7F $00 $00 $00 $00
.db $20 $00 $07 $00 $00 $00 $00 $00 $FF $00 $00 $5F $00 $00 $00 $00
.db $00 $01 $03 $00 $00 $00 $00 $00 $FF $00 $00 $5F $00 $00 $00 $00
.db $80 $00 $07 $00 $00 $00 $00 $00 $FF $00 $00 $5F $00 $00 $00 $00
.db $80 $00 $07 $00 $00 $00 $00 $00 $FF $00 $00 $5F $00 $00 $00 $00
.db $00 $01 $07 $00 $00 $00 $00 $00 $FF $00 $00 $5F $00 $00 $00 $00
.db $80 $00 $07 $00 $00 $00 $00 $00 $FF $00 $00 $5F $00 $00 $00 $00
.db $00 $01 $07 $00 $00 $00 $00 $00 $FF $00 $04 $5F $00 $00 $00 $00
.db $00 $01 $07 $00 $00 $00 $00 $00 $FF $00 $04 $5F $00 $00 $00 $00
.db $00 $01 $07 $00 $00 $32 $00 $00 $FF $91 $04 $7F $00 $00 $00 $00
.db $80 $00 $07 $00 $00 $00 $00 $00 $FF $00 $04 $5F $00 $00 $00 $00
.db $00 $01 $07 $00 $00 $00 $00 $00 $FF $00 $04 $5F $00 $00 $00 $00
.db $80 $00 $07 $00 $00 $00 $00 $00 $00 $00 $04 $5F $00 $00 $00 $00
.db $00 $01 $07 $00 $00 $00 $00 $00 $FF $00 $04 $5F $00 $00 $00 $00
.db $00 $01 $07 $00 $00 $00 $00 $00

; 8th entry of Pointer Table from 168 (indexed by unknown)
; Data from 20FE to 20FF (2 bytes)
_DATA_20FE_:
.db $FF $00

; Pointer Table from 2100 to 2101 (1 entries, indexed by unknown)
.dw _DATA_5F04_

; Data from 2102 to 2655 (1364 bytes)
.incbin "Master System Evolution menu_DATA_2102_.inc"

; Data from 2656 to 29BD (872 bytes)
_DATA_2656_:
.db $2C $00 $2E $00 $E6 $01 $B0 $35 $05 $00 $01 $00 $2C $00 $3E $00
.db $A6 $02 $D4 $35 $05 $00 $01 $00 $2C $00 $4E $00 $66 $03 $F8 $35
.db $05 $00 $01 $00 $2C $00 $5E $00 $26 $04 $1C $36 $05 $00 $01 $00
.db $0C $03 $03 $03 $80 $C3 $88 $53 $8C $00 $03 $03 $80 $C3 $88 $0A
.db $3C $00 $03 $03 $80 $C3 $88 $0B $00 $00 $03 $03 $80 $C3 $88 $0E
.db $78 $00 $03 $03 $80 $C3 $88 $08 $28 $00 $03 $03 $80 $C3 $88 $0D
.db $50 $00 $03 $03 $80 $C3 $88 $0C $A0 $00 $03 $03 $80 $C3 $88 $0F
.db $FC $03 $03 $03 $80 $C3 $88 $67 $58 $02 $03 $03 $80 $C3 $88 $4A
.db $98 $03 $03 $03 $80 $C3 $88 $56 $84 $03 $03 $03 $80 $C3 $88 $57
.db $20 $03 $03 $03 $80 $C3 $88 $54 $DC $00 $03 $03 $80 $C3 $88 $10
.db $F0 $00 $03 $03 $80 $C3 $88 $11 $68 $01 $03 $03 $80 $C3 $88 $3F
.db $70 $03 $03 $03 $80 $C3 $88 $58 $48 $03 $03 $03 $80 $C3 $88 $59
.db $54 $01 $03 $03 $80 $C3 $88 $12 $04 $01 $03 $03 $80 $C3 $88 $07
.db $D4 $03 $03 $03 $80 $C3 $88 $52 $94 $02 $03 $03 $80 $C3 $88 $4D
.db $6C $02 $03 $03 $80 $C3 $88 $4B $7C $01 $03 $03 $80 $C3 $88 $13
.db $2C $01 $03 $03 $80 $C3 $88 $06 $90 $01 $03 $03 $80 $C3 $88 $15
.db $44 $02 $04 $03 $80 $C3 $88 $5B $A4 $01 $03 $03 $80 $C3 $88 $16
.db $B8 $01 $03 $03 $80 $C3 $88 $04 $30 $02 $02 $03 $80 $C3 $88 $42
.db $E0 $01 $03 $03 $80 $C3 $88 $17 $34 $03 $03 $03 $80 $C3 $88 $55
.db $BC $02 $03 $03 $80 $C3 $88 $4F $08 $02 $03 $03 $80 $C3 $88 $19
.db $6C $02 $02 $03 $80 $C3 $88 $46 $F4 $01 $03 $03 $80 $C3 $88 $18
.db $00 $00 $04 $03 $80 $C3 $88 $1A $14 $00 $04 $03 $80 $C3 $88 $1B
.db $30 $02 $04 $03 $80 $C3 $88 $5C $64 $00 $04 $03 $80 $C3 $88 $1C
.db $78 $00 $04 $03 $80 $C3 $88 $03 $8C $00 $04 $03 $80 $C3 $88 $1E
.db $DC $00 $04 $03 $80 $C3 $88 $21 $A0 $00 $04 $03 $80 $C3 $88 $1F
.db $F0 $00 $04 $03 $80 $C3 $88 $22 $C8 $00 $04 $03 $80 $C3 $88 $20
.db $04 $01 $04 $03 $80 $C3 $88 $23 $B4 $00 $04 $03 $80 $C3 $88 $1D
.db $18 $01 $04 $03 $80 $C3 $88 $24 $2C $01 $04 $03 $80 $C3 $88 $25
.db $40 $01 $04 $03 $80 $C3 $88 $05 $AC $03 $03 $03 $80 $C3 $88 $5D
.db $38 $04 $03 $03 $80 $C3 $88 $5E $C0 $03 $03 $03 $80 $C3 $88 $5F
.db $54 $01 $04 $03 $80 $C3 $88 $60 $68 $01 $04 $03 $80 $C3 $88 $26
.db $7C $01 $04 $03 $80 $C3 $88 $27 $90 $01 $04 $03 $80 $C3 $88 $28
.db $B8 $01 $04 $03 $80 $C3 $88 $2A $A8 $02 $03 $03 $80 $C3 $88 $4E
.db $94 $02 $02 $03 $80 $C3 $88 $45 $A4 $01 $04 $03 $80 $C3 $88 $29
.db $E4 $02 $03 $03 $80 $C3 $88 $51 $80 $02 $02 $03 $80 $C3 $88 $47
.db $5C $03 $03 $03 $80 $C3 $88 $61 $F4 $01 $04 $03 $80 $C3 $88 $2B
.db $1C $02 $04 $03 $80 $C3 $88 $43 $30 $02 $03 $03 $80 $C3 $88 $48
.db $80 $02 $03 $03 $80 $C3 $88 $4C $4C $04 $03 $03 $80 $C3 $88 $62
.db $3C $00 $02 $03 $80 $C3 $88 $2D $00 $00 $02 $03 $80 $C3 $88 $44
.db $28 $00 $02 $03 $80 $C3 $88 $2C $64 $00 $02 $03 $80 $C3 $88 $2E
.db $A0 $00 $02 $03 $80 $C3 $88 $31 $78 $00 $02 $03 $80 $C3 $88 $2F
.db $8C $00 $02 $03 $80 $C3 $88 $30 $E8 $03 $03 $03 $80 $C3 $88 $63
.db $B4 $00 $02 $03 $80 $C3 $88 $35 $54 $01 $02 $03 $80 $C3 $88 $38
.db $C8 $00 $02 $03 $80 $C3 $88 $33 $10 $04 $03 $03 $80 $C3 $88 $64
.db $D0 $02 $03 $03 $80 $C3 $88 $50 $DC $00 $02 $03 $80 $C3 $88 $34
.db $F0 $00 $02 $03 $80 $C3 $88 $02 $04 $01 $02 $03 $80 $C3 $88 $32
.db $24 $04 $03 $03 $80 $C3 $88 $65 $58 $02 $02 $03 $80 $C3 $88 $66
.db $18 $01 $02 $03 $80 $C3 $88 $01 $2C $01 $02 $03 $80 $C3 $88 $36
.db $1C $02 $02 $03 $80 $C3 $88 $41 $40 $01 $02 $03 $80 $C3 $88 $37
.db $68 $01 $02 $03 $80 $C3 $88 $39 $44 $02 $03 $03 $80 $C3 $88 $49
.db $F8 $02 $03 $03 $80 $C3 $88 $5A $A4 $01 $02 $03 $80 $C3 $88 $3C
.db $90 $01 $02 $03 $80 $C3 $88 $3B $7C $01 $02 $03 $80 $C3 $88 $3A
.db $B8 $01 $02 $03 $80 $C3 $88 $3D $64 $00 $03 $03 $80 $C3 $88 $09
.db $E0 $01 $02 $03 $80 $C3 $88 $40 $CC $01 $02 $03 $80 $C3 $88 $3E
.db $F4 $01 $02 $03 $80 $C3 $88 $14

; Data from 29BE to 29CD (16 bytes)
_DATA_29BE_:
.db $00 $00 $19 $00 $1A $00 $31 $00 $32 $00 $4D $00 $4E $00 $66 $00

; Data from 29CE to 29DD (16 bytes)
_DATA_29CE_:
.db $24 $F7 $B4 $F1 $80 $F8 $BC $F8 $10 $FF $14 $DD $C0 $F4 $60 $FA

_LABEL_29DE_:
	push ix
	ld ix, $0000
	add ix, sp
	ld hl, $FFF4
	add hl, sp
	ld sp, hl
	call _LABEL_3042_
	ld hl, $C10C
	ld (ix-6), l
	ld (ix-5), h
_LABEL_29F7_:
	ld hl, $0014
	push hl
	call _LABEL_10BD_
	pop af
-:
	ld a, $10
	push af
	inc sp
	call _LABEL_1185_
	inc sp
	ld iy, _RAM_C010_
	ld a, (iy+0)
	or (iy+1)
	jp z, _LABEL_2A2A_
	xor a
	ld iy, _RAM_C014_
	or (iy+0)
	jp nz, -
	xor a
	ld iy, _RAM_C015_
	or (iy+0)
	jp nz, -
_LABEL_2A2A_:
	ld a, $10
	push af
	inc sp
	call _LABEL_1185_
	inc sp
	ld iy, _RAM_C012_
	ld a, (iy+0)
	or (iy+1)
	jp nz, +
	call _LABEL_338F_
+:
	xor a
	ld iy, _RAM_C014_
	or (iy+0)
	jp nz, +
	xor a
	ld iy, _RAM_C015_
	or (iy+0)
	jp z, _LABEL_2A2A_
+:
	ld a, $00
	out (_PORT_CD_), a
	ld iy, _RAM_C012_
	ld (iy+0), $6C
	ld (iy+1), $07
	ld iy, _RAM_C014_
	ld a, (iy+0)
	and $01
	jp z, +
	jp ++

+:
	ld iy, _RAM_C015_
	ld a, (iy+0)
	and $01
	jp z, _LABEL_2C59_
++:
	ld (ix-2), $00
	ld (ix-1), $00
_LABEL_2A8B_:
	ld a, (ix-2)
	sub $05
	ld a, (ix-1)
	sbc a, $00
	jp nc, _LABEL_2B23_
	ld e, (ix-2)
	ld d, (ix-1)
	sla e
	rl d
	ld hl, _RAM_C108_
	add hl, de
	ld e, l
	ld d, h
	ld c, (hl)
	inc hl
	ld b, (hl)
	ld a, c
	add a, $FF
	ld (ix-10), a
	ld a, b
	adc a, $FF
	ld (ix-9), a
	ld l, e
	ld h, d
	ld a, (ix-10)
	ld (hl), a
	inc hl
	ld a, (ix-9)
	ld (hl), a
	ld iy, _RAM_C104_
	ld a, (iy+0)
	ld (ix-8), a
	ld a, (iy+1)
	ld (ix-7), a
	ld a, $03
	jp +

-:
	sla (ix-8)
	rl (ix-7)
+:
	dec a
	jp nz, -
	ld a, $BE
	add a, (ix-8)
	ld c, a
	ld a, $29
	adc a, (ix-7)
	ld b, a
	ld l, c
	ld h, b
	ld c, (hl)
	inc hl
	ld b, (hl)
	ld a, (ix-10)
	sub c
	ld a, (ix-9)
	sbc a, b
	jp p, +
	ld a, $BE
	add a, (ix-8)
	ld c, a
	ld a, $29
	adc a, (ix-7)
	ld b, a
	inc bc
	inc bc
	ld l, c
	ld h, b
	ld c, (hl)
	inc hl
	ld b, (hl)
	ld l, e
	ld h, d
	ld (hl), c
	inc hl
	ld (hl), b
+:
	inc (ix-2)
	jp nz, +
	inc (ix-1)
+:
	jp _LABEL_2A8B_

_LABEL_2B23_:
	ld a, $00
	push af
	inc sp
	ld hl, (_RAM_C100_)
	push hl
	call _LABEL_33F7_
	pop af
	inc sp
	ld hl, _RAM_C0FE_
	ld a, (hl)
	add a, $EB
	ld (hl), a
	inc hl
	ld a, (hl)
	adc a, $FF
	ld (hl), a
	ld iy, _RAM_C0FE_
	ld a, (iy+0)
	ld iy, _RAM_C0FC_
	sub (iy+0)
	ld iy, _RAM_C0FE_
	ld a, (iy+1)
	ld iy, _RAM_C0FC_
	sbc a, (iy+1)
	jp nc, +
	ld hl, (_RAM_C102_)
	ld iy, _RAM_C0FE_
	ld (iy+0), l
	ld (iy+1), h
+:
	ld hl, _RAM_C100_
	ld a, (hl)
	add a, $EB
	ld (hl), a
	inc hl
	ld a, (hl)
	adc a, $FF
	ld (hl), a
	ld iy, _RAM_C100_
	ld a, (iy+0)
	ld iy, _RAM_C0FC_
	sub (iy+0)
	ld iy, _RAM_C100_
	ld a, (iy+1)
	ld iy, _RAM_C0FC_
	sbc a, (iy+1)
	jp nc, +
	ld hl, (_RAM_C102_)
	ld iy, _RAM_C100_
	ld (iy+0), l
	ld (iy+1), h
+:
	ld bc, (_RAM_C0FE_)
	ld (ix-4), $18
	ld (ix-3), $02
	ld (ix-2), $00
	ld (ix-1), $00
_LABEL_2BB4_:
	ld a, (ix-2)
	sub $05
	ld a, (ix-1)
	sbc a, $00
	jp nc, _LABEL_2C59_
	ld a, (ix-2)
	cp $02
	jp nz, +
	ld a, (ix-1)
	or a
	jp z, ++
+:
	jp +++

++:
	ld e, c
	ld a, b
	or $10
	ld d, a
	push bc
	push de
	ld hl, $0000
	push hl
	ld hl, $0012
	push hl
	ld hl, $C112
	push hl
	ld l, (ix-4)
	ld h, (ix-3)
	push hl
	call _LABEL_1A94_
	ld iy, $000A
	add iy, sp
	ld sp, iy
	pop bc
	jp ++++

+++:
	ld e, c
	ld a, b
	or $18
	ld d, a
	push bc
	push de
	ld hl, $0000
	push hl
	ld hl, $0012
	push hl
	ld hl, $C112
	push hl
	ld l, (ix-4)
	ld h, (ix-3)
	push hl
	call _LABEL_1A94_
	ld iy, $000A
	add iy, sp
	ld sp, iy
	pop bc
++++:
	ld a, c
	add a, $15
	ld c, a
	ld a, b
	adc a, $00
	ld b, a
	ld iy, _RAM_C102_
	ld a, (iy+0)
	sub c
	ld a, (iy+1)
	sbc a, b
	jp nc, +
	ld bc, (_RAM_C0FC_)
+:
	ld a, (ix-4)
	add a, $80
	ld (ix-4), a
	ld a, (ix-3)
	adc a, $00
	ld (ix-3), a
	inc (ix-2)
	jp nz, +
	inc (ix-1)
+:
	jp _LABEL_2BB4_

_LABEL_2C59_:
	ld iy, _RAM_C014_
	ld a, (iy+0)
	and $02
	jp z, +
	jp ++

+:
	ld iy, _RAM_C015_
	ld a, (iy+0)
	and $02
	jp z, _LABEL_2E42_
++:
	ld (ix-2), $00
	ld (ix-1), $00
_LABEL_2C7C_:
	ld a, (ix-2)
	sub $05
	ld a, (ix-1)
	sbc a, $00
	jp nc, _LABEL_2D14_
	ld e, (ix-2)
	ld d, (ix-1)
	sla e
	rl d
	ld hl, _RAM_C108_
	add hl, de
	ld c, l
	ld b, h
	ld e, (hl)
	inc hl
	ld d, (hl)
	ld a, e
	add a, $01
	ld (ix-12), a
	ld a, d
	adc a, $00
	ld (ix-11), a
	ld l, c
	ld h, b
	ld a, (ix-12)
	ld (hl), a
	inc hl
	ld a, (ix-11)
	ld (hl), a
	ld iy, _RAM_C104_
	ld a, (iy+0)
	ld (ix-8), a
	ld a, (iy+1)
	ld (ix-7), a
	ld a, $03
	jp +

-:
	sla (ix-8)
	rl (ix-7)
+:
	dec a
	jp nz, -
	ld a, $BE
	add a, (ix-8)
	ld e, a
	ld a, $29
	adc a, (ix-7)
	ld d, a
	inc de
	inc de
	ld l, e
	ld h, d
	ld e, (hl)
	inc hl
	ld d, (hl)
	ld a, e
	sub (ix-12)
	ld a, d
	sbc a, (ix-11)
	jp p, +
	ld a, $BE
	add a, (ix-8)
	ld e, a
	ld a, $29
	adc a, (ix-7)
	ld d, a
	ld l, e
	ld h, d
	ld e, (hl)
	inc hl
	ld d, (hl)
	ld l, c
	ld h, b
	ld (hl), e
	inc hl
	ld (hl), d
+:
	inc (ix-2)
	jp nz, +
	inc (ix-1)
+:
	jp _LABEL_2C7C_

_LABEL_2D14_:
	ld a, $04
	push af
	inc sp
	ld hl, (_RAM_C100_)
	push hl
	call _LABEL_33F7_
	pop af
	inc sp
	ld hl, _RAM_C0FE_
	ld a, (hl)
	add a, $15
	ld (hl), a
	inc hl
	ld a, (hl)
	adc a, $00
	ld (hl), a
	ld iy, _RAM_C102_
	ld a, (iy+0)
	ld iy, _RAM_C0FE_
	sub (iy+0)
	ld iy, _RAM_C102_
	ld a, (iy+1)
	ld iy, _RAM_C0FE_
	sbc a, (iy+1)
	jp nc, +
	ld hl, (_RAM_C0FC_)
	ld (iy+0), l
	ld (iy+1), h
+:
	ld hl, _RAM_C100_
	ld a, (hl)
	add a, $15
	ld (hl), a
	inc hl
	ld a, (hl)
	adc a, $00
	ld (hl), a
	ld iy, _RAM_C102_
	ld a, (iy+0)
	ld iy, _RAM_C100_
	sub (iy+0)
	ld iy, _RAM_C102_
	ld a, (iy+1)
	ld iy, _RAM_C100_
	sbc a, (iy+1)
	jp nc, +
	ld hl, (_RAM_C0FC_)
	ld (iy+0), l
	ld (iy+1), h
+:
	ld bc, (_RAM_C0FE_)
	ld (ix-4), $18
	ld (ix-3), $02
	ld (ix-2), $00
	ld (ix-1), $00
_LABEL_2D9D_:
	ld a, (ix-2)
	sub $05
	ld a, (ix-1)
	sbc a, $00
	jp nc, _LABEL_2E42_
	ld a, (ix-2)
	cp $02
	jp nz, +
	ld a, (ix-1)
	or a
	jp z, ++
+:
	jp +++

++:
	ld e, c
	ld a, b
	or $10
	ld d, a
	push bc
	push de
	ld hl, $0000
	push hl
	ld hl, $0012
	push hl
	ld hl, $C112
	push hl
	ld l, (ix-4)
	ld h, (ix-3)
	push hl
	call _LABEL_1A94_
	ld iy, $000A
	add iy, sp
	ld sp, iy
	pop bc
	jp ++++

+++:
	ld e, c
	ld a, b
	or $18
	ld d, a
	push bc
	push de
	ld hl, $0000
	push hl
	ld hl, $0012
	push hl
	ld hl, $C112
	push hl
	ld l, (ix-4)
	ld h, (ix-3)
	push hl
	call _LABEL_1A94_
	ld iy, $000A
	add iy, sp
	ld sp, iy
	pop bc
++++:
	ld a, c
	add a, $15
	ld c, a
	ld a, b
	adc a, $00
	ld b, a
	ld iy, _RAM_C102_
	ld a, (iy+0)
	sub c
	ld a, (iy+1)
	sbc a, b
	jp nc, +
	ld bc, (_RAM_C0FC_)
+:
	ld a, (ix-4)
	add a, $80
	ld (ix-4), a
	ld a, (ix-3)
	adc a, $00
	ld (ix-3), a
	inc (ix-2)
	jp nz, +
	inc (ix-1)
+:
	jp _LABEL_2D9D_

_LABEL_2E42_:
	ld iy, _RAM_C014_
	ld a, (iy+0)
	and $20
	jp z, +
	jp ++

+:
	ld iy, _RAM_C015_
	ld a, (iy+0)
	and $20
	jp z, +++
++:
	jp _LABEL_2EF6_

+++:
	ld iy, _RAM_C014_
	ld a, (iy+0)
	and $10
	jp z, +
	jp ++

+:
	ld iy, _RAM_C015_
	ld a, (iy+0)
	and $10
	jp z, _LABEL_29F7_
++:
	ld l, (ix-6)
	ld h, (ix-5)
	ld c, (hl)
	inc hl
	ld b, (hl)
	sla c
	rl b
	sla c
	rl b
	sla c
	rl b
	ld hl, $2686
	add hl, bc
	ld c, l
	ld b, h
	ld a, c
	add a, $07
	ld c, a
	ld a, b
	adc a, $00
	ld b, a
	ld a, (bc)
	ld c, a
	ld (ix-4), c
	ld (ix-3), $00
	ld a, (ix-4)
	cp $FF
	jp nz, +
	ld a, (ix-3)
	or a
	jp z, _LABEL_29F7_
+:
	ld a, $00
	out (_PORT_CD_), a
	ld de, $0000
-:
	ld a, e
	sub $20
	ld a, d
	sbc a, $00
	jp nc, +
	ld c, e
	ld b, d
	sla c
	rl b
	ld hl, $C0BC
	add hl, bc
	ld c, l
	ld b, h
	ld (hl), $00
	inc hl
	ld (hl), $00
	inc de
	jp -

+:
	ld a, $40
	push af
	inc sp
	ld hl, $C0BC
	push hl
	ld a, $00
	push af
	inc sp
	call _LABEL_15CA_
	pop af
	pop af
	ld c, (ix-4)
	ld a, c
	push af
	inc sp
	call _LABEL_1340_
	inc sp
_LABEL_2EF6_:
	ld sp, ix
	pop ix
	ret

_LABEL_2EFB_:
	ld c, $00
-:
	ld a, c
	sub $20
	jp nc, +
	ld e, c
	ld d, $00
	sla e
	rl d
	ld hl, $C0BC
	add hl, de
	ld e, l
	ld d, h
	ld (hl), $00
	inc hl
	ld (hl), $00
	inc c
	jp -

+:
	ld a, $40
	push af
	inc sp
	ld hl, $C0BC
	push hl
	ld a, $00
	push af
	inc sp
	call _LABEL_15CA_
	pop af
	pop af
	ld iy, _RAM_C0FC_
	ld (iy+0), $00
	ld (iy+1), $00
	ld bc, (_DATA_6078_)
	push bc
	ld hl, $4CD8
	push hl
	ld hl, $0000
	push hl
	call _LABEL_1907_
	pop af
	pop af
	pop af
	ld iy, _RAM_C0FC_
	ld a, (iy+0)
	add a, $00
	ld c, a
	ld a, (iy+1)
	adc a, $10
	ld b, a
	push bc
	ld hl, $0017
	push hl
	ld hl, $001F
	push hl
	ld hl, $46D8
	push hl
	ld hl, $0000
	push hl
	call _LABEL_1A94_
	ld iy, $000A
	add iy, sp
	ld sp, iy
	ld bc, (_DATA_6078_)
	ld hl, _RAM_C0FC_
	ld a, (hl)
	add a, c
	ld (hl), a
	inc hl
	ld a, (hl)
	adc a, b
	ld (hl), a
	ld iy, _RAM_FFFF_
	ld (iy+0), $02
	ld bc, (_DATA_B393_)
	push bc
	ld hl, $AB33
	push hl
	ld hl, (_RAM_C0FC_)
	push hl
	call _LABEL_1907_
	pop af
	pop af
	pop af
	ld iy, _RAM_C0FC_
	ld a, (iy+0)
	add a, $00
	ld c, a
	ld a, (iy+1)
	adc a, $18
	ld b, a
	push bc
	ld hl, $000A
	push hl
	ld hl, $0007
	push hl
	ld hl, $AA83
	push hl
	ld hl, $01C4
	push hl
	call _LABEL_1A94_
	ld iy, $000A
	add iy, sp
	ld sp, iy
	ld bc, (_DATA_B393_)
	ld hl, _RAM_C0FC_
	ld a, (hl)
	add a, c
	ld (hl), a
	inc hl
	ld a, (hl)
	adc a, b
	ld (hl), a
	ld bc, (_DATA_39B4_)
	push bc
	ld hl, $3634
	push hl
	ld hl, (_RAM_C0FC_)
	push hl
	call _LABEL_1907_
	pop af
	pop af
	pop af
	ld iy, _RAM_C0FC_
	ld a, (iy+0)
	add a, $00
	ld c, a
	ld a, (iy+1)
	adc a, $18
	ld b, a
	push bc
	ld hl, $000A
	push hl
	ld hl, $0005
	push hl
	ld hl, $35B0
	push hl
	ld hl, $01E6
	push hl
	call _LABEL_1A94_
	ld iy, $000A
	add iy, sp
	ld sp, iy
	ld a, $20
	push af
	inc sp
	ld hl, $4658
	push hl
	ld a, $00
	push af
	inc sp
	call _LABEL_15CA_
	pop af
	pop af
	ld a, $20
	push af
	inc sp
	ld hl, $AA03
	push hl
	ld a, $20
	push af
	inc sp
	call _LABEL_15CA_
	pop af
	pop af
	ld iy, _RAM_FFFF_
	ld (iy+0), $02
	ret

_LABEL_3042_:
	push ix
	ld ix, $0000
	add ix, sp
	ld hl, $FFFA
	add hl, sp
	ld sp, hl
	ld bc, $0000
-:
	ld a, c
	sub $20
	ld a, b
	sbc a, $00
	jp nc, +
	ld e, c
	ld d, b
	sla e
	rl d
	ld hl, $C0BC
	add hl, de
	ld e, l
	ld d, h
	ld (hl), $00
	inc hl
	ld (hl), $00
	inc bc
	jp -

+:
	ld a, $40
	push af
	inc sp
	ld hl, $C0BC
	push hl
	ld a, $00
	push af
	inc sp
	call _LABEL_15CA_
	pop af
	pop af
	ld bc, $0000
-:
	ld a, c
	sub $15
	ld a, b
	sbc a, $00
	jp nc, +
	ld e, c
	ld d, b
	sla e
	rl d
	ld hl, $C112
	add hl, de
	ld e, l
	ld d, h
	ld (hl), c
	inc hl
	ld (hl), b
	inc bc
	jp -

+:
	ld (ix-2), $00
	ld (ix-1), $00
-:
	ld a, (ix-2)
	sub $10
	ld a, (ix-1)
	sbc a, $00
	jp nc, ++
	ld e, (ix-2)
	ld d, (ix-1)
	sla e
	rl d
	ld hl, $C0BC
	add hl, de
	ld c, l
	ld b, h
	ld hl, _DATA_4656_ + 2
	add hl, de
	ld e, l
	ld d, h
	ld e, (hl)
	inc hl
	ld d, (hl)
	ld l, c
	ld h, b
	ld (hl), e
	inc hl
	ld (hl), d
	inc (ix-2)
	jp nz, +
	inc (ix-1)
+:
	jp -

++:
	ld hl, $1000
	push hl
	ld hl, $0017
	push hl
	ld hl, $001F
	push hl
	ld hl, $46D8
	push hl
	ld hl, $0000
	push hl
	call _LABEL_1A94_
	ld iy, $000A
	add iy, sp
	ld sp, iy
	ld iy, _RAM_FFFF_
	ld (iy+0), $02
	ld (ix-2), $00
	ld (ix-1), $00
	ld (ix-4), $10
	ld (ix-3), $00
_LABEL_3116_:
	ld a, (ix-2)
	sub $10
	ld a, (ix-1)
	sbc a, $00
	jp nc, _LABEL_3160_
	ld e, (ix-4)
	ld d, (ix-3)
	sla e
	rl d
	ld hl, $C0BC
	add hl, de
	ld e, l
	ld d, h
	ld c, (ix-2)
	ld b, (ix-1)
	sla c
	rl b
	ld hl, _DATA_AA03_
	add hl, bc
	ld c, l
	ld b, h
	ld c, (hl)
	inc hl
	ld b, (hl)
	ld l, e
	ld h, d
	ld (hl), c
	inc hl
	ld (hl), b
	inc (ix-2)
	jp nz, +
	inc (ix-1)
+:
	inc (ix-4)
	jp nz, +
	inc (ix-3)
+:
	jp _LABEL_3116_

_LABEL_3160_:
	ld bc, (_DATA_6078_)
	ld a, c
	add a, $00
	ld c, a
	ld a, b
	adc a, $18
	ld b, a
	push bc
	ld hl, $000A
	push hl
	ld hl, $0007
	push hl
	ld hl, $AA83
	push hl
	ld hl, $01C4
	push hl
	call _LABEL_1A94_
	ld iy, $000A
	add iy, sp
	ld sp, iy
	ld iy, _RAM_C104_
	ld c, (iy+0)
	ld b, (iy+1)
	sla c
	rl b
	sla c
	rl b
	ld hl, _DATA_29BE_
	add hl, bc
	ld c, l
	ld b, h
	ld e, c
	ld d, b
	inc de
	inc de
	ld l, e
	ld h, d
	ld a, (hl)
	ld (ix-6), a
	inc hl
	ld a, (hl)
	ld (ix-5), a
	ld e, (ix-6)
	ld d, (ix-5)
	dec de
	ld hl, _RAM_C108_
	ld (hl), e
	inc hl
	ld (hl), d
	ld de, _RAM_C10A_
	ld l, e
	ld h, d
	ld a, (ix-6)
	ld (hl), a
	inc hl
	ld a, (ix-5)
	ld (hl), a
	ld de, _RAM_C10C_
	ld l, c
	ld h, b
	ld c, (hl)
	inc hl
	ld b, (hl)
	ld l, e
	ld h, d
	ld (hl), c
	inc hl
	ld (hl), b
	ld hl, $C10E
	ld (ix-6), l
	ld (ix-5), h
	ld e, c
	ld d, b
	inc de
	ld l, (ix-6)
	ld h, (ix-5)
	ld (hl), e
	inc hl
	ld (hl), d
	ld de, _RAM_C110_
	inc bc
	inc bc
	ld l, e
	ld h, d
	ld (hl), c
	inc hl
	ld (hl), b
	ld hl, (_RAM_C0FC_)
	ld iy, _RAM_C0FE_
	ld (iy+0), l
	ld (iy+1), h
	ld hl, _RAM_C100_
	ld a, (iy+0)
	add a, $69
	ld (hl), a
	ld a, (iy+1)
	adc a, $00
	inc hl
	ld (hl), a
	ld hl, (_RAM_C100_)
	ld iy, _RAM_C102_
	ld (iy+0), l
	ld (iy+1), h
	ld a, $00
	push af
	inc sp
	ld hl, (_RAM_C0FE_)
	push hl
	call _LABEL_33F7_
	pop af
	inc sp
	ld iy, _RAM_C0FE_
	ld a, (iy+0)
	add a, $15
	ld c, a
	ld a, (iy+1)
	adc a, $00
	ld b, a
	ld a, $01
	push af
	inc sp
	push bc
	call _LABEL_33F7_
	pop af
	inc sp
	ld iy, _RAM_C0FE_
	ld a, (iy+0)
	add a, $2A
	ld c, a
	ld a, (iy+1)
	adc a, $00
	ld b, a
	ld a, $02
	push af
	inc sp
	push bc
	call _LABEL_33F7_
	pop af
	inc sp
	ld iy, _RAM_C0FE_
	ld a, (iy+0)
	add a, $3F
	ld c, a
	ld a, (iy+1)
	adc a, $00
	ld b, a
	ld a, $03
	push af
	inc sp
	push bc
	call _LABEL_33F7_
	pop af
	inc sp
	ld iy, _RAM_C0FE_
	ld a, (iy+0)
	add a, $54
	ld c, a
	ld a, (iy+1)
	adc a, $00
	ld b, a
	ld a, $04
	push af
	inc sp
	push bc
	call _LABEL_33F7_
	pop af
	inc sp
	ld iy, _RAM_C0FE_
	ld a, (iy+0)
	add a, $00
	ld c, a
	ld a, (iy+1)
	adc a, $18
	ld b, a
	push bc
	ld hl, $0000
	push hl
	ld hl, $0012
	push hl
	ld hl, $C112
	push hl
	ld hl, $0218
	push hl
	call _LABEL_1A94_
	ld iy, $000A
	add iy, sp
	ld sp, iy
	ld iy, _RAM_C0FE_
	ld a, (iy+0)
	add a, $15
	ld c, a
	ld a, (iy+1)
	adc a, $18
	ld b, a
	push bc
	ld hl, $0000
	push hl
	ld hl, $0012
	push hl
	ld hl, $C112
	push hl
	ld hl, $0298
	push hl
	call _LABEL_1A94_
	ld iy, $000A
	add iy, sp
	ld sp, iy
	ld iy, _RAM_C0FE_
	ld a, (iy+0)
	add a, $2A
	ld c, a
	ld a, (iy+1)
	adc a, $10
	ld b, a
	push bc
	ld hl, $0000
	push hl
	ld hl, $0012
	push hl
	ld hl, $C112
	push hl
	ld hl, $0318
	push hl
	call _LABEL_1A94_
	ld iy, $000A
	add iy, sp
	ld sp, iy
	ld iy, _RAM_C0FE_
	ld a, (iy+0)
	add a, $3F
	ld c, a
	ld a, (iy+1)
	adc a, $18
	ld b, a
	push bc
	ld hl, $0000
	push hl
	ld hl, $0012
	push hl
	ld hl, $C112
	push hl
	ld hl, $0398
	push hl
	call _LABEL_1A94_
	ld iy, $000A
	add iy, sp
	ld sp, iy
	ld iy, _RAM_C0FE_
	ld a, (iy+0)
	add a, $54
	ld c, a
	ld a, (iy+1)
	adc a, $18
	ld b, a
	push bc
	ld hl, $0000
	push hl
	ld hl, $0012
	push hl
	ld hl, $C112
	push hl
	ld hl, $0418
	push hl
	call _LABEL_1A94_
	ld iy, $000A
	add iy, sp
	ld sp, iy
	ld a, $40
	push af
	inc sp
	ld hl, $C0BC
	push hl
	ld a, $00
	push af
	inc sp
	call _LABEL_15CA_
	pop af
	pop af
	ld iy, _RAM_FFFF_
	ld (iy+0), $02
	ld sp, ix
	pop ix
	ret

_LABEL_338F_:
	in a, (_PORT_CD_)
	add a, $01
	out (_PORT_CD_), a
	in a, (_PORT_CD_)
	ld c, a
	ld a, $08
	sub c
	jp nc, +
	ld a, $01
	out (_PORT_CD_), a
+:
	in a, (_PORT_CD_)
	ld c, a
	dec c
	ld iy, _RAM_FFF8_
	ld b, $00
	sla c
	rl b
	ld hl, _DATA_29CE_
	add hl, bc
	ld c, l
	ld b, h
	ld c, (hl)
	inc hl
	ld b, (hl)
	ld (iy+0), c
	ld (iy+1), b
	ld c, $00
-:
	ld a, c
	sub $20
	jp nc, +
	ld e, c
	ld d, $00
	sla e
	rl d
	ld hl, $C0BC
	add hl, de
	ld e, l
	ld d, h
	ld (hl), $00
	inc hl
	ld (hl), $00
	inc c
	jp -

+:
	ld a, $40
	push af
	inc sp
	ld hl, $C0BC
	push hl
	ld a, $00
	push af
	inc sp
	call _LABEL_15CA_
	pop af
	pop af
	in a, (_PORT_CD_)
	push af
	inc sp
	call _LABEL_1340_
	inc sp
	ret

_LABEL_33F7_:
	push ix
	ld ix, $0000
	add ix, sp
	ld hl, $FFF4
	add hl, sp
	ld sp, hl
	ld c, (ix+6)
	ld b, $00
	ld (ix-12), c
	ld (ix-11), b
	sla (ix-12)
	rl (ix-11)
	ld a, $08
	add a, (ix-12)
	ld e, a
	ld a, $C1
	adc a, (ix-11)
	ld d, a
	ld l, e
	ld h, d
	ld e, (hl)
	inc hl
	ld d, (hl)
	sla e
	rl d
	sla e
	rl d
	sla e
	rl d
	ld hl, $2686
	add hl, de
	ld (ix-10), l
	ld (ix-9), h
	ld e, (ix-10)
	ld d, (ix-9)
	inc de
	inc de
	ld a, (de)
	ld e, a
	ld d, $00
	ld iy, _RAM_FFFF_
	ld a, e
	ld (iy+0), a
	ld a, (ix-10)
	add a, $03
	ld c, a
	ld a, (ix-9)
	adc a, $00
	ld b, a
	ld l, c
	ld h, b
	ld c, (hl)
	inc hl
	ld b, (hl)
	ld (ix-6), c
	ld (ix-5), b
	ld l, (ix-10)
	ld h, (ix-9)
	ld c, (hl)
	inc hl
	ld b, (hl)
	ld e, c
	ld d, b
	sla e
	rl d
	ld a, (ix-6)
	add a, e
	ld (ix-6), a
	ld a, (ix-5)
	adc a, d
	ld (ix-5), a
	ld c, (ix-6)
	ld b, (ix-5)
	ld (ix-2), $00
	ld (ix-1), $00
_LABEL_3494_:
	ld a, (ix-2)
	sub $15
	ld a, (ix-1)
	sbc a, $00
	jp nc, _LABEL_3537_
	ld l, c
	ld h, b
	ld e, (hl)
	inc hl
	ld d, (hl)
	ld (ix-4), e
	ld (ix-3), d
	inc bc
	inc bc
	ld a, $08
	add a, (ix-12)
	ld e, a
	ld a, $C1
	adc a, (ix-11)
	ld d, a
	ld l, e
	ld h, d
	ld e, (hl)
	inc hl
	ld d, (hl)
	sla e
	rl d
	sla e
	rl d
	sla e
	rl d
	ld hl, $2686
	add hl, de
	ld e, l
	ld d, h
	inc de
	inc de
	inc de
	inc de
	inc de
	ld l, e
	ld h, d
	ld e, (hl)
	inc hl
	ld d, (hl)
	ld (ix-8), e
	ld (ix-7), d
	ld e, (ix-4)
	ld d, (ix-3)
	sla e
	rl d
	sla e
	rl d
	sla e
	rl d
	sla e
	rl d
	sla e
	rl d
	ld a, (ix-8)
	add a, e
	ld (ix-8), a
	ld a, (ix-7)
	adc a, d
	ld (ix-7), a
	ld a, (ix+4)
	add a, (ix-2)
	ld e, a
	ld a, (ix+5)
	adc a, (ix-1)
	ld d, a
	push bc
	ld hl, $0001
	push hl
	ld l, (ix-8)
	ld h, (ix-7)
	push hl
	push de
	call _LABEL_1907_
	pop af
	pop af
	pop af
	pop bc
	inc (ix-2)
	jp nz, +
	inc (ix-1)
+:
	jp _LABEL_3494_

_LABEL_3537_:
	ld sp, ix
	pop ix
	ret

; Data from 353C to 3562 (39 bytes)
.db $3E $12 $D3 $DF $3E $80 $32 $F9 $3F $3A $0F $C0 $D3 $DE $3E $00
.db $32 $F9 $3F
.dsb 9, $00
.db $3A $0E $C0 $F6 $87 $32 $FE $3F $C3 $00 $00

-:
	ld a, $9F
	out (Port_PSG), a
	ld a, $BF
	out (Port_PSG), a
	ld a, $DF
	out (Port_PSG), a
	ld a, $FF
	out (Port_PSG), a
	ret

_LABEL_3574_:
	call -
	ld a, $01
	ld (_RAM_D73E_), a
	ld (_RAM_D73C_), a
	xor a
	ld (_RAM_D73B_), a
	ld a, $00
	call _LABEL_3594_
	ret

_LABEL_3589_:
	ld (_RAM_D73E_), a
	ld (_RAM_D73C_), a
	ret

; Data from 3590 to 3593 (4 bytes)
.db $32 $3B $D7 $C9

_LABEL_3594_:
	ld b, a
	ld a, (_RAM_DFFF_)
	ld (_RAM_C13C_), a
	ld a, $05
	ld (_RAM_FFFF_), a
	ld hl, +	; Overriding return address
	push hl
	ld hl, (_DATA_14000_)
	ld a, b
	jp (hl)

+:
	ld a, (_RAM_C13C_)
	ld (_RAM_FFFF_), a
	ret

; Data from 35B0 to 3817 (616 bytes)
.db $01 $00 $02 $00 $03 $00 $03 $00 $04 $00 $05 $00 $06 $00 $07 $00
.db $08 $00 $08 $02 $09 $00 $0A $00 $03 $00 $03 $00 $03 $00 $03 $00
.db $03 $00 $03 $00 $0B $00 $0C $00 $03 $00 $03 $00 $0D $00 $05 $00
.db $0E $00 $0F $00 $08 $00 $08 $02 $10 $00 $11 $00 $03 $00 $03 $00
.db $03 $00 $03 $00 $03 $00 $03 $00 $12 $00 $13 $00 $03 $00 $03 $00
.db $04 $00 $05 $00 $14 $00 $15 $00 $08 $00 $08 $02 $16 $00 $17 $00
.db $03 $00 $03 $00 $03 $00 $03 $00 $03 $00 $03 $00 $0B $00 $18 $00
.db $03 $00 $03 $00 $04 $00 $01 $02 $19 $00 $1A $00 $08 $00 $08 $02
.db $1B $00 $01 $02
.dsb 33, $00
.db $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00
.db $FF $FF $FF $00 $FF $FF $FF $01 $FF $FF $FF $01 $FF $FF $FF $00
.db $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00
.db $FF $FF $FF $00 $FF $FF $FF $F0 $FF $FF $FF $F0 $FF $FF $FF $00
.db $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00
.db $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00
.db $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00
.db $FF $FF $FF $00
.dsb 11, $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $80 $FF $FF $FF
.db $03 $FF $FF $FF $03 $FF $FF $FF $03 $FF $FF $FF $07 $FF $FF $FF
.db $07 $FF $FF $FF $07 $FF $FF $FF $0E $FF $FF $FF $0E $FF $FF $FF
.db $F8 $FF $FF $FF $B8 $FF $FF $FF $B8 $FF $FF $FF $1C $FF $FF $FF
.db $FC $FF $FF $FF $FC $FF $FF $FF $0E $FF $FF $FF $0E $FF $FF $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $03 $FF $FF $FF
.db $03 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $E3 $FF $FF $FF $E3
.dsb 11, $FF
.db $E3 $FF $FF $FF $E3
.dsb 11, $FF
.db $80 $FF $FF $FF $80 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $80 $FF $FF $FF $80 $FF $FF $FF $80 $FF $FF $FF $00 $FF $FF $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $01 $FF $FF $FF $03 $FF $FF $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $F0 $FF $FF $FF $F8 $FF $FF $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $3F $FF $FF $FF $7F $FF $FF $FF
.db $07 $FF $FF $FF $07 $FF $FF $FF $07 $FF $FF $FF $07 $FF $FF $FF
.db $07 $FF $FF $FF $07 $FF $FF $FF $03 $FF $FF $FF $01 $FF $FF $FF
.db $BC $FF $FF $FF

; 2nd entry of Pointer Table from 17D (indexed by unknown)
; Pointer Table from 3818 to 3819 (1 entries, indexed by unknown)
_DATA_3818_:
.dw _RAM_FF18_

; Data from 381A to 39B3 (410 bytes)
.db $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $18 $FF $FF $FF $3C $FF
.db $FF $FF $F8 $FF $FF $FF $F0 $FF $FF $FF $71 $FF $FF $FF $E0 $FF
.db $FF $FF $E7 $FF $FF $FF $E7 $FF $FF $FF $E1 $FF $FF $FF $73 $FF
.db $FF $FF $7F $FF $FF $FF $3F $FF $FF $FF $80 $FF $FF $FF $00 $FF
.db $FF $FF $80 $FF $FF $FF $80 $FF $FF $FF $80 $FF $FF $FF $80 $FF
.db $FF $FF $80 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF
.db $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF
.db $FF $FF $07 $FF $FF $FF $07 $FF $FF $FF $00 $FF $FF $FF $00 $FF
.db $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF
.db $FF $FF $0E $FF $FF $FF $0E $FF $FF $FF $07 $FF $FF $FF $07 $FF
.db $FF $FF $07 $FF $FF $FF $07 $FF $FF $FF $07 $FF $FF $FF $07 $FF
.db $FF $FF $07 $FF $FF $FF $07 $FF $FF $FF $0E $FF $FF $FF $0E $FF
.db $FF $FF $FE $FF $FF $FF $FE $FF $FF $FF $0E $FF $FF $FF $0E $FF
.db $FF $FF $0E $FF $FF $FF $0E $FF $FF $FF $E3 $FF $FF $FF $E3
.dsb 11, $FF
.db $F8 $FF $FF $FF $EE $FF $FF $FF $EF $FF $FF $FF $E7 $FF $FF $FF
.db $80 $FF $FF $FF $80 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $80 $FF $FF $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $F8 $FF $FF $FF $FC $FF $FF $FF
.db $03 $FF $FF $FF $03 $FF $FF $FF $01 $FF $FF $FF $00 $FF $FF $FF
.db $00 $FF $FF $FF $03 $FF $FF $FF $03 $FF $FF $FF $01 $FF $FF $FF
.db $9C $FF $FF $FF $C0 $FF $FF $FF $F0 $FF $FF $FF $FC $FF $FF $FF
.db $1C $FF $FF $FF $9C $FF $FF $FF $F8 $FF $FF $FF $F0 $FF $FF $FF
.db $07 $FF $FF $FF $0E $FF $FF $FF $1C $FF $FF $FF $38 $FF $FF $FF
.db $70 $FF $FF $FF $F0
.dsb 11, $FF

; Data from 39B4 to 3ABD (266 bytes)
_DATA_39B4_:
.db $1C $00 $00 $00 $CC $0C $A0 $0C $80 $0C $60 $0C $40 $0C $20 $0C
.db $00 $0C $00 $0C $00 $0A $00 $08 $00 $06 $00 $0C $00 $0C $00 $0C
.dsb 98, $00
.db $01 $00 $01 $00 $01 $00 $01 $C6 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00

; 3rd entry of Pointer Table from 168 (indexed by unknown)
; Data from 3ABE to 3CBF (514 bytes)
_DATA_3ABE_:
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00

; 7th entry of Pointer Table from 168 (indexed by unknown)
; Data from 3CC0 to 4655 (2454 bytes)
_DATA_3CC0_:
.incbin "Master System Evolution menu_DATA_3CC0_.inc"

; Data from 4656 to 5F03 (6318 bytes)
_DATA_4656_:
.incbin "Master System Evolution menu_DATA_4656_.inc"

; 1st entry of Pointer Table from 2100 (indexed by unknown)
; Data from 5F04 to 6077 (372 bytes)
_DATA_5F04_:
.db $00 $FE $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF
.db $00 $FF $00 $FF $8C $53 $72 $05 $DC $3F $3C $03 $F0 $1F $10 $2F
.db $40 $BF $A0 $5F $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF
.db $00 $FF $00 $FF $03 $FC $04 $F9 $03 $FC $04 $F9 $07 $F8 $04 $F8
.db $03 $FC $04 $F9 $03 $FC $04 $F9 $00 $FF $00 $FF $00 $FF $00 $FF
.db $00 $FF $00 $FF $67 $88 $88 $30 $7B $84 $84 $20 $5B $A4 $A4 $00
.db $FF $00 $20 $94 $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF
.db $00 $FF $00 $FF $C3 $34 $24 $98 $CD $32 $22 $90 $CD $32 $22 $90
.db $CF $30 $20 $9A $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF
.db $00 $FF $00 $FF $DE $61 $51 $20 $C7 $78 $40 $3C $DF $60 $44 $30
.db $DF $60 $51 $20 $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF
.db $00 $FF $00 $FF $FB $04 $04 $80 $C3 $3C $24 $98 $5F $A0 $A4 $10
.db $FB $84 $84 $48 $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF
.db $00 $FF $00 $FF $7B $84 $84 $00 $63 $9C $80 $3C $EB $14 $94 $22
.db $7F $84 $06 $C8 $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF
.db $00 $FF $00 $FF $8F $70 $90 $64 $FF $00 $80 $14 $7B $84 $84 $32
.db $CF $10 $12 $64 $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF
.db $00 $FF $00 $FF $6D $92 $92 $00 $EF $10 $90 $02 $7D $82 $92 $00
.db $EF $10 $30 $06 $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF
.db $00 $FF $00 $FF $9F $20 $20 $C2 $6F $90 $90 $02 $EF $10 $10 $82
.db $BF $40 $40 $92 $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF
.db $00 $FF $00 $FF $00 $FF $80 $7F $00 $FF $80 $7F $00 $FF $80 $7F
.db $00 $FF $80 $7F $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF
.db $00 $FF $00 $FF

; Data from 6078 to 60A4 (45 bytes)
_DATA_6078_:
.db $9D $00 $EE $0E $00 $00 $22 $04 $64 $06 $00 $00 $EE $0E $4E $00
.db $21 $06 $00 $39 $4E $2B $56 $2B $5E $2B $7E $2B $6E $67 $79 $B7
.db $C8 $CB $1A $CB $1B $CB $1C $CB $1D $3D $C3 $97 $60

_LABEL_60A5_:
	ld hl, $0006
	add hl, sp
	ld c, (hl)
	dec hl
	ld d, (hl)
	dec hl
	ld e, (hl)
	dec hl
	ld a, (hl)
	dec hl
	ld l, (hl)
	ld h, a
	ld a, c
-:
	or a
	ret z
	sra d
	rr e
	rr h
	rr l
	dec a
	jp -

; Data from 60C2 to 6726 (1637 bytes)
.db $21 $06 $00 $39 $4E $2B $56 $2B $5E $2B $7E $2B $6E $67 $79 $B7
.db $C8 $CB $15 $CB $14 $CB $13 $CB $12 $3D $C3 $D1 $60
.dsb 1608, $FF

; 1st entry of Pointer Table from 153 (indexed by unknown)
; Data from 6727 to 7FEF (6345 bytes)
_DATA_6727_:
.dsb 6345, $FF

.BANK 1 SLOT 1
.ORG $0000

; Data from 7FF0 to 7FFF (16 bytes)
.db $54 $4D $52 $20 $53 $45 $47 $41 $20 $20 $32 $6B $00 $00 $02 $4F

.BANK 2
.ORG $0000

; Data from 8000 to AA02 (10755 bytes)
.incbin "Master System Evolution menu_DATA_8000_.inc"

; Data from AA03 to B392 (2448 bytes)
_DATA_AA03_:
.incbin "Master System Evolution menu_DATA_AA03_.inc"

; Data from B393 to BFFF (3181 bytes)
_DATA_B393_:
.db $43 $00 $01 $00 $02 $00 $03 $00 $04 $00 $05 $00 $06 $00 $07 $00
.db $08 $00 $09 $00 $0A $00 $0B $00 $0C $00 $0D $00 $0E $00 $0F $00
.db $10 $00 $11 $00 $12
.dsb 33, $00
.db $AA $55 $00 $FF $95 $6A $00 $FF $68 $97 $01 $FE $98 $63 $07 $F3
.db $43 $AC $1F $EF $2D $D2 $3F $DE $1B $A4 $7C $B3 $B1 $46 $78 $6F
.db $AA $55 $00 $FF $55 $AA $00 $FF $2A $D5 $80 $7F $65 $BA $C0 $9F
.db $AA $45 $F0 $EF $79 $86 $F0 $EF $C6 $59 $20 $8F $E8 $17 $00 $FF
.db $AA $55 $00 $FF $55 $AA $00 $FF $8A $75 $00 $FF $35 $EA $00 $CF
.db $AA $65 $10 $CF $75 $C2 $18 $8F $D2 $A5 $58 $4F $85 $6A $D0 $47
.db $AA $55 $00 $FF $55 $AA $00 $FF $AA $55 $00 $FF $25 $E2 $18 $CF
.db $FA $0D $38 $B7 $52 $E9 $3C $BF $B9 $06 $78 $BB $5C $A3 $7D $BA
.db $AA $55 $00 $FF $55 $AA $00 $FF $A0 $5F $00 $FF $01 $D7 $2C $F2
.db $AA $55 $2C $C2 $0C $B1 $6B $A7 $EB $94 $69 $45 $5F $9A $F9 $C5
.db $AA $55 $00 $FF $55 $AA $00 $FF $00 $FF $00 $FF $55 $AA $FE $AA
.db $00 $FC $03 $00 $FE $01 $FE $00 $8B $00 $F4 $BF $BF $40 $80 $BF
.db $CE $21 $F0 $7F $59 $86 $E0 $DF $D4 $2B $C0 $DF $C8 $37 $C0 $DF
.db $F6 $29 $C0 $DF $48 $B7 $F1 $EE $FF $88 $71 $70 $3F $40 $FF $FF
.db $15 $EB $00 $FE $30 $2F $C1 $9F $CE $A7 $71 $3D $A9 $46 $B7 $1B
.db $A9 $42 $B7 $1B $F2 $4D $AF $17 $77 $61 $EF $16 $8C $B3 $4F $1E
.db $64 $6B $F0 $07 $0A $DD $68 $07 $AD $92 $E8 $07 $D9 $22 $EC $E7
.db $EA $15 $EC $E3 $90 $57 $28 $03 $EC $0F $15 $C2 $1D $C2 $34 $E2
.db $36 $C8 $7D $FC $BC $43 $7F $7F $A7 $D8 $7F $7F $27 $50 $EF $66
.db $E4 $0B $F7 $76 $55 $AA $E4 $FD $58 $81 $E6 $DF $E2 $3D $C0 $DF
.db $E5 $28 $D3 $C5 $D1 $26 $DB $CF $50 $27 $DB $0F $4F $A0 $53 $0B
.db $B7 $3C $73 $0B $82 $99 $67 $0B $A6 $59 $B7 $0B $25 $CA $B7 $9F
.db $7C $FB $C0 $83 $CD $30 $FE $FF $F8 $05 $FE $FF $FB $78 $94 $07
.db $D5 $2A $00 $7F $52 $AD $80 $7F $F9 $FE $84 $03 $DE $21 $FC $FB
.db $9F $00 $7F $DF $EF $1E $10 $E0 $1B $E4 $00 $FF $31 $CE $00 $FF
.db $CC $33 $00 $FF $99 $66 $00 $FF $26 $D9 $00 $FF $69 $96 $00 $FF
.db $0F $F2 $7C $4D $95 $4C $22 $B3 $26 $D9 $00 $FF $54 $AB $00 $FF
.db $AB $54 $00 $FF $52 $AD $00 $FF $AD $52 $00 $FF $52 $AD $00 $FF
.db $8D $62 $1C $E2 $4B $AC $18 $F3 $8D $72 $00 $FF $9D $62 $00 $FF
.db $62 $9D $00 $FF $54 $AB $00 $FF $AB $54 $00 $FF $54 $AB $00 $FF
.db $D4 $2B $C0 $DF $90 $4F $20 $3F $6D $92 $00 $FF $25 $DA $00 $FF
.db $DA $25 $00 $FF $95 $6A $00 $FF $6A $95 $00 $FF $95 $6A $00 $FF
.db $F7 $00 $EF $1F $5B $47 $E6 $B8 $67 $98 $00 $FF $44 $BB $00 $FF
.db $B3 $4C $00 $FF $66 $99 $00 $FF $89 $76 $00 $FF $5A $A5 $00 $FF
.db $F9 $02 $FC $FB $FA $F9 $04 $07 $5D $A2 $00 $FF $51 $AE $00 $FF
.db $2E $D1 $00 $FF $45 $BA $00 $FF $9A $65 $00 $FF $35 $CA $00 $FF
.db $13 $00
.dsb 2533, $FF

.BANK 3
.ORG $0000

; Data from C000 to FFFF (16384 bytes)
.incbin "Master System Evolution menu_DATA_C000_.inc"

.BANK 4
.ORG $0000

; Data from 10000 to 13FFF (16384 bytes)
.incbin "Master System Evolution menu_DATA_10000_.inc"

.BANK 5
.ORG $0000

; Jump Table from 14000 to 14001 (1 entries, indexed by unknown)
_DATA_14000_:
.dw _LABEL_1561B_

; Data from 14002 to 147C5 (1988 bytes)
.incbin "Master System Evolution menu_DATA_14002_.inc"

; Pointer Table from 147C6 to 147ED (20 entries, indexed by _RAM_D73B_)
_DATA_147C6_:
.dw _DATA_3F9_ _DATA_3C0_ _DATA_38A_ _DATA_357_ _DATA_327_ _DATA_2FA_ _DATA_2CF_ _DATA_2A7_
.dw _DATA_281_ _DATA_25D_ _DATA_23B_ _DATA_21B_ _DATA_1FD_ _DATA_1E0_ _DATA_1C5_ _DATA_1AC_
.dw _DATA_194_ _DATA_17D_ _DATA_168_ _DATA_153_

; Data from 147EE to 14897 (170 bytes)
.db $40 $01 $2E $01 $1D $01 $0D $01 $FE $00 $F0 $00 $E3 $00 $D6 $00
.db $CA $00 $BE $00 $B4 $00 $AA $00 $A0 $00 $97 $00 $8F $00 $87 $00
.db $7F $00 $78 $00 $71 $00 $6B $00 $65 $00 $5F $00 $5A $00 $55 $00
.db $50 $00 $4B $00 $47 $00 $43 $00 $40 $00 $3C $00 $39 $00 $35 $00
.db $32 $00 $30 $00 $2D $00 $2A $00 $28 $00 $26 $00 $24 $00 $22 $00
.db $20 $00 $1E $00 $1C $00 $1B $00 $19 $00 $18 $00 $16 $00 $15 $00
.db $14 $00 $13 $00 $12 $00 $11 $00 $10 $00 $0F $00 $0E $00 $0D $00
.db $0D $00 $0C $00 $0B $00 $0B $00 $0A $00 $09 $00 $09 $00 $08 $00
.db $08 $00 $07 $00 $07 $00 $07 $00 $06 $00 $06 $00 $06 $00 $05 $00
.db $05 $00 $05 $00 $04 $00 $04 $00 $AE $06 $4E $06 $F4 $05 $9E $05
.db $4E $05 $02 $05 $BA $04 $76 $04 $36 $04

; Data from 14898 to 148EF (88 bytes)
_DATA_14898_:
.db $08 $08 $07 $07 $06 $06 $06 $05 $05 $05 $04 $04 $04 $04 $04 $03
.db $03 $03 $03 $03 $03 $02 $02 $02 $02 $02 $02 $02 $02
.dsb 59, $01

; Pointer Table from 148F0 to 1490F (16 entries, indexed by _RAM_D73C_)
_DATA_148F0_:
.dw _DATA_14910_ _DATA_14922_ _DATA_155E0_ _DATA_155E0_ _DATA_155E0_ _DATA_155E0_ _DATA_155E0_ _DATA_155E0_
.dw _DATA_155E0_ _DATA_155E0_ _DATA_155E0_ _DATA_155E0_ _DATA_155E0_ _DATA_155E0_ _DATA_155E0_ _DATA_155E0_

; 1st entry of Pointer Table from 148F0 (indexed by _RAM_D73C_)
; Data from 14910 to 14921 (18 bytes)
_DATA_14910_:
.dsb 18, $00

; 2nd entry of Pointer Table from 148F0 (indexed by _RAM_D73C_)
; Data from 14922 to 155DF (3262 bytes)
_DATA_14922_:
.incbin "Master System Evolution menu_DATA_14922_.inc"

; 3rd entry of Pointer Table from 148F0 (indexed by _RAM_D73C_)
; Data from 155E0 to 155E1 (2 bytes)
_DATA_155E0_:
.db $9F $BF

; Pointer Table from 155E2 to 155E3 (1 entries, indexed by unknown)
.dw _RAM_FFDF_

--:
	di
	ld b, $04
	ld c, Port_PSG
	ld hl, _DATA_155E0_
	otir
	ld a, $07
	ld (_RAM_D73D_), a
	ld a, (_RAM_D73E_)
	ld (_RAM_D73C_), a
	call +
	ld a, $06
	ld (_RAM_D73D_), a
	ei
	ret

-:
	di
	ld a, $06
	ld (_RAM_D73D_), a
	ld a, $01
	ld (_RAM_D73E_), a
	ld (_RAM_D73C_), a
	call +
	ld a, $00
	ld (_RAM_D73D_), a
	ei
	ret

; 1st entry of Jump Table from 14000 (indexed by unknown)
_LABEL_1561B_:
	cp $00
	jp z, --
	cp $01
	jp z, -
+:
	ld a, (_RAM_D73D_)
	bit 1, a
	jp z, _LABEL_156A5_
	push bc
	push de
	push hl
	exx
	push bc
	push de
	push hl
	exx
	push ix
	ld a, (_RAM_D73B_)
	or a
	jp z, +
	call _LABEL_15E10_
	xor a
	ld (_RAM_D73B_), a
+:
	ld a, (_RAM_D73C_)
	or a
	jp z, +
	call _LABEL_15AED_
	xor a
	ld (_RAM_D73C_), a
+:
	call _LABEL_15C12_
	ld ix, _RAM_D831_
	ld a, (ix+1)
	or a
	jr z, ++
	dec (ix+3)
	jr nz, ++
	add a, (ix+0)
	ld (ix+0), a
	or a
	jr z, +
	cp $0E
	jr z, +
	ld a, (ix+2)
	ld (ix+3), a
	jp ++

+:
	xor a
	ld (ix+1), a
++:
	ld ix, _RAM_D741_
	call +
	ld ix, _RAM_D771_
	call +
	ld ix, _RAM_D7A1_
	call +
	ld ix, _RAM_D7D1_
	call +
	pop ix
	exx
	pop hl
	pop de
	pop bc
	exx
	pop hl
	pop de
	pop bc
_LABEL_156A5_:
	ret

+:
	ld a, (ix+7)
	or a
	jp z, _LABEL_15892_
	dec a
	jp z, _LABEL_15892_
	ld (ix+7), a
_LABEL_156B4_:
	ld a, (ix+10)
	or a
	jp z, _LABEL_15A47_
	bit 5, a
	jp nz, +
	bit 4, a
	jp nz, _LABEL_15A83_
	bit 3, a
	jr nz, _LABEL_15708_
	bit 2, a
	jp nz, _LABEL_15812_
	bit 1, a
	jp nz, _LABEL_15789_
	jp _LABEL_15743_

+:
	ld l, (ix+11)
	ld h, (ix+12)
-:
	ld a, (hl)
	cp $82
	jr nz, +
	inc hl
	ld e, (hl)
	inc hl
	ld d, (hl)
	ex de, hl
	jr -

+:
	inc hl
	ld (ix+11), l
	ld (ix+12), h
	ld e, a
	ld d, $00
	bit 7, e
	jr z, +
	ld d, $FF
+:
	ld l, (ix+23)
	ld h, (ix+24)
	add hl, de
	ld (ix+23), l
	ld (ix+24), h
	jp _LABEL_15A47_

_LABEL_15708_:
	ld l, (ix+11)
	ld h, (ix+12)
	ld a, l
	or h
	jp z, _LABEL_15A47_
-:
	ld a, (hl)
	inc hl
	cp $82
	jr z, ++
	cp $84
	jr z, +
	ld (ix+11), l
	ld (ix+12), h
	ld (ix+26), a
	or a
	jp z, _LABEL_15A47_
	add a, $40
	ld (ix+26), a
	jp _LABEL_15A47_

+:
	xor a
	ld (ix+11), a
	ld (ix+12), a
	jp _LABEL_15A47_

++:
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	jp -

_LABEL_15743_:
	ld l, (ix+11)
	ld h, (ix+12)
	ld a, l
	or h
	jp z, _LABEL_15A47_
-:
	ld a, (hl)
	inc hl
	cp $82
	jr z, ++
	cp $84
	jr z, +
	ld (ix+11), l
	ld (ix+12), h
	add a, (ix+6)
	ld (ix+6), a
	ld l, a
	ld h, $00
	add hl, hl
	ld de, _DATA_147C6_
	add hl, de
	ld a, (hl)
	inc hl
	ld (ix+23), a
	ld a, (hl)
	ld (ix+24), a
	jp _LABEL_15A47_

+:
	xor a
	ld (ix+11), a
	ld (ix+12), a
	jp _LABEL_15A47_

++:
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	jp -

_LABEL_15789_:
	xor $01
	ld (ix+10), a
	bit 0, a
	jr nz, +
	ld l, (ix+13)
	ld h, (ix+14)
	ld (ix+23), l
	ld (ix+24), h
	jp ++

+:
	ld l, (ix+15)
	ld h, (ix+16)
	ld (ix+23), l
	ld (ix+24), h
	jp _LABEL_15A47_

++:
	ld e, (ix+11)
	ld d, (ix+12)
	ld l, (ix+13)
	ld h, (ix+14)
	add hl, de
	ld a, h
	cp $04
	jr nc, +
	push de
	exx
	pop de
	ld l, (ix+15)
	ld h, (ix+16)
	or a
	sbc hl, de
	ld a, h
	cp $04
	exx
	jr nc, +
	ld (ix+13), l
	ld (ix+14), h
	exx
	ld (ix+15), l
	ld (ix+16), h
	exx
	jp _LABEL_15A47_

+:
	push hl
	ld hl, $0000
	xor a
	sbc hl, de
	ex de, hl
	pop hl
	add hl, de
	add hl, de
	ld (ix+13), l
	ld (ix+14), h
	ld (ix+11), e
	ld (ix+12), d
	push de
	exx
	pop de
	ld l, (ix+15)
	ld h, (ix+16)
	or a
	sbc hl, de
	ld (ix+15), l
	ld (ix+16), h
	exx
	jp _LABEL_15A47_

_LABEL_15812_:
	ld l, (ix+11)
	ld h, (ix+12)
	ld a, l
	or h
	jp z, _LABEL_15A47_
_LABEL_1581D_:
	ld a, (hl)
	inc hl
	cp $82
	jr z, _LABEL_1588B_
	cp $84
	jr z, _LABEL_15881_
	ld (ix+11), l
	ld (ix+12), h
	bit 7, a
	jr nz, +
	or a
	jp z, _LABEL_15A47_
	ld b, a
	ld hl, _DATA_14898_
	ld e, (ix+6)
	ld d, $00
	add hl, de
	ld e, (hl)
	ld d, $00
	ld l, d
	ld h, d
-:
	add hl, de
	djnz -
	ex de, hl
	ld l, (ix+23)
	ld h, (ix+24)
	add hl, de
	ld (ix+23), l
	ld (ix+24), h
	jp _LABEL_15A47_

+:
	neg
	ld b, a
	ld hl, _DATA_14898_
	ld e, (ix+6)
	ld d, $00
	add hl, de
	ld a, (hl)
	neg
	ld e, a
	ld d, $FF
	ld hl, $0000
-:
	add hl, de
	djnz -
	ex de, hl
	ld l, (ix+23)
	ld h, (ix+24)
	add hl, de
	ld (ix+23), l
	ld (ix+24), h
	jp _LABEL_15A47_

_LABEL_15881_:
	xor a
	ld (ix+11), a
	ld (ix+12), a
	jp _LABEL_15A47_

_LABEL_1588B_:
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	jp _LABEL_1581D_

_LABEL_15892_:
	ld l, (ix+1)
	ld h, (ix+2)
	ld a, l
	or h
	jp z, _LABEL_15A78_
_LABEL_1589D_:
	ld a, (hl)
	inc hl
	bit 7, a
	jp z, +
	cp $C0
	jp nc, +
	cp $88
	jp z, _LABEL_15A0F_
	cp $86
	jp z, _LABEL_159D6_
	cp $87
	jp z, _LABEL_159EF_
	cp $81
	jp z, _LABEL_159A6_
	cp $83
	jp z, _LABEL_159C1_
	cp $82
	jp z, _LABEL_1596F_
	cp $85
	jp z, _LABEL_15980_
	cp $84
	jp z, _LABEL_15976_
	cp $89
	jp z, _LABEL_15A28_
	cp $80
	jp z, _LABEL_15A37_
	cp $8A
	jp z, _LABEL_15A3F_
+:
	bit 3, (ix+10)
	jr nz, _LABEL_1593C_
	add a, (ix+29)
	ld (ix+6), a
	ld c, (hl)
	inc hl
	ld (ix+1), l
	ld (ix+2), h
	ld l, a
	ld h, $00
	add hl, hl
	ld de, _DATA_147C6_
	add hl, de
	ld a, (hl)
	inc hl
	ld (ix+13), a
	ld (ix+15), a
	ld (ix+23), a
	ld a, (hl)
	ld (ix+14), a
	ld (ix+16), a
	ld (ix+24), a
	xor a
	ld b, (ix+5)
-:
	add a, c
	djnz -
	ld (ix+7), a
	ld l, (ix+8)
	ld h, (ix+9)
	ld a, (hl)
	inc hl
	ld (ix+10), a
	ld a, (hl)
	inc hl
	ld (ix+11), a
	ld a, (hl)
	inc hl
	ld (ix+12), a
	ld a, (hl)
	inc hl
	ld (ix+21), a
	ld a, (hl)
	ld (ix+22), a
	jp _LABEL_156B4_

_LABEL_1593C_:
	ld c, (hl)
	inc hl
	ld (ix+1), l
	ld (ix+2), h
	xor a
	ld b, (ix+5)
-:
	add a, c
	djnz -
	ld (ix+7), a
	ld l, (ix+8)
	ld h, (ix+9)
	ld a, (hl)
	inc hl
	ld (ix+10), a
	ld a, (hl)
	inc hl
	ld (ix+11), a
	ld a, (hl)
	inc hl
	ld (ix+12), a
	ld a, (hl)
	inc hl
	ld (ix+21), a
	ld a, (hl)
	ld (ix+22), a
	jp _LABEL_156B4_

_LABEL_1596F_:
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	jp _LABEL_1589D_

_LABEL_15976_:
	xor a
	ld (ix+1), a
	ld (ix+2), a
	jp _LABEL_15AEC_

_LABEL_15980_:
	ld a, (hl)
	inc hl
	push hl
	ld l, a
	cp $FF
	jr nz, +
	ld a, r
	and $1F
	ld l, a
	sub $15
	jr c, +
	ld l, a
+:
	ld h, $00
	add hl, hl
	ld de, _DATA_14000_ + 2
	add hl, de
	ld a, (hl)
	inc hl
	ld (ix+8), a
	ld a, (hl)
	ld (ix+9), a
	pop hl
	jp _LABEL_1589D_

_LABEL_159A6_:
	ld c, (hl)
	inc hl
	ld b, (hl)
	inc hl
	ld e, (ix+3)
	ld d, (ix+4)
	ex de, hl
	dec hl
	ld (hl), d
	dec hl
	ld (hl), e
	ex de, hl
	ld (ix+3), e
	ld (ix+4), d
	ld l, c
	ld h, b
	jp _LABEL_1589D_

_LABEL_159C1_:
	ld l, (ix+3)
	ld h, (ix+4)
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl
	ld (ix+3), l
	ld (ix+4), h
	ld l, e
	ld h, d
	jp _LABEL_1589D_

_LABEL_159D6_:
	ld e, (ix+3)
	ld d, (ix+4)
	ld a, (hl)
	inc hl
	ex de, hl
	dec hl
	ld (hl), d
	dec hl
	ld (hl), e
	dec hl
	ld (hl), a
	ex de, hl
	ld (ix+3), e
	ld (ix+4), d
	jp _LABEL_1589D_

_LABEL_159EF_:
	ld e, (ix+3)
	ld d, (ix+4)
	ld a, (de)
	dec a
	jr z, +
	ld (de), a
	ex de, hl
	inc hl
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	jp _LABEL_1589D_

+:
	inc de
	inc de
	inc de
	ld (ix+3), e
	ld (ix+4), d
	jp _LABEL_1589D_

_LABEL_15A0F_:
	ld c, (hl)
	inc hl
	ld (ix+1), l
	ld (ix+2), h
	xor a
	ld b, (ix+5)
-:
	add a, c
	djnz -
	ld (ix+7), a
	ld (ix+10), $10
	jp _LABEL_15A83_

_LABEL_15A28_:
	ld de, _RAM_D831_
	ldi
	ldi
	ldi
	ld a, $01
	ld (de), a
	jp _LABEL_1589D_

_LABEL_15A37_:
	ld a, (hl)
	inc hl
	ld (ix+5), a
	jp _LABEL_1589D_

_LABEL_15A3F_:
	ld a, (hl)
	inc hl
	ld (ix+29), a
	jp _LABEL_1589D_

_LABEL_15A47_:
	ld l, (ix+21)
	ld h, (ix+22)
	ld a, l
	or h
	jr z, _LABEL_15A83_
-:
	ld a, (hl)
	inc hl
	cp $82
	jr z, ++
	cp $84
	jr z, +
	ld (ix+21), l
	ld (ix+22), h
	ld (ix+25), a
	jp _LABEL_15A83_

+:
	xor a
	ld (ix+21), a
	ld (ix+22), a
	jp _LABEL_15A83_

++:
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	jp -

_LABEL_15A78_:
	ld a, (ix+0)
	or a
	jp z, _LABEL_15ADE_
	dec (ix+0)
	ret

_LABEL_15A83_:
	ld a, (ix+0)
	or a
	jr z, +
	dec (ix+0)
	ret

+:
	bit 4, (ix+10)
	jr z, +
	ld a, (ix+28)
	out (Port_PSG), a
	ret

+:
	bit 3, (ix+10)
	jr nz, +
	ld a, (ix+23)
	ld l, a
	ld h, (ix+24)
	and $0F
	or (ix+26)
	out (Port_PSG), a
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	ld a, h
	and $3F
	out (Port_PSG), a
	jp ++

+:
	ld a, (ix+26)
	or a
	jr z, ++
	out (Port_PSG), a
++:
	ld a, (_RAM_D831_)
	or a
	jr z, _LABEL_15ADE_
	cp $10
	jr z, +
	ld b, a
	ld c, (ix+25)
	xor a
-:
	add a, c
	djnz -
	srl a
	srl a
	srl a
	srl a
	jp ++

_LABEL_15ADE_:
	xor a
	jp ++

+:
	ld a, (ix+25)
++:
	xor $0F
	or (ix+27)
	out (Port_PSG), a
_LABEL_15AEC_:
	ret

_LABEL_15AED_:
	dec a
	ld l, a
	ld h, $00
	add hl, hl
	ld de, _DATA_148F0_
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld ix, _RAM_D741_
	ld (ix+0), $00
	ld a, (hl)
	inc hl
	ld (ix+1), a
	ld a, (hl)
	inc hl
	ld (ix+2), a
	ld de, _RAM_D771_
	ld (ix+3), e
	ld (ix+4), d
	ld a, (hl)
	inc hl
	ld (ix+5), a
	ld a, (hl)
	inc hl
	ld (ix+29), a
	ld a, $80
	ld (ix+26), a
	ld a, $90
	ld (ix+27), a
	ld a, $9F
	ld (ix+28), a
	exx
	ld hl, _RAM_D747_
	ld de, _RAM_D747_ + 1
	ld bc, $0012
	ld (hl), $00
	ldir
	exx
	ld ix, _RAM_D771_
	ld (ix+0), $00
	ld a, (hl)
	inc hl
	ld (ix+1), a
	ld a, (hl)
	inc hl
	ld (ix+2), a
	ld de, $D7A1
	ld (ix+3), e
	ld (ix+4), d
	ld a, (hl)
	inc hl
	ld (ix+5), a
	ld a, (hl)
	inc hl
	ld (ix+29), a
	ld a, $A0
	ld (ix+26), a
	ld a, $B0
	ld (ix+27), a
	ld a, $BF
	ld (ix+28), a
	exx
	ld hl, _RAM_D777_
	ld de, _RAM_D777_ + 1
	ld bc, $0012
	ld (hl), $00
	ldir
	exx
	ld ix, _RAM_D7A1_
	ld (ix+0), $00
	ld a, (hl)
	inc hl
	ld (ix+1), a
	ld a, (hl)
	inc hl
	ld (ix+2), a
	ld de, $D7D1
	ld (ix+3), e
	ld (ix+4), d
	ld a, (hl)
	inc hl
	ld (ix+5), a
	ld a, (hl)
	inc hl
	ld (ix+29), a
	ld a, $C0
	ld (ix+26), a
	ld a, $D0
	ld (ix+27), a
	ld a, $DF
	ld (ix+28), a
	exx
	ld hl, _RAM_D7A7_
	ld de, _RAM_D7A7_ + 1
	ld bc, $0012
	ld (hl), $00
	ldir
	exx
	ld ix, _RAM_D7D1_
	ld (ix+0), $00
	ld a, (hl)
	inc hl
	ld (ix+1), a
	ld a, (hl)
	inc hl
	ld (ix+2), a
	ld de, $D801
	ld (ix+3), e
	ld (ix+4), d
	ld a, (hl)
	inc hl
	ld (ix+5), a
	ld (ix+29), $00
	ld a, $E0
	ld (ix+26), a
	ld a, $F0
	ld (ix+27), a
	ld a, $FF
	ld (ix+28), a
	exx
	ld hl, _RAM_D7D7_
	ld de, _RAM_D7D7_ + 1
	ld bc, $0012
	ld (hl), $00
	ldir
	exx
	ld de, _RAM_D831_
	ldi
	ldi
	ldi
	ld a, $01
	ld (de), a
	ret

_LABEL_15C12_:
	ld hl, (_RAM_D801_)
	ld a, l
	or h
	ret z
	ld ix, _RAM_D801_
	ld a, (ix+6)
	or a
	jp z, _LABEL_15C2D_
	dec a
	jp z, _LABEL_15C2D_
	ld (ix+6), a
	jp _LABEL_15DD4_

_LABEL_15C2D_:
	ld a, (hl)
	inc hl
	bit 7, a
	jp z, _LABEL_15C7F_
	cp $C0
	jp nc, _LABEL_15C7F_
	cp $8A
	jp z, _LABEL_15D45_
	cp $8B
	jp z, _LABEL_15D4D_
	cp $8C
	jp z, _LABEL_15D6B_
	cp $86
	jp z, _LABEL_15D0C_
	cp $87
	jp z, _LABEL_15D25_
	cp $81
	jp z, _LABEL_15CDC_
	cp $83
	jp z, _LABEL_15CF7_
	cp $8D
	jp z, _LABEL_15D88_
	cp $8E
	jp z, _LABEL_15D9E_
	cp $8F
	jp z, _LABEL_15DB3_
	cp $82
	jr z, _LABEL_15CBF_
	cp $84
	jr z, _LABEL_15CC6_
	cp $80
	jp z, _LABEL_15D80_
	add a, $40
	out (Port_PSG), a
	jp _LABEL_15C2D_

_LABEL_15C7F_:
	ld (ix+5), a
	ld c, (hl)
	inc hl
	ld (ix+0), l
	ld (ix+1), h
	ld l, a
	ld h, $00
	add hl, hl
	ld de, _DATA_147C6_
	add hl, de
	ld a, (hl)
	inc hl
	ld (ix+9), a
	ld a, (hl)
	ld (ix+10), a
_LABEL_15C9B_:
	xor a
	ld b, (ix+4)
-:
	add a, c
	djnz -
	ld (ix+6), a
	ld a, (ix+9)
	ld l, a
	ld h, (ix+10)
	and $0F
	or (ix+12)
	out (Port_PSG), a
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	ld a, h
	and $3F
	out (Port_PSG), a
	jp _LABEL_15DD4_

_LABEL_15CBF_:
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	jp _LABEL_15C2D_

_LABEL_15CC6_:
	xor a
	ld (ix+0), a
	ld (ix+1), a
	ld (_RAM_D7A1_), a
	ld (_RAM_D7D1_), a
	ld a, $DF
	out (Port_PSG), a
	ld a, $FF
	out (Port_PSG), a
	ret

_LABEL_15CDC_:
	ld c, (hl)
	inc hl
	ld b, (hl)
	inc hl
	ld e, (ix+2)
	ld d, (ix+3)
	ex de, hl
	dec hl
	ld (hl), d
	dec hl
	ld (hl), e
	ex de, hl
	ld (ix+2), e
	ld (ix+3), d
	ld l, c
	ld h, b
	jp _LABEL_15C2D_

_LABEL_15CF7_:
	ld l, (ix+2)
	ld h, (ix+3)
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl
	ld (ix+2), l
	ld (ix+3), h
	ld l, e
	ld h, d
	jp _LABEL_15C2D_

_LABEL_15D0C_:
	ld e, (ix+2)
	ld d, (ix+3)
	ld a, (hl)
	inc hl
	ex de, hl
	dec hl
	ld (hl), d
	dec hl
	ld (hl), e
	dec hl
	ld (hl), a
	ex de, hl
	ld (ix+2), e
	ld (ix+3), d
	jp _LABEL_15C2D_

_LABEL_15D25_:
	ld e, (ix+2)
	ld d, (ix+3)
	ld a, (de)
	dec a
	jr z, +
	ld (de), a
	ex de, hl
	inc hl
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	jp _LABEL_15C2D_

+:
	inc de
	inc de
	inc de
	ld (ix+2), e
	ld (ix+3), d
	jp _LABEL_15C2D_

_LABEL_15D45_:
	ld a, (hl)
	inc hl
	add a, (ix+5)
	jp _LABEL_15C7F_

_LABEL_15D4D_:
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl
	push hl
	ld l, (ix+9)
	ld h, (ix+10)
	add hl, de
	ld (ix+9), l
	ld (ix+10), h
	pop hl
	ld c, (hl)
	inc hl
	ld (ix+0), l
	ld (ix+1), h
	jp _LABEL_15C9B_

_LABEL_15D6B_:
	ld c, (hl)
	inc hl
	ld (ix+0), l
	ld (ix+1), h
	xor a
	ld b, (ix+4)
-:
	add a, c
	djnz -
	ld (ix+6), a
	jp _LABEL_15DD4_

_LABEL_15D80_:
	ld a, (hl)
	inc hl
	ld (ix+4), a
	jp _LABEL_15C2D_

_LABEL_15D88_:
	ld a, (hl)
	inc hl
	ld (_RAM_D7A1_), a
	ld a, $DF
	out (Port_PSG), a
	ld a, $C0
	ld (ix+12), a
	ld a, $D0
	ld (ix+13), a
	jp _LABEL_15C2D_

_LABEL_15D9E_:
	ld a, (hl)
	inc hl
	ld (_RAM_D7D1_), a
	ld a, $FF
	out (Port_PSG), a
	xor a
	ld (ix+12), a
	ld a, $F0
	ld (ix+13), a
	jp _LABEL_15C2D_

_LABEL_15DB3_:
	ld a, (hl)
	inc hl
	ld (_RAM_D7A1_), a
	ld (_RAM_D7D1_), a
	ld a, $DF
	out (Port_PSG), a
	ld a, $FF
	out (Port_PSG), a
	ld a, $C0
	ld (ix+12), a
	ld a, $F0
	ld (ix+13), a
	ld a, $E7
	out (Port_PSG), a
	jp _LABEL_15C2D_

_LABEL_15DD4_:
	ld l, (ix+7)
	ld h, (ix+8)
	ld a, l
	or h
	jr z, +++
-:
	ld a, (hl)
	inc hl
	cp $82
	jr z, ++
	cp $84
	jr z, +
	ld (ix+7), l
	ld (ix+8), h
	ld (ix+11), a
	jp +++

+:
	xor a
	ld (ix+7), a
	ld (ix+8), a
	jp +++

++:
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	jp -

+++:
	ld a, (ix+11)
	xor $0F
	or (ix+13)
	out (Port_PSG), a
	ret

_LABEL_15E10_:
	ld e, a
	ld hl, (_RAM_D801_)
	ld a, l
	or h
	ret nz
	ld a, e
	dec a
	ld l, a
	ld h, $00
	add hl, hl
	ld de, _DATA_147C6_
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	exx
	ld hl, _RAM_D801_
	ld de, _RAM_D801_ + 1
	ld bc, $000D
	ld (hl), $00
	ldir
	exx
	ld ix, _RAM_D801_
	ld a, (hl)
	inc hl
	ld (ix+0), a
	ld a, (hl)
	inc hl
	ld (ix+1), a
	ld a, (hl)
	inc hl
	ld (ix+7), a
	ld a, (hl)
	inc hl
	ld (ix+8), a
	ld a, (hl)
	ld (ix+4), a
	ld hl, _RAM_D831_
	ld (_RAM_D803_), hl
	ret

; Data from 15E57 to 16F00 (4266 bytes)
.dsb 4266, $00

; 3rd entry of Pointer Table from 17D (indexed by unknown)
; Data from 16F01 to 16FBF (191 bytes)
_DATA_16F01_:
.dsb 191, $00

; 5th entry of Pointer Table from 17D (indexed by unknown)
; Data from 16FC0 to 1740E (1103 bytes)
_DATA_16FC0_:
.dsb 1103, $00

; 5th entry of Pointer Table from 153 (indexed by unknown)
; Data from 1740F to 17ED2 (2756 bytes)
_DATA_1740F_:
.dsb 2756, $00

; 5th entry of Pointer Table from 168 (indexed by unknown)
; Data from 17ED3 to 17FD2 (256 bytes)
_DATA_17ED3_:
.dsb 256, $00

; 6th entry of Pointer Table from 153 (indexed by unknown)
; Data from 17FD3 to 17FFF (45 bytes)
_DATA_17FD3_:
.dsb 44, $00
.db $AA

.BANK 6
.ORG $0000

; Data from 18000 to 1BFFF (16384 bytes)
.incbin "Master System Evolution menu_DATA_18000_.inc"

