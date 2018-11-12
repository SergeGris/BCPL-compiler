	.text
//	SECTION: MASTER
	jmp L2
//	START
L1:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	leal 12(%ebp),%ecx
	calll *64(%edi)
	movl %eax,12(%ebp)
	leal 16(%ebp),%ecx
	calll *68(%edi)
	movl %eax,16(%ebp)
	movl $L999,%eax
	shr $2,%eax
	movl %eax,28(%ebp)
	leal 20(%ebp),%ecx
	calll *164(%edi)
	movl %eax,776(%edi)
	movl %eax,28(%ebp)
	leal 20(%ebp),%ecx
	calll *48(%edi)
	movl $L998,%eax
	shr $2,%eax
	movl %eax,28(%ebp)
	leal 4(%edi),%eax
	shr $2,%eax
	movl %eax,32(%ebp)
	leal 20(%ebp),%ecx
	calll *304(%edi)
	leal 28(%ebp),%eax
	shr $2,%eax
	movl %eax,20(%ebp)
	movl $55000,24(%ebp)
	movl 20(%ebp),%eax
	movl %eax,512(%edi)
	movl $2,1128(%edi)
	movl $0,508(%edi)
	movl $0,440(%edi)
	movl $1,532(%edi)
	movl $0,444(%edi)
	movl $0,112(%ebp)
	jmp L3
L4:
	movl $0,116(%ebp)
	movl 112(%ebp),%eax
	addl 20(%ebp),%eax
	mov %eax,%ecx
	movl 116(%ebp),%eax
	mov %eax,(,%ecx,4)
	incl 112(%ebp)
L3:
	cmpl $20,112(%ebp)
	jle L4
	movl $L997,%eax
	shr $2,%eax
	movl %eax,120(%ebp)
	leal 112(%ebp),%ecx
	calll *168(%edi)
	movl %eax,772(%edi)
	movl %eax,120(%ebp)
	leal 112(%ebp),%ecx
	calll *788(%edi)
	orl %eax,%eax
	jnz L5
	movl $0,112(%ebp)
	movl $0,116(%ebp)
	movl 772(%edi),%eax
	movl %eax,128(%ebp)
	leal 120(%ebp),%ecx
	calll *44(%edi)
	movl $L996,%eax
	shr $2,%eax
	movl %eax,128(%ebp)
	leal 120(%ebp),%ecx
	calll *240(%edi)
L8:
	leal 120(%ebp),%ecx
	calll *52(%edi)
	movl %eax,112(%ebp)
L6:
	cmpl $10,112(%ebp)
	je L10
	cmpl $-1,112(%ebp)
	jne L9
L10:
	jmp L11
L9:
	movl 112(%ebp),%eax
	movl %eax,128(%ebp)
	leal 120(%ebp),%ecx
	calll *56(%edi)
	cmpl $80,112(%ebp)
	jne L12
	movl $1,116(%ebp)
L12:
	cmpl $84,112(%ebp)
	jne L13
	movl $2,116(%ebp)
L13:
	cmpl $67,112(%ebp)
	jne L14
	movl $3,116(%ebp)
L14:
	cmpl $77,112(%ebp)
	jne L15
	movl $4,116(%ebp)
L15:
	cmpl $78,112(%ebp)
	jne L16
	movl $5,116(%ebp)
L16:
	cmpl $83,112(%ebp)
	jne L17
	movl $-1,440(%edi)
L17:
	cmpl $69,112(%ebp)
	jne L18
	movl $-1,508(%edi)
L18:
	cmpl $76,112(%ebp)
	jne L19
	leal 120(%ebp),%ecx
	calll *280(%edi)
	movl %eax,24(%ebp)
	movl %eax,128(%ebp)
	leal 120(%ebp),%ecx
	calll *248(%edi)
L19:
	cmpl $51,112(%ebp)
	jne L20
	movl $3,1128(%edi)
L20:
	movl $-1,120(%ebp)
	movl 116(%ebp),%eax
	addl 512(%edi),%eax
	mov %eax,%ecx
	movl 120(%ebp),%eax
	mov %eax,(,%ecx,4)
	jmp L8
L11:
	leal 120(%ebp),%ecx
	calll *252(%edi)
	leal 120(%ebp),%ecx
	calll *184(%edi)
L5:
	movl $3,%eax
	addl 512(%edi),%eax
	mov (,%eax,4),%eax
	notl %eax
	movl %eax,456(%edi)
	movl $20,768(%edi)
	movl $0,764(%edi)
	movl 12(%ebp),%eax
	movl %eax,772(%edi)
	movl %eax,120(%ebp)
	leal 112(%ebp),%ecx
	calll *44(%edi)
	movl 16(%ebp),%eax
	movl %eax,780(%edi)
	movl %eax,120(%ebp)
	leal 112(%ebp),%ecx
	calll *788(%edi)
	orl %eax,%eax
	jz L21
	movl 776(%edi),%eax
	movl %eax,780(%edi)
L21:
	jmp L24
//	COMP
L22:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	leal 20(%ebp),%eax
	shr $2,%eax
	movl %eax,16(%ebp)
	movl %eax,400(%edi)
L25:
	movl 12(%ebp),%eax
	addl 8(%ebp),%eax
	movl %eax,672(%edi)
	movl 8(%ebp),%eax
	movl %eax,676(%edi)
	movl 440(%edi),%eax
	orl %eax,%eax
	jz L26
	movl $L995,%eax
	shr $2,%eax
	movl %eax,284(%ebp)
	leal 276(%ebp),%ecx
	calll *164(%edi)
	movl %eax,784(%edi)
	movl %eax,284(%ebp)
	leal 276(%ebp),%ecx
	calll *788(%edi)
	orl %eax,%eax
	jz L28
	movl 776(%edi),%eax
	movl %eax,784(%edi)
L28:
	jmp L27
L26:
	movl 776(%edi),%eax
	movl %eax,784(%edi)
L27:
	leal 276(%ebp),%ecx
	calll *600(%edi)
	movl %eax,276(%ebp)
	cmpl $0,276(%ebp)
	jne L29
	jmp L30
L29:
	movl $L994,%eax
	shr $2,%eax
	movl %eax,288(%ebp)
	movl 676(%edi),%eax
	addl 12(%ebp),%eax
	subl 672(%edi),%eax
	movl %eax,292(%ebp)
	leal 280(%ebp),%ecx
	calll *304(%edi)
	movl $2,%eax
	addl 512(%edi),%eax
	mov (,%eax,4),%eax
	orl %eax,%eax
	jz L31
	movl $L993,%eax
	shr $2,%eax
	movl %eax,288(%ebp)
	leal 280(%ebp),%ecx
	calll *240(%edi)
	movl 276(%ebp),%eax
	movl %eax,288(%ebp)
	movl $0,292(%ebp)
	movl $20,296(%ebp)
	leal 280(%ebp),%ecx
	calll *608(%edi)
	leal 280(%ebp),%ecx
	calll *252(%edi)
L31:
	cmpl $0,764(%edi)
	je L32
	movl $8,288(%ebp)
	leal 280(%ebp),%ecx
	calll *120(%edi)
L32:
	movl $3,%eax
	addl 512(%edi),%eax
	mov (,%eax,4),%eax
	orl %eax,%eax
	jnz L33
	movl 780(%edi),%eax
	movl %eax,288(%ebp)
	leal 280(%ebp),%ecx
	calll *48(%edi)
	movl 276(%ebp),%eax
	movl %eax,288(%ebp)
	leal 280(%ebp),%ecx
	calll *980(%edi)
	movl 776(%edi),%eax
	movl %eax,288(%ebp)
	leal 280(%ebp),%ecx
	calll *48(%edi)
L33:
	jmp L25
L30:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L24:
	movl L23,%eax
	movl %eax,120(%ebp)
	movl 24(%ebp),%eax
	movl %eax,124(%ebp)
	leal 112(%ebp),%ecx
	calll *160(%edi)
	leal 112(%ebp),%ecx
	calll *184(%edi)
	movl $L992,%eax
	shr $2,%eax
	movl %eax,120(%ebp)
	leal 112(%ebp),%ecx
	calll *240(%edi)
	cmpl $0,764(%edi)
	je L34
	movl $8,120(%ebp)
	leal 112(%ebp),%ecx
	calll *120(%edi)
L34:
	jmp finish
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L2:
	ret
	.data
	.align 4
L999:
	.byte 11
	.byte 47
	.byte 100
	.byte 101
	.byte 118
	.byte 47
	.byte 115
	.byte 116
	.byte 100
	.byte 101
	.byte 114
	.byte 114
	.align 4
L998:
	.byte 9
	.byte 10
	.byte 66
	.byte 67
	.byte 80
	.byte 76
	.byte 32
	.byte 37
	.byte 78
	.byte 10
	.align 4
L997:
	.byte 3
	.byte 79
	.byte 80
	.byte 84
	.align 4
L7:
	.long L6
	.align 4
L996:
	.byte 9
	.byte 79
	.byte 80
	.byte 84
	.byte 73
	.byte 79
	.byte 78
	.byte 83
	.byte 32
	.byte 32
	.align 4
L23:
	.long L22
	.align 4
L995:
	.byte 4
	.byte 76
	.byte 73
	.byte 83
	.byte 84
	.align 4
L994:
	.byte 14
	.byte 10
	.byte 84
	.byte 82
	.byte 69
	.byte 69
	.byte 32
	.byte 83
	.byte 73
	.byte 90
	.byte 69
	.byte 32
	.byte 37
	.byte 78
	.byte 10
	.align 4
L993:
	.byte 8
	.byte 65
	.byte 69
	.byte 32
	.byte 84
	.byte 82
	.byte 69
	.byte 69
	.byte 10
	.align 4
L992:
	.byte 18
	.byte 10
	.byte 80
	.byte 72
	.byte 65
	.byte 83
	.byte 69
	.byte 32
	.byte 49
	.byte 32
	.byte 67
	.byte 79
	.byte 77
	.byte 80
	.byte 76
	.byte 69
	.byte 84
	.byte 69
	.byte 10
	.global G1
	.equ G1,L1
	.text
//	SECTION: LEX1
	jmp L1002
//	NEXTSYMB
L1001:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl $0,488(%edi)
L1003:
	movl 508(%edi),%eax
	orl %eax,%eax
	jz L1004
	movl 468(%edi),%eax
	movl %eax,16(%ebp)
	leal 8(%ebp),%ecx
	calll *56(%edi)
L1004:
	jmp L1005
L1007:
L1008:
	incl 532(%edi)
	movl $-1,488(%edi)
L1009:
L1010:
L1011:
	leal 8(%ebp),%ecx
	calll *504(%edi)
	cmpl $32,468(%edi)
	je L1009
	jmp L1003
L1012:
L1013:
L1014:
L1015:
L1016:
L1017:
L1018:
L1019:
L1020:
L1021:
	movl $1,460(%edi)
	movl $10,16(%ebp)
	leal 8(%ebp),%ecx
	calll *448(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L1022:
L1023:
L1024:
L1025:
L1026:
L1027:
L1028:
L1029:
L1030:
L1031:
L1032:
L1033:
L1034:
L1035:
L1036:
L1037:
L1038:
L1039:
L1040:
L1041:
L1042:
L1043:
L1044:
L1045:
L1046:
L1047:
L1048:
L1049:
L1050:
L1051:
L1052:
L1053:
L1054:
L1055:
L1056:
L1057:
L1058:
L1059:
L1060:
L1061:
L1062:
L1063:
L1064:
L1065:
L1066:
L1067:
L1068:
L1069:
L1070:
L1071:
L1072:
L1073:
	movl 468(%edi),%eax
	movl %eax,16(%ebp)
	leal 8(%ebp),%ecx
	calll *472(%edi)
	leal 8(%ebp),%ecx
	calll *500(%edi)
	movl %eax,460(%edi)
	cmpl $93,460(%edi)
	jne L1074
	leal 8(%ebp),%ecx
	calll *476(%edi)
	jmp L1003
L1074:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L1075:
	leal 8(%ebp),%ecx
	calll *504(%edi)
	cmpl $40,468(%edi)
	je L1076
	cmpl $41,468(%edi)
	je L1076
	movl $91,16(%ebp)
	leal 8(%ebp),%ecx
	calll *604(%edi)
L1076:
	cmpl $40,468(%edi)
	jne L1078
	movl $91,%eax
	jmp L1077
L1078:
	movl $92,%eax
L1077:
	movl %eax,460(%edi)
	movl $36,16(%ebp)
	leal 8(%ebp),%ecx
	calll *472(%edi)
	leal 8(%ebp),%ecx
	calll *500(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L1079:
L1080:
	movl $105,460(%edi)
	jmp L1081
L1082:
L1083:
	movl $106,460(%edi)
	jmp L1081
L1084:
	movl $1,460(%edi)
	leal 8(%ebp),%ecx
	calll *504(%edi)
	movl 468(%edi),%eax
	movl %eax,16(%ebp)
	leal 8(%ebp),%ecx
	calll *368(%edi)
	movl %eax,468(%edi)
	cmpl $48,468(%edi)
	jl L1085
	cmpl $55,468(%edi)
	jg L1085
	movl $8,16(%ebp)
	leal 8(%ebp),%ecx
	calll *448(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L1085:
	cmpl $66,468(%edi)
	jne L1086
	leal 8(%ebp),%ecx
	calll *504(%edi)
	movl $2,16(%ebp)
	leal 8(%ebp),%ecx
	calll *448(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L1086:
	cmpl $79,468(%edi)
	jne L1087
	leal 8(%ebp),%ecx
	calll *504(%edi)
	movl $8,16(%ebp)
	leal 8(%ebp),%ecx
	calll *448(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L1087:
	cmpl $88,468(%edi)
	jne L1088
	leal 8(%ebp),%ecx
	calll *504(%edi)
	movl $16,16(%ebp)
	leal 8(%ebp),%ecx
	calll *448(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L1088:
	movl $33,16(%ebp)
	leal 8(%ebp),%ecx
	calll *604(%edi)
L1089:
	movl $16,460(%edi)
	jmp L1081
L1090:
	movl $14,460(%edi)
	jmp L1081
L1091:
	movl $38,460(%edi)
	jmp L1081
L1092:
	movl $97,460(%edi)
	jmp L1081
L1093:
	movl $7,460(%edi)
	jmp L1081
L1094:
	movl $33,460(%edi)
	jmp L1081
L1095:
	movl $34,460(%edi)
	jmp L1081
L1096:
	movl $20,460(%edi)
	jmp L1081
L1097:
	movl $9,460(%edi)
	jmp L1081
L1098:
	movl $28,460(%edi)
	jmp L1081
L1099:
	movl $11,460(%edi)
	jmp L1081
L1100:
	leal 8(%ebp),%ecx
	calll *504(%edi)
	cmpl $92,468(%edi)
	jne L1101
	movl $33,460(%edi)
	jmp L1081
L1101:
	cmpl $47,468(%edi)
	jne L1102
L1103:
	leal 8(%ebp),%ecx
	calll *504(%edi)
	cmpl $10,468(%edi)
	je L1104
	cmpl $-1,468(%edi)
	jne L1103
L1104:
	jmp L1003
L1102:
	cmpl $42,468(%edi)
	je L1105
	movl $12,460(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L1105:
L1106:
	leal 8(%ebp),%ecx
	calll *504(%edi)
	cmpl $42,468(%edi)
	jne L1107
L1108:
	leal 8(%ebp),%ecx
	calll *504(%edi)
	cmpl $42,468(%edi)
	je L1108
	cmpl $47,468(%edi)
	jne L1109
	jmp L1110
L1109:
L1107:
	cmpl $10,468(%edi)
	jne L1111
	incl 532(%edi)
L1111:
	cmpl $-1,468(%edi)
	jne L1112
	movl $63,16(%ebp)
	leal 8(%ebp),%ecx
	calll *604(%edi)
L1112:
	jmp L1106
L1110:
	leal 8(%ebp),%ecx
	calll *504(%edi)
	jmp L1003
L1113:
	leal 8(%ebp),%ecx
	calll *504(%edi)
	cmpl $61,468(%edi)
	jne L1114
	movl $21,460(%edi)
	jmp L1081
L1114:
	movl $30,460(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L1115:
	leal 8(%ebp),%ecx
	calll *504(%edi)
	cmpl $47,468(%edi)
	jne L1116
	movl $34,460(%edi)
	jmp L1081
L1116:
	cmpl $61,468(%edi)
	jne L1117
	movl $21,460(%edi)
	jmp L1081
L1117:
	movl $30,460(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L1118:
	leal 8(%ebp),%ecx
	calll *504(%edi)
	cmpl $61,468(%edi)
	jne L1119
	movl $24,460(%edi)
	jmp L1081
L1119:
	cmpl $60,468(%edi)
	jne L1120
	movl $31,460(%edi)
	jmp L1081
L1120:
	movl $22,460(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L1121:
	leal 8(%ebp),%ecx
	calll *504(%edi)
	cmpl $61,468(%edi)
	jne L1122
	movl $25,460(%edi)
	jmp L1081
L1122:
	cmpl $62,468(%edi)
	jne L1123
	movl $32,460(%edi)
	jmp L1081
L1123:
	movl $23,460(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L1124:
	leal 8(%ebp),%ecx
	calll *504(%edi)
	cmpl $62,468(%edi)
	jne L1125
	movl $37,460(%edi)
	jmp L1081
L1125:
	movl $15,460(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L1126:
	leal 8(%ebp),%ecx
	calll *504(%edi)
	cmpl $61,468(%edi)
	jne L1127
	movl $50,460(%edi)
	jmp L1081
L1127:
	movl $54,460(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L1128:
	movl $0,436(%edi)
	leal 8(%ebp),%ecx
	calll *504(%edi)
	jmp L1130
L1129:
	cmpl $255,436(%edi)
	jne L1131
	movl $34,16(%ebp)
	leal 8(%ebp),%ecx
	calll *604(%edi)
L1131:
	incl 436(%edi)
	leal 8(%ebp),%ecx
	calll *452(%edi)
	movl %eax,8(%ebp)
	movl 436(%edi),%eax
	addl 432(%edi),%eax
	mov %eax,%ecx
	movl 8(%ebp),%eax
	mov %eax,(,%ecx,4)
L1130:
	cmpl $34,468(%edi)
	jne L1129
	movl 436(%edi),%eax
	movl %eax,8(%ebp)
	movl $0,%eax
	addl 432(%edi),%eax
	mov %eax,%ecx
	movl 8(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 432(%edi),%eax
	movl %eax,16(%ebp)
	movl 424(%edi),%eax
	movl %eax,20(%ebp)
	leal 8(%ebp),%ecx
	calll *264(%edi)
	movl %eax,428(%edi)
	movl $3,460(%edi)
	jmp L1081
L1132:
	leal 8(%ebp),%ecx
	calll *504(%edi)
	leal 8(%ebp),%ecx
	calll *452(%edi)
	movl %eax,404(%edi)
	movl $1,460(%edi)
	cmpl $39,468(%edi)
	je L1133
	movl $34,16(%ebp)
	leal 8(%ebp),%ecx
	calll *604(%edi)
L1133:
	jmp L1081
L1134:
	cmpl $-1,468(%edi)
	je L1135
	movl $32,468(%edi)
	movl $94,16(%ebp)
	leal 8(%ebp),%ecx
	calll *604(%edi)
L1135:
L1136:
	cmpl $0,416(%edi)
	jne L1137
	movl $90,460(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L1137:
	leal 8(%ebp),%ecx
	calll *184(%edi)
	movl 416(%edi),%eax
	subl $3,%eax
	movl %eax,416(%edi)
	addl 412(%edi),%eax
	mov (,%eax,4),%eax
	movl %eax,772(%edi)
	movl %eax,16(%ebp)
	leal 8(%ebp),%ecx
	calll *44(%edi)
	movl 416(%edi),%eax
	incl %eax
	addl 412(%edi),%eax
	mov (,%eax,4),%eax
	movl %eax,532(%edi)
	movl $2,%eax
	addl 416(%edi),%eax
	addl 412(%edi),%eax
	mov (,%eax,4),%eax
	movl %eax,468(%edi)
	jmp L1003
	jmp L1006
L1005:
	movl 468(%edi),%eax
	mov $L1999,%edx
	mov $93,%ecx
1:	cmp (%edx),%eax
	je 3f
	add $8,%edx
	loop 1b
2:	jmp L1134
3:	jmp *4(%edx)
L1006:
	jmp L1003
L1081:
	leal 8(%ebp),%ecx
	calll *504(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L1002:
	ret
	.data
	.align 4
L1999:
	.long 12
	.long L1007
	.long 10
	.long L1008
	.long 9
	.long L1010
	.long 32
	.long L1011
	.long 48
	.long L1012
	.long 49
	.long L1013
	.long 50
	.long L1014
	.long 51
	.long L1015
	.long 52
	.long L1016
	.long 53
	.long L1017
	.long 54
	.long L1018
	.long 55
	.long L1019
	.long 56
	.long L1020
	.long 57
	.long L1021
	.long 97
	.long L1022
	.long 98
	.long L1023
	.long 99
	.long L1024
	.long 100
	.long L1025
	.long 101
	.long L1026
	.long 102
	.long L1027
	.long 103
	.long L1028
	.long 104
	.long L1029
	.long 105
	.long L1030
	.long 106
	.long L1031
	.long 107
	.long L1032
	.long 108
	.long L1033
	.long 109
	.long L1034
	.long 110
	.long L1035
	.long 111
	.long L1036
	.long 112
	.long L1037
	.long 113
	.long L1038
	.long 114
	.long L1039
	.long 115
	.long L1040
	.long 116
	.long L1041
	.long 117
	.long L1042
	.long 118
	.long L1043
	.long 119
	.long L1044
	.long 120
	.long L1045
	.long 121
	.long L1046
	.long 122
	.long L1047
	.long 65
	.long L1048
	.long 66
	.long L1049
	.long 67
	.long L1050
	.long 68
	.long L1051
	.long 69
	.long L1052
	.long 70
	.long L1053
	.long 71
	.long L1054
	.long 72
	.long L1055
	.long 73
	.long L1056
	.long 74
	.long L1057
	.long 75
	.long L1058
	.long 76
	.long L1059
	.long 77
	.long L1060
	.long 78
	.long L1061
	.long 79
	.long L1062
	.long 80
	.long L1063
	.long 81
	.long L1064
	.long 82
	.long L1065
	.long 83
	.long L1066
	.long 84
	.long L1067
	.long 85
	.long L1068
	.long 86
	.long L1069
	.long 87
	.long L1070
	.long 88
	.long L1071
	.long 89
	.long L1072
	.long 90
	.long L1073
	.long 36
	.long L1075
	.long 91
	.long L1079
	.long 40
	.long L1080
	.long 93
	.long L1082
	.long 41
	.long L1083
	.long 35
	.long L1084
	.long 63
	.long L1089
	.long 43
	.long L1090
	.long 44
	.long L1091
	.long 59
	.long L1092
	.long 64
	.long L1093
	.long 38
	.long L1094
	.long 124
	.long L1095
	.long 61
	.long L1096
	.long 33
	.long L1097
	.long 37
	.long L1098
	.long 42
	.long L1099
	.long 47
	.long L1100
	.long 126
	.long L1113
	.long 92
	.long L1115
	.long 60
	.long L1118
	.long 62
	.long L1121
	.long 45
	.long L1124
	.long 58
	.long L1126
	.long 34
	.long L1128
	.long 39
	.long L1132
	.long 46
	.long L1136
	.global G120
	.equ G120,L1001
	.text
//	SECTION: LEX2
	jmp L2005
//	LOOKUPWORD
L2001:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl $0,%eax
	addl 424(%edi),%eax
	mov (,%eax,4),%eax
	movl %eax,8(%ebp)
	movl 428(%edi),%eax
	addl 424(%edi),%eax
	mov (,%eax,4),%eax
	mov %eax,%ecx
	movl 8(%ebp),%eax
	addl %ecx,%eax
	shrl $1,%eax
	movl $100,%ecx
	cltd
	idivl %ecx
	mov %edx,%eax
	movl %eax,8(%ebp)
	movl $0,12(%ebp)
	movl 8(%ebp),%eax
	addl 592(%edi),%eax
	mov (,%eax,4),%eax
	movl %eax,464(%edi)
	jmp L2008
L2007:
	movl $2,%eax
	addl 12(%ebp),%eax
	addl 464(%edi),%eax
	mov (,%eax,4),%eax
	movl %eax,16(%ebp)
	movl 12(%ebp),%eax
	addl 424(%edi),%eax
	mov (,%eax,4),%eax
	mov %eax,%ecx
	cmpl %ecx,16(%ebp)
	jne L2009
	incl 12(%ebp)
	jmp L2010
L2009:
	movl 464(%edi),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,464(%edi)
	movl $0,12(%ebp)
L2010:
L2008:
	cmpl $0,464(%edi)
	je L2011
	movl 12(%ebp),%eax
	cmpl 428(%edi),%eax
	jle L2007
L2011:
	cmpl $0,464(%edi)
	jne L2012
	movl $2,%eax
	addl 428(%edi),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *668(%edi)
	movl %eax,464(%edi)
	movl $2,16(%ebp)
	movl $0,%eax
	addl 464(%edi),%eax
	mov %eax,%ecx
	movl 16(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 8(%ebp),%eax
	addl 592(%edi),%eax
	mov (,%eax,4),%eax
	movl %eax,16(%ebp)
	movl 464(%edi),%eax
	incl %eax
	mov %eax,%ecx
	movl 16(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl $0,16(%ebp)
	movl 428(%edi),%eax
	movl %eax,20(%ebp)
	jmp L2013
L2014:
	movl 16(%ebp),%eax
	addl 424(%edi),%eax
	mov (,%eax,4),%eax
	movl %eax,24(%ebp)
	movl $2,%eax
	addl 16(%ebp),%eax
	addl 464(%edi),%eax
	mov %eax,%ecx
	movl 24(%ebp),%eax
	mov %eax,(,%ecx,4)
	incl 16(%ebp)
L2013:
	movl 16(%ebp),%eax
	cmpl 20(%ebp),%eax
	jle L2014
	movl 464(%edi),%eax
	movl %eax,16(%ebp)
	movl 8(%ebp),%eax
	addl 592(%edi),%eax
	mov %eax,%ecx
	movl 16(%ebp),%eax
	mov %eax,(,%ecx,4)
L2012:
	movl 464(%edi),%eax
	mov (,%eax,4),%eax
L2006:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	DECLSYSWORDS
L2002:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl $L2015,%eax
	shr $2,%eax
	movl %eax,492(%edi)
	movl $L2999,%eax
	shr $2,%eax
	movl %eax,16(%ebp)
	leal 8(%ebp),%ecx
	calll *L2004
	movl $L2998,%eax
	shr $2,%eax
	movl %eax,16(%ebp)
	leal 8(%ebp),%ecx
	calll *L2004
	movl 464(%edi),%eax
	movl %eax,536(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	D
L2003:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl $1,12(%ebp)
	movl $0,16(%ebp)
L2016:
	movl 8(%ebp),%eax
	movl %eax,28(%ebp)
	movl 12(%ebp),%eax
	movl %eax,32(%ebp)
	leal 20(%ebp),%ecx
	calll *340(%edi)
	movl %eax,20(%ebp)
	cmpl $47,20(%ebp)
	jne L2017
	cmpl $0,16(%ebp)
	jne L2019
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L2019:
	movl 16(%ebp),%eax
	movl %eax,24(%ebp)
	movl $0,%eax
	addl 432(%edi),%eax
	mov %eax,%ecx
	movl 24(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 432(%edi),%eax
	movl %eax,32(%ebp)
	movl 424(%edi),%eax
	movl %eax,36(%ebp)
	leal 24(%ebp),%ecx
	calll *264(%edi)
	movl %eax,428(%edi)
	leal 24(%ebp),%ecx
	calll *500(%edi)
	movl 492(%edi),%eax
	mov (,%eax,4),%eax
	movl %eax,24(%ebp)
	movl 464(%edi),%eax
	mov %eax,%ecx
	movl 24(%ebp),%eax
	mov %eax,(,%ecx,4)
	incl 492(%edi)
	movl $0,16(%ebp)
	jmp L2018
L2017:
	incl 16(%ebp)
	movl 20(%ebp),%eax
	movl %eax,24(%ebp)
	movl 16(%ebp),%eax
	addl 432(%edi),%eax
	mov %eax,%ecx
	movl 24(%ebp),%eax
	mov %eax,(,%ecx,4)
L2018:
	incl 12(%ebp)
	jmp L2016
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L2005:
	ret
	.data
	.align 4
L2004:
	.long L2003
	.align 4
L2015:
	.long 40
	.long 19
	.long 89
	.long 66
	.long 100
	.long 71
	.long 101
	.long 72
	.long 20
	.long 35
	.long 102
	.long 69
	.long 5
	.long 56
	.long 68
	.long 52
	.long 25
	.long 23
	.long 76
	.long 93
	.long 57
	.long 98
	.long 74
	.long 7
	.long 24
	.long 22
	.long 34
	.long 33
	.long 65
	.long 31
	.long 75
	.long 21
	.long 30
	.long 36
	.long 48
	.long 102
	.long 53
	.long 67
	.long 13
	.long 32
	.long 8
	.long 61
	.long 62
	.long 63
	.long 70
	.long 79
	.long 49
	.long 99
	.long 55
	.long 4
	.long 101
	.long 39
	.long 60
	.long 58
	.long 103
	.long 6
	.long 59
	.long 0
	.align 4
L2999:
	.byte 142
	.byte 65
	.byte 78
	.byte 68
	.byte 47
	.byte 65
	.byte 66
	.byte 83
	.byte 47
	.byte 66
	.byte 69
	.byte 47
	.byte 66
	.byte 82
	.byte 69
	.byte 65
	.byte 75
	.byte 47
	.byte 66
	.byte 89
	.byte 47
	.byte 67
	.byte 65
	.byte 83
	.byte 69
	.byte 47
	.byte 68
	.byte 79
	.byte 47
	.byte 68
	.byte 69
	.byte 70
	.byte 65
	.byte 85
	.byte 76
	.byte 84
	.byte 47
	.byte 69
	.byte 81
	.byte 47
	.byte 69
	.byte 81
	.byte 86
	.byte 47
	.byte 69
	.byte 76
	.byte 83
	.byte 69
	.byte 47
	.byte 69
	.byte 78
	.byte 68
	.byte 67
	.byte 65
	.byte 83
	.byte 69
	.byte 47
	.byte 70
	.byte 65
	.byte 76
	.byte 83
	.byte 69
	.byte 47
	.byte 70
	.byte 79
	.byte 82
	.byte 47
	.byte 70
	.byte 73
	.byte 78
	.byte 73
	.byte 83
	.byte 72
	.byte 47
	.byte 71
	.byte 79
	.byte 84
	.byte 79
	.byte 47
	.byte 71
	.byte 69
	.byte 47
	.byte 71
	.byte 82
	.byte 47
	.byte 71
	.byte 76
	.byte 79
	.byte 66
	.byte 65
	.byte 76
	.byte 47
	.byte 71
	.byte 69
	.byte 84
	.byte 47
	.byte 73
	.byte 70
	.byte 47
	.byte 73
	.byte 78
	.byte 84
	.byte 79
	.byte 47
	.byte 76
	.byte 69
	.byte 84
	.byte 47
	.byte 76
	.byte 86
	.byte 47
	.byte 76
	.byte 69
	.byte 47
	.byte 76
	.byte 83
	.byte 47
	.byte 76
	.byte 79
	.byte 71
	.byte 79
	.byte 82
	.byte 47
	.byte 76
	.byte 79
	.byte 71
	.byte 65
	.byte 78
	.byte 68
	.byte 47
	.byte 76
	.byte 79
	.byte 79
	.byte 80
	.byte 47
	.byte 76
	.byte 83
	.byte 72
	.byte 73
	.byte 70
	.byte 84
	.byte 47
	.byte 47
	.align 4
L2998:
	.byte 171
	.byte 77
	.byte 65
	.byte 78
	.byte 73
	.byte 70
	.byte 69
	.byte 83
	.byte 84
	.byte 47
	.byte 78
	.byte 69
	.byte 47
	.byte 78
	.byte 79
	.byte 84
	.byte 47
	.byte 78
	.byte 69
	.byte 81
	.byte 86
	.byte 47
	.byte 78
	.byte 69
	.byte 69
	.byte 68
	.byte 83
	.byte 47
	.byte 79
	.byte 82
	.byte 47
	.byte 82
	.byte 69
	.byte 83
	.byte 85
	.byte 76
	.byte 84
	.byte 73
	.byte 83
	.byte 47
	.byte 82
	.byte 69
	.byte 84
	.byte 85
	.byte 82
	.byte 78
	.byte 47
	.byte 82
	.byte 69
	.byte 77
	.byte 47
	.byte 82
	.byte 83
	.byte 72
	.byte 73
	.byte 70
	.byte 84
	.byte 47
	.byte 82
	.byte 86
	.byte 47
	.byte 82
	.byte 69
	.byte 80
	.byte 69
	.byte 65
	.byte 84
	.byte 47
	.byte 82
	.byte 69
	.byte 80
	.byte 69
	.byte 65
	.byte 84
	.byte 87
	.byte 72
	.byte 73
	.byte 76
	.byte 69
	.byte 47
	.byte 82
	.byte 69
	.byte 80
	.byte 69
	.byte 65
	.byte 84
	.byte 85
	.byte 78
	.byte 84
	.byte 73
	.byte 76
	.byte 47
	.byte 83
	.byte 87
	.byte 73
	.byte 84
	.byte 67
	.byte 72
	.byte 79
	.byte 78
	.byte 47
	.byte 83
	.byte 84
	.byte 65
	.byte 84
	.byte 73
	.byte 67
	.byte 47
	.byte 83
	.byte 69
	.byte 67
	.byte 84
	.byte 73
	.byte 79
	.byte 78
	.byte 47
	.byte 84
	.byte 79
	.byte 47
	.byte 84
	.byte 69
	.byte 83
	.byte 84
	.byte 47
	.byte 84
	.byte 82
	.byte 85
	.byte 69
	.byte 47
	.byte 84
	.byte 72
	.byte 69
	.byte 78
	.byte 47
	.byte 84
	.byte 65
	.byte 66
	.byte 76
	.byte 69
	.byte 47
	.byte 85
	.byte 78
	.byte 84
	.byte 73
	.byte 76
	.byte 47
	.byte 85
	.byte 78
	.byte 76
	.byte 69
	.byte 83
	.byte 83
	.byte 47
	.byte 86
	.byte 69
	.byte 67
	.byte 47
	.byte 86
	.byte 65
	.byte 76
	.byte 79
	.byte 70
	.byte 47
	.byte 87
	.byte 72
	.byte 73
	.byte 76
	.byte 69
	.byte 47
	.byte 36
	.byte 47
	.byte 47
	.global G125
	.equ G125,L2001
	.global G121
	.equ G121,L2002
	.text
//	SECTION: LEX3
	jmp L3012
//	RCH
L3001:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	leal 8(%ebp),%ecx
	calll *52(%edi)
	movl %eax,468(%edi)
	movl 440(%edi),%eax
	orl %eax,%eax
	jz L3013
	cmpl $0,416(%edi)
	jne L3013
	cmpl $-1,468(%edi)
	je L3013
	movl 784(%edi),%eax
	movl %eax,16(%ebp)
	leal 8(%ebp),%ecx
	calll *48(%edi)
	movl 444(%edi),%eax
	cmpl 532(%edi),%eax
	je L3014
	movl $L3999,%eax
	shr $2,%eax
	movl %eax,16(%ebp)
	movl 532(%edi),%eax
	movl %eax,20(%ebp)
	leal 8(%ebp),%ecx
	calll *304(%edi)
	movl 532(%edi),%eax
	movl %eax,444(%edi)
L3014:
	movl 468(%edi),%eax
	movl %eax,16(%ebp)
	leal 8(%ebp),%ecx
	calll *56(%edi)
	movl 776(%edi),%eax
	movl %eax,16(%ebp)
	leal 8(%ebp),%ecx
	calll *48(%edi)
L3013:
	incl 528(%edi)
	movl 468(%edi),%eax
	movl %eax,8(%ebp)
	movl $63,%eax
	andl 528(%edi),%eax
	addl 400(%edi),%eax
	mov %eax,%ecx
	movl 8(%ebp),%eax
	mov %eax,(,%ecx,4)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	WRCHBUF
L3002:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl $L3998,%eax
	shr $2,%eax
	movl %eax,16(%ebp)
	leal 8(%ebp),%ecx
	calll *240(%edi)
	movl 528(%edi),%eax
	subl $63,%eax
	movl %eax,8(%ebp)
	movl 528(%edi),%eax
	movl %eax,12(%ebp)
	jmp L3015
L3016:
	movl $63,%eax
	andl 8(%ebp),%eax
	addl 400(%edi),%eax
	mov (,%eax,4),%eax
	movl %eax,16(%ebp)
	cmpl $0,16(%ebp)
	je L3017
	movl 16(%ebp),%eax
	movl %eax,28(%ebp)
	leal 20(%ebp),%ecx
	calll *56(%edi)
L3017:
	incl 8(%ebp)
L3015:
	movl 8(%ebp),%eax
	cmpl 12(%ebp),%eax
	jle L3016
	leal 8(%ebp),%ecx
	calll *252(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	RDTAG
L3003:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl $1,436(%edi)
	movl 8(%ebp),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *368(%edi)
	movl %eax,12(%ebp)
	movl 432(%edi),%eax
	incl %eax
	mov %eax,%ecx
	movl 12(%ebp),%eax
	mov %eax,(,%ecx,4)
L3018:
	leal 12(%ebp),%ecx
	calll *504(%edi)
	movl 468(%edi),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *368(%edi)
	movl %eax,468(%edi)
	cmpl $65,468(%edi)
	jl L3020
	cmpl $90,468(%edi)
	jle L3019
L3020:
	cmpl $48,468(%edi)
	jl L3021
	cmpl $57,468(%edi)
	jle L3019
L3021:
	cmpl $46,468(%edi)
	je L3019
	cmpl $95,468(%edi)
	je L3019
	jmp L3022
L3019:
	incl 436(%edi)
	movl 468(%edi),%eax
	movl %eax,12(%ebp)
	movl 436(%edi),%eax
	addl 432(%edi),%eax
	mov %eax,%ecx
	movl 12(%ebp),%eax
	mov %eax,(,%ecx,4)
	jmp L3018
L3022:
	movl 436(%edi),%eax
	movl %eax,12(%ebp)
	movl $0,%eax
	addl 432(%edi),%eax
	mov %eax,%ecx
	movl 12(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 432(%edi),%eax
	movl %eax,20(%ebp)
	movl 424(%edi),%eax
	movl %eax,24(%ebp)
	leal 12(%ebp),%ecx
	calll *264(%edi)
	movl %eax,428(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	PERFORMGET
L3004:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl $0,456(%edi)
	leal 8(%ebp),%ecx
	calll *480(%edi)
	movl $3,%eax
	addl 512(%edi),%eax
	mov (,%eax,4),%eax
	notl %eax
	movl %eax,456(%edi)
	cmpl $3,460(%edi)
	je L3023
	movl $97,16(%ebp)
	leal 8(%ebp),%ecx
	calll *604(%edi)
L3023:
	movl 772(%edi),%eax
	movl %eax,8(%ebp)
	movl 416(%edi),%eax
	addl 412(%edi),%eax
	mov %eax,%ecx
	movl 8(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 532(%edi),%eax
	movl %eax,8(%ebp)
	movl 416(%edi),%eax
	incl %eax
	addl 412(%edi),%eax
	mov %eax,%ecx
	movl 8(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 468(%edi),%eax
	movl %eax,8(%ebp)
	movl $2,%eax
	addl 416(%edi),%eax
	addl 412(%edi),%eax
	mov %eax,%ecx
	movl 8(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl $3,%eax
	addl 416(%edi),%eax
	movl %eax,416(%edi)
	movl $1,532(%edi)
	movl 424(%edi),%eax
	movl %eax,16(%ebp)
	leal 8(%ebp),%ecx
	calll *168(%edi)
	movl %eax,772(%edi)
	movl %eax,16(%ebp)
	leal 8(%ebp),%ecx
	calll *788(%edi)
	orl %eax,%eax
	jz L3024
	leal 16(%ebp),%eax
	shr $2,%eax
	movl %eax,8(%ebp)
	movl $L3997,%eax
	shr $2,%eax
	movl %eax,12(%ebp)
	jmp L3027
//	APPEND
L3025:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl 8(%ebp),%eax
	shl $2,%eax
	movzb (%eax),%eax
	movl %eax,16(%ebp)
	movl $1,20(%ebp)
	movl 12(%ebp),%eax
	shl $2,%eax
	movzb (%eax),%eax
	movl %eax,24(%ebp)
	jmp L3028
L3029:
	incl 16(%ebp)
	movl 12(%ebp),%eax
	shl $2,%eax
	addl 20(%ebp),%eax
	movzb (%eax),%eax
	movl %eax,28(%ebp)
	movl 8(%ebp),%eax
	shl $2,%eax
	addl 16(%ebp),%eax
	movl 28(%ebp),%ecx
	mov %cl,(%eax)
	incl 20(%ebp)
L3028:
	movl 20(%ebp),%eax
	cmpl 24(%ebp),%eax
	jle L3029
	movl 16(%ebp),%eax
	movl %eax,20(%ebp)
	movl 8(%ebp),%eax
	shl $2,%eax
	movl 20(%ebp),%ecx
	mov %cl,(%eax)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L3027:
	movl 12(%ebp),%eax
	shl $2,%eax
	movzb (%eax),%eax
	movl %eax,272(%ebp)
	movl 424(%edi),%eax
	shl $2,%eax
	movzb (%eax),%eax
	mov %eax,%ecx
	movl 272(%ebp),%eax
	addl %ecx,%eax
	cmpl $255,%eax
	jg L3030
	movl $0,272(%ebp)
	movl 8(%ebp),%eax
	shl $2,%eax
	movl 272(%ebp),%ecx
	mov %cl,(%eax)
	movl 8(%ebp),%eax
	movl %eax,280(%ebp)
	movl 12(%ebp),%eax
	movl %eax,284(%ebp)
	leal 272(%ebp),%ecx
	calll *L3026
	movl 8(%ebp),%eax
	movl %eax,280(%ebp)
	movl 424(%edi),%eax
	movl %eax,284(%ebp)
	leal 272(%ebp),%ecx
	calll *L3026
	movl 8(%ebp),%eax
	movl %eax,280(%ebp)
	leal 272(%ebp),%ecx
	calll *168(%edi)
	movl %eax,772(%edi)
L3030:
L3024:
	movl 772(%edi),%eax
	movl %eax,16(%ebp)
	leal 8(%ebp),%ecx
	calll *788(%edi)
	orl %eax,%eax
	jz L3031
	movl 416(%edi),%eax
	subl $3,%eax
	movl %eax,416(%edi)
	addl 412(%edi),%eax
	mov (,%eax,4),%eax
	movl %eax,772(%edi)
	movl 416(%edi),%eax
	incl %eax
	addl 412(%edi),%eax
	mov (,%eax,4),%eax
	movl %eax,532(%edi)
	movl $96,16(%ebp)
	movl 424(%edi),%eax
	movl %eax,20(%ebp)
	leal 8(%ebp),%ecx
	calll *604(%edi)
	jmp L3032
L3031:
	movl 772(%edi),%eax
	movl %eax,16(%ebp)
	leal 8(%ebp),%ecx
	calll *44(%edi)
	leal 8(%ebp),%ecx
	calll *504(%edi)
L3032:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	FINDFAIL
L3005:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	cmpl $0,8(%ebp)
	sete %al
	movzx %al,%eax
	neg %eax
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	READNUMBER
L3006:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl 468(%edi),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *L3008
	movl %eax,12(%ebp)
	movl %eax,404(%edi)
	movl 12(%ebp),%eax
	cmpl 8(%ebp),%eax
	jl L3033
	movl $33,24(%ebp)
	leal 16(%ebp),%ecx
	calll *604(%edi)
L3033:
L3034:
	leal 16(%ebp),%ecx
	calll *504(%edi)
	movl 468(%edi),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *L3008
	movl %eax,12(%ebp)
	cmpl 8(%ebp),%eax
	jl L3035
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L3035:
	movl 404(%edi),%eax
	imull 8(%ebp)
	addl 12(%ebp),%eax
	movl %eax,404(%edi)
	jmp L3034
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	VALUE
L3007:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	cmpl $48,8(%ebp)
	jl L3037
	cmpl $57,8(%ebp)
	jg L3037
	movl 8(%ebp),%eax
	subl $48,%eax
	jmp L3036
L3037:
	cmpl $65,8(%ebp)
	jl L3039
	cmpl $70,8(%ebp)
	jg L3039
	movl 8(%ebp),%eax
	subl $65,%eax
	addl $10,%eax
	jmp L3038
L3039:
	cmpl $97,8(%ebp)
	jl L3041
	cmpl $102,8(%ebp)
	jg L3041
	movl 8(%ebp),%eax
	subl $97,%eax
	addl $10,%eax
	jmp L3040
L3041:
	movl $100,%eax
L3040:
L3038:
L3036:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	RDSTRCH
L3009:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
L3042:
	movl 468(%edi),%eax
	movl %eax,8(%ebp)
	leal 12(%ebp),%ecx
	calll *504(%edi)
	cmpl $10,8(%ebp)
	jne L3045
	movl $34,20(%ebp)
	leal 12(%ebp),%ecx
	calll *604(%edi)
L3045:
	cmpl $42,8(%ebp)
	jne L3046
	cmpl $10,468(%edi)
	je L3049
	cmpl $32,468(%edi)
	je L3049
	cmpl $9,468(%edi)
	jne L3048
L3049:
L3050:
	cmpl $10,468(%edi)
	jne L3051
	incl 532(%edi)
L3051:
	leal 12(%ebp),%ecx
	calll *504(%edi)
	cmpl $10,468(%edi)
	je L3050
	cmpl $32,468(%edi)
	je L3050
	cmpl $9,468(%edi)
	je L3050
	cmpl $42,468(%edi)
	je L3052
	movl $34,20(%ebp)
	leal 12(%ebp),%ecx
	calll *604(%edi)
L3052:
	leal 12(%ebp),%ecx
	calll *504(%edi)
	jmpl *L3043
L3048:
	movl 468(%edi),%eax
	movl %eax,8(%ebp)
	movl 468(%edi),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *368(%edi)
	movl %eax,468(%edi)
	cmpl $84,468(%edi)
	jne L3053
	movl $9,8(%ebp)
L3053:
	cmpl $83,468(%edi)
	jne L3054
	movl $32,8(%ebp)
L3054:
	cmpl $78,468(%edi)
	jne L3055
	movl $10,8(%ebp)
L3055:
	cmpl $69,468(%edi)
	jne L3056
	movl $69,8(%ebp)
L3056:
	cmpl $66,468(%edi)
	jne L3057
	movl $8,8(%ebp)
L3057:
	cmpl $80,468(%edi)
	jne L3058
	movl $12,8(%ebp)
L3058:
	cmpl $67,468(%edi)
	jne L3059
	movl $13,8(%ebp)
L3059:
	cmpl $88,468(%edi)
	jne L3060
	movl $16,20(%ebp)
	movl $2,24(%ebp)
	leal 12(%ebp),%ecx
	calll *L3011
	movl %eax,8(%ebp)
L3060:
	cmpl $48,468(%edi)
	jl L3061
	cmpl $57,468(%edi)
	jg L3061
	movl 468(%edi),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *L3008
	movl $64,%ecx
	imull %ecx
	movl %eax,12(%ebp)
	movl $8,24(%ebp)
	movl $2,28(%ebp)
	leal 16(%ebp),%ecx
	calll *L3011
	mov %eax,%ecx
	movl 12(%ebp),%eax
	addl %ecx,%eax
	movl %eax,8(%ebp)
	cmpl $255,%eax
	jle L3062
	movl $34,20(%ebp)
	leal 12(%ebp),%ecx
	calll *604(%edi)
L3062:
L3061:
	leal 12(%ebp),%ecx
	calll *504(%edi)
	jmp L3047
L3046:
	cmpl $10,468(%edi)
	jne L3063
	incl 532(%edi)
L3063:
L3047:
	movl 8(%ebp),%eax
L3044:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	READOCTALORHEX
L3010:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl $0,16(%ebp)
	movl $1,20(%ebp)
	movl 12(%ebp),%eax
	movl %eax,24(%ebp)
	jmp L3065
L3066:
	leal 36(%ebp),%ecx
	calll *504(%edi)
	movl 468(%edi),%eax
L3067:
	movl %eax,36(%ebp)
	leal 28(%ebp),%ecx
	calll *L3008
	movl %eax,28(%ebp)
	cmpl 8(%ebp),%eax
	jle L3068
	movl $34,40(%ebp)
	leal 32(%ebp),%ecx
	calll *604(%edi)
L3068:
	movl 8(%ebp),%eax
	imull 16(%ebp)
	addl 28(%ebp),%eax
	movl %eax,16(%ebp)
	incl 20(%ebp)
L3065:
	movl 20(%ebp),%eax
	cmpl 24(%ebp),%eax
	jle L3066
	movl 16(%ebp),%eax
L3064:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L3012:
	ret
	.data
	.align 4
L3008:
	.long L3007
	.align 4
L3011:
	.long L3010
	.align 4
L3999:
	.byte 5
	.byte 37
	.byte 73
	.byte 52
	.byte 32
	.byte 32
	.align 4
L3998:
	.byte 4
	.byte 10
	.byte 46
	.byte 46
	.byte 46
	.align 4
L3026:
	.long L3025
	.align 4
L3997:
	.byte 21
	.byte 47
	.byte 117
	.byte 115
	.byte 114
	.byte 47
	.byte 108
	.byte 111
	.byte 99
	.byte 97
	.byte 108
	.byte 47
	.byte 108
	.byte 105
	.byte 98
	.byte 47
	.byte 111
	.byte 98
	.byte 99
	.byte 112
	.byte 108
	.byte 47
	.align 4
L3043:
	.long L3042
	.global G126
	.equ G126,L3001
	.global G131
	.equ G131,L3002
	.global G118
	.equ G118,L3003
	.global G119
	.equ G119,L3004
	.global G197
	.equ G197,L3005
	.global G112
	.equ G112,L3006
	.global G113
	.equ G113,L3009
	.text
//	SECTION: SYN0
	jmp L4012
//	NEWVEC
L4001:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl 672(%edi),%eax
	subl 8(%ebp),%eax
	decl %eax
	movl %eax,672(%edi)
	cmpl 676(%edi),%eax
	jg L4014
	movl $0,768(%edi)
	movl $98,20(%ebp)
	leal 12(%ebp),%ecx
	calll *604(%edi)
L4014:
	movl 672(%edi),%eax
L4013:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	LIST1
L4002:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl $0,20(%ebp)
	leal 12(%ebp),%ecx
	calll *668(%edi)
	movl %eax,12(%ebp)
	movl 8(%ebp),%eax
	movl %eax,16(%ebp)
	movl $0,%eax
	addl 12(%ebp),%eax
	mov %eax,%ecx
	movl 16(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 12(%ebp),%eax
L4015:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	LIST2
L4003:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl $1,24(%ebp)
	leal 16(%ebp),%ecx
	calll *668(%edi)
	movl %eax,16(%ebp)
	movl 8(%ebp),%eax
	movl %eax,20(%ebp)
	movl $0,%eax
	addl 16(%ebp),%eax
	mov %eax,%ecx
	movl 20(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 12(%ebp),%eax
	movl %eax,20(%ebp)
	movl 16(%ebp),%eax
	incl %eax
	mov %eax,%ecx
	movl 20(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 16(%ebp),%eax
L4016:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	LIST3
L4004:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl $2,28(%ebp)
	leal 20(%ebp),%ecx
	calll *668(%edi)
	movl %eax,20(%ebp)
	movl 8(%ebp),%eax
	movl %eax,24(%ebp)
	movl $0,%eax
	addl 20(%ebp),%eax
	mov %eax,%ecx
	movl 24(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 12(%ebp),%eax
	movl %eax,24(%ebp)
	movl 20(%ebp),%eax
	incl %eax
	mov %eax,%ecx
	movl 24(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 16(%ebp),%eax
	movl %eax,24(%ebp)
	movl $2,%eax
	addl 20(%ebp),%eax
	mov %eax,%ecx
	movl 24(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 20(%ebp),%eax
L4017:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	LIST4
L4005:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl $3,32(%ebp)
	leal 24(%ebp),%ecx
	calll *668(%edi)
	movl %eax,24(%ebp)
	movl 8(%ebp),%eax
	movl %eax,28(%ebp)
	movl $0,%eax
	addl 24(%ebp),%eax
	mov %eax,%ecx
	movl 28(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 12(%ebp),%eax
	movl %eax,28(%ebp)
	movl 24(%ebp),%eax
	incl %eax
	mov %eax,%ecx
	movl 28(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 16(%ebp),%eax
	movl %eax,28(%ebp)
	movl $2,%eax
	addl 24(%ebp),%eax
	mov %eax,%ecx
	movl 28(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 20(%ebp),%eax
	movl %eax,28(%ebp)
	movl $3,%eax
	addl 24(%ebp),%eax
	mov %eax,%ecx
	movl 28(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 24(%ebp),%eax
L4018:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	LIST5
L4006:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl $4,36(%ebp)
	leal 28(%ebp),%ecx
	calll *668(%edi)
	movl %eax,28(%ebp)
	movl 8(%ebp),%eax
	movl %eax,32(%ebp)
	movl $0,%eax
	addl 28(%ebp),%eax
	mov %eax,%ecx
	movl 32(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 12(%ebp),%eax
	movl %eax,32(%ebp)
	movl 28(%ebp),%eax
	incl %eax
	mov %eax,%ecx
	movl 32(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 16(%ebp),%eax
	movl %eax,32(%ebp)
	movl $2,%eax
	addl 28(%ebp),%eax
	mov %eax,%ecx
	movl 32(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 20(%ebp),%eax
	movl %eax,32(%ebp)
	movl $3,%eax
	addl 28(%ebp),%eax
	mov %eax,%ecx
	movl 32(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 24(%ebp),%eax
	movl %eax,32(%ebp)
	movl $4,%eax
	addl 28(%ebp),%eax
	mov %eax,%ecx
	movl 32(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 28(%ebp),%eax
L4019:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	LIST6
L4007:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl $5,40(%ebp)
	leal 32(%ebp),%ecx
	calll *668(%edi)
	movl %eax,32(%ebp)
	movl 8(%ebp),%eax
	movl %eax,36(%ebp)
	movl $0,%eax
	addl 32(%ebp),%eax
	mov %eax,%ecx
	movl 36(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 12(%ebp),%eax
	movl %eax,36(%ebp)
	movl 32(%ebp),%eax
	incl %eax
	mov %eax,%ecx
	movl 36(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 16(%ebp),%eax
	movl %eax,36(%ebp)
	movl $2,%eax
	addl 32(%ebp),%eax
	mov %eax,%ecx
	movl 36(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 20(%ebp),%eax
	movl %eax,36(%ebp)
	movl $3,%eax
	addl 32(%ebp),%eax
	mov %eax,%ecx
	movl 36(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 24(%ebp),%eax
	movl %eax,36(%ebp)
	movl $4,%eax
	addl 32(%ebp),%eax
	mov %eax,%ecx
	movl 36(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 28(%ebp),%eax
	movl %eax,36(%ebp)
	movl $5,%eax
	addl 32(%ebp),%eax
	mov %eax,%ecx
	movl 36(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 32(%ebp),%eax
L4020:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	FORMTREE
L4008:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	leal 12(%ebp),%eax
	shr $2,%eax
	movl %eax,8(%ebp)
	movl %eax,400(%edi)
	movl $0,268(%ebp)
	jmp L4022
L4023:
	movl $0,272(%ebp)
	movl 268(%ebp),%eax
	addl 400(%edi),%eax
	mov %eax,%ecx
	movl 272(%ebp),%eax
	mov %eax,(,%ecx,4)
	incl 268(%ebp)
L4022:
	cmpl $63,268(%ebp)
	jle L4023
	movl $0,528(%edi)
	leal 272(%ebp),%eax
	shr $2,%eax
	movl %eax,268(%ebp)
	movl %eax,412(%edi)
	movl $0,416(%edi)
	movl $20,420(%edi)
	leal 356(%ebp),%ecx
	calll *504(%edi)
	cmpl $-1,468(%edi)
	jne L4024
	movl $0,%eax
	jmp L4021
L4024:
	leal 360(%ebp),%eax
	shr $2,%eax
	movl %eax,356(%ebp)
	movl %eax,424(%edi)
	leal 880(%ebp),%eax
	shr $2,%eax
	movl %eax,876(%ebp)
	movl %eax,432(%edi)
	movl $0,436(%edi)
	leal 1912(%ebp),%eax
	shr $2,%eax
	movl %eax,1908(%ebp)
	movl %eax,592(%edi)
	movl $0,2316(%ebp)
	movl $100,2320(%ebp)
	jmp L4027
L4028:
	movl $0,2324(%ebp)
	movl 2316(%ebp),%eax
	addl 592(%edi),%eax
	mov %eax,%ecx
	movl 2324(%ebp),%eax
	mov %eax,(,%ecx,4)
	incl 2316(%ebp)
L4027:
	movl 2316(%ebp),%eax
	cmpl 2320(%ebp),%eax
	jle L4028
	leal 2316(%ebp),%ecx
	calll *484(%edi)
	leal 2316(%ebp),%ecx
	calll *124(%edi)
	movl %eax,540(%edi)
	movl L4026,%eax
	movl %eax,544(%edi)
L4025:
	leal 2316(%ebp),%ecx
	calll *480(%edi)
	movl 512(%edi),%eax
	incl %eax
	mov (,%eax,4),%eax
	orl %eax,%eax
	jz L4029
	movl $L4999,%eax
	shr $2,%eax
	movl %eax,2324(%ebp)
	movl 460(%edi),%eax
	movl %eax,2328(%ebp)
	movl 424(%edi),%eax
	movl %eax,2332(%ebp)
	leal 2316(%ebp),%ecx
	calll *304(%edi)
	cmpl $90,460(%edi)
	jne L4030
	movl $0,%eax
	jmp L4021
L4030:
	jmpl *L4026
L4029:
	jmp L4033
//	RPROG
L4031:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl $0,12(%ebp)
	leal 16(%ebp),%ecx
	calll *480(%edi)
	leal 16(%ebp),%ecx
	calll *696(%edi)
	movl %eax,12(%ebp)
	cmpl $3,(,%eax,4)
	je L4035
	movl $95,24(%ebp)
	leal 16(%ebp),%ecx
	calll *604(%edi)
L4035:
	movl 8(%ebp),%eax
	movl %eax,24(%ebp)
	movl 12(%ebp),%eax
	movl %eax,28(%ebp)
	cmpl $48,460(%edi)
	jne L4037
	movl $48,40(%ebp)
	leal 32(%ebp),%ecx
	calll *L4032
	jmp L4036
L4037:
	leal 32(%ebp),%ecx
	calll *560(%edi)
L4036:
	movl %eax,32(%ebp)
	leal 16(%ebp),%ecx
	calll *652(%edi)
L4034:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L4033:
	cmpl $49,460(%edi)
	jne L4039
	movl $49,2324(%ebp)
	leal 2316(%ebp),%ecx
	calll *L4032
	jmp L4038
L4039:
	cmpl $48,460(%edi)
	jne L4041
	movl $48,2324(%ebp)
	leal 2316(%ebp),%ecx
	calll *L4032
	jmp L4040
L4041:
	leal 2316(%ebp),%ecx
	calll *560(%edi)
L4040:
L4038:
	movl %eax,2316(%ebp)
	cmpl $90,460(%edi)
	je L4042
	movl $99,2328(%ebp)
	leal 2320(%ebp),%ecx
	calll *604(%edi)
L4042:
	movl 2316(%ebp),%eax
L4021:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	SYNREPORT
L4009:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	incl 764(%edi)
	movl $L4998,%eax
	shr $2,%eax
	movl %eax,24(%ebp)
	movl 532(%edi),%eax
	movl %eax,28(%ebp)
	leal 16(%ebp),%ecx
	calll *304(%edi)
	movl 8(%ebp),%eax
	movl %eax,24(%ebp)
	movl 12(%ebp),%eax
	movl %eax,28(%ebp)
	leal 16(%ebp),%ecx
	calll *L4011
	leal 16(%ebp),%ecx
	calll *524(%edi)
	movl 764(%edi),%eax
	cmpl 768(%edi),%eax
	jle L4043
	movl $L4997,%eax
	shr $2,%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *240(%edi)
	movl $8,24(%ebp)
	leal 16(%ebp),%ecx
	calll *120(%edi)
L4043:
	movl $0,488(%edi)
	jmp L4045
L4044:
	leal 16(%ebp),%ecx
	calll *480(%edi)
L4045:
	cmpl $91,460(%edi)
	je L4046
	cmpl $92,460(%edi)
	je L4046
	cmpl $74,460(%edi)
	je L4046
	cmpl $40,460(%edi)
	je L4046
	cmpl $90,460(%edi)
	je L4046
	movl 488(%edi),%eax
	orl %eax,%eax
	jz L4044
L4046:
	movl 540(%edi),%eax
	movl %eax,24(%ebp)
	movl 544(%edi),%eax
	movl %eax,28(%ebp)
	leal 16(%ebp),%ecx
	calll *128(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	SYNMESSAGE
L4010:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	jmp L4048
L4050:
	movl 8(%ebp),%eax
	movl %eax,12(%ebp)
	movl $L4996,%eax
	shr $2,%eax
	jmp L4047
L4051:
	movl $L4995,%eax
	shr $2,%eax
	jmp L4047
L4052:
	movl $L4994,%eax
	shr $2,%eax
	jmp L4047
L4053:
	movl $L4993,%eax
	shr $2,%eax
	jmp L4047
L4054:
	movl $L4992,%eax
	shr $2,%eax
	jmp L4047
L4055:
	movl $L4991,%eax
	shr $2,%eax
	jmp L4047
L4056:
	movl $L4990,%eax
	shr $2,%eax
	jmp L4047
L4057:
	movl $L4989,%eax
	shr $2,%eax
	jmp L4047
L4058:
L4059:
L4060:
	movl $L4988,%eax
	shr $2,%eax
	jmp L4047
L4061:
	movl $L4987,%eax
	shr $2,%eax
	jmp L4047
L4062:
	movl $L4986,%eax
	shr $2,%eax
	jmp L4047
L4063:
	movl $L4985,%eax
	shr $2,%eax
	jmp L4047
L4064:
	movl $L4984,%eax
	shr $2,%eax
	jmp L4047
L4065:
	movl $L4983,%eax
	shr $2,%eax
	jmp L4047
L4066:
	movl $L4982,%eax
	shr $2,%eax
	jmp L4047
L4067:
L4068:
L4069:
	movl $L4981,%eax
	shr $2,%eax
	jmp L4047
L4070:
	movl $L4980,%eax
	shr $2,%eax
	jmp L4047
L4071:
	movl $L4979,%eax
	shr $2,%eax
	jmp L4047
L4072:
L4073:
	movl $L4978,%eax
	shr $2,%eax
	jmp L4047
L4074:
	movl $L4977,%eax
	shr $2,%eax
	jmp L4047
L4075:
	movl $L4976,%eax
	shr $2,%eax
	jmp L4047
L4076:
	movl $L4975,%eax
	shr $2,%eax
	jmp L4047
L4077:
L4078:
	movl $L4974,%eax
	shr $2,%eax
	jmp L4047
L4079:
	movl $L4973,%eax
	shr $2,%eax
	jmp L4047
L4080:
L4081:
	movl $L4972,%eax
	shr $2,%eax
	jmp L4047
L4082:
	movl $L4971,%eax
	shr $2,%eax
	jmp L4047
	jmp L4049
L4048:
	movl 8(%ebp),%eax
	mov $L4970,%edx
	mov $32,%ecx
1:	cmp (%edx),%eax
	je 3f
	add $8,%edx
	loop 1b
2:	jmp L4050
3:	jmp *4(%edx)
L4049:
L4047:
	movl %eax,16(%ebp)
	movl %eax,28(%ebp)
	movl 12(%ebp),%eax
	movl %eax,32(%ebp)
	leal 20(%ebp),%ecx
	calll *304(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L4012:
	ret
	.data
	.align 4
L4011:
	.long L4010
	.align 4
L4026:
	.long L4025
	.align 4
L4999:
	.byte 7
	.byte 37
	.byte 73
	.byte 51
	.byte 32
	.byte 37
	.byte 83
	.byte 10
	.align 4
L4032:
	.long L4031
	.align 4
L4998:
	.byte 29
	.byte 10
	.byte 83
	.byte 89
	.byte 78
	.byte 84
	.byte 65
	.byte 88
	.byte 32
	.byte 69
	.byte 82
	.byte 82
	.byte 79
	.byte 82
	.byte 32
	.byte 78
	.byte 69
	.byte 65
	.byte 82
	.byte 32
	.byte 76
	.byte 73
	.byte 78
	.byte 69
	.byte 32
	.byte 37
	.byte 78
	.byte 58
	.byte 32
	.byte 32
	.align 4
L4997:
	.byte 21
	.byte 10
	.byte 67
	.byte 79
	.byte 77
	.byte 80
	.byte 73
	.byte 76
	.byte 65
	.byte 84
	.byte 73
	.byte 79
	.byte 78
	.byte 32
	.byte 65
	.byte 66
	.byte 79
	.byte 82
	.byte 84
	.byte 69
	.byte 68
	.byte 10
	.align 4
L4996:
	.byte 8
	.byte 69
	.byte 82
	.byte 82
	.byte 79
	.byte 82
	.byte 32
	.byte 37
	.byte 78
	.align 4
L4995:
	.byte 18
	.byte 39
	.byte 36
	.byte 39
	.byte 32
	.byte 79
	.byte 85
	.byte 84
	.byte 32
	.byte 79
	.byte 70
	.byte 32
	.byte 67
	.byte 79
	.byte 78
	.byte 84
	.byte 69
	.byte 88
	.byte 84
	.align 4
L4994:
	.byte 17
	.byte 73
	.byte 76
	.byte 76
	.byte 69
	.byte 71
	.byte 65
	.byte 76
	.byte 32
	.byte 67
	.byte 72
	.byte 65
	.byte 82
	.byte 65
	.byte 67
	.byte 84
	.byte 69
	.byte 82
	.align 4
L4993:
	.byte 16
	.byte 66
	.byte 65
	.byte 68
	.byte 32
	.byte 83
	.byte 69
	.byte 67
	.byte 84
	.byte 73
	.byte 79
	.byte 78
	.byte 32
	.byte 78
	.byte 65
	.byte 77
	.byte 69
	.align 4
L4992:
	.byte 11
	.byte 78
	.byte 79
	.byte 32
	.byte 73
	.byte 78
	.byte 80
	.byte 85
	.byte 84
	.byte 32
	.byte 37
	.byte 83
	.align 4
L4991:
	.byte 17
	.byte 66
	.byte 65
	.byte 68
	.byte 32
	.byte 71
	.byte 69
	.byte 84
	.byte 32
	.byte 68
	.byte 73
	.byte 82
	.byte 69
	.byte 67
	.byte 84
	.byte 73
	.byte 86
	.byte 69
	.align 4
L4990:
	.byte 17
	.byte 80
	.byte 82
	.byte 79
	.byte 71
	.byte 82
	.byte 65
	.byte 77
	.byte 32
	.byte 84
	.byte 79
	.byte 79
	.byte 32
	.byte 76
	.byte 65
	.byte 82
	.byte 71
	.byte 69
	.align 4
L4989:
	.byte 21
	.byte 73
	.byte 78
	.byte 67
	.byte 79
	.byte 82
	.byte 82
	.byte 69
	.byte 67
	.byte 84
	.byte 32
	.byte 84
	.byte 69
	.byte 82
	.byte 77
	.byte 73
	.byte 78
	.byte 65
	.byte 84
	.byte 73
	.byte 79
	.byte 78
	.align 4
L4988:
	.byte 13
	.byte 78
	.byte 65
	.byte 77
	.byte 69
	.byte 32
	.byte 69
	.byte 88
	.byte 80
	.byte 69
	.byte 67
	.byte 84
	.byte 69
	.byte 68
	.align 4
L4987:
	.byte 13
	.byte 39
	.byte 36
	.byte 40
	.byte 39
	.byte 32
	.byte 69
	.byte 88
	.byte 80
	.byte 69
	.byte 67
	.byte 84
	.byte 69
	.byte 68
	.align 4
L4986:
	.byte 13
	.byte 39
	.byte 36
	.byte 41
	.byte 39
	.byte 32
	.byte 69
	.byte 88
	.byte 80
	.byte 69
	.byte 67
	.byte 84
	.byte 69
	.byte 68
	.align 4
L4985:
	.byte 22
	.byte 85
	.byte 78
	.byte 84
	.byte 65
	.byte 71
	.byte 71
	.byte 69
	.byte 68
	.byte 32
	.byte 39
	.byte 36
	.byte 41
	.byte 39
	.byte 32
	.byte 77
	.byte 73
	.byte 83
	.byte 77
	.byte 65
	.byte 84
	.byte 67
	.byte 72
	.align 4
L4984:
	.byte 19
	.byte 69
	.byte 82
	.byte 82
	.byte 79
	.byte 82
	.byte 32
	.byte 73
	.byte 78
	.byte 32
	.byte 69
	.byte 88
	.byte 80
	.byte 82
	.byte 69
	.byte 83
	.byte 83
	.byte 73
	.byte 79
	.byte 78
	.align 4
L4983:
	.byte 10
	.byte 66
	.byte 65
	.byte 68
	.byte 32
	.byte 78
	.byte 85
	.byte 77
	.byte 66
	.byte 69
	.byte 82
	.align 4
L4982:
	.byte 32
	.byte 66
	.byte 65
	.byte 68
	.byte 32
	.byte 83
	.byte 84
	.byte 82
	.byte 73
	.byte 78
	.byte 71
	.byte 32
	.byte 79
	.byte 82
	.byte 32
	.byte 67
	.byte 72
	.byte 65
	.byte 82
	.byte 65
	.byte 67
	.byte 84
	.byte 69
	.byte 82
	.byte 32
	.byte 67
	.byte 79
	.byte 78
	.byte 83
	.byte 84
	.byte 65
	.byte 78
	.byte 84
	.align 4
L4981:
	.byte 11
	.byte 39
	.byte 41
	.byte 39
	.byte 32
	.byte 77
	.byte 73
	.byte 83
	.byte 83
	.byte 73
	.byte 78
	.byte 71
	.align 4
L4980:
	.byte 26
	.byte 66
	.byte 65
	.byte 68
	.byte 32
	.byte 67
	.byte 79
	.byte 78
	.byte 68
	.byte 73
	.byte 84
	.byte 73
	.byte 79
	.byte 78
	.byte 65
	.byte 76
	.byte 32
	.byte 69
	.byte 88
	.byte 80
	.byte 82
	.byte 69
	.byte 83
	.byte 83
	.byte 73
	.byte 79
	.byte 78
	.align 4
L4979:
	.byte 21
	.byte 66
	.byte 65
	.byte 68
	.byte 32
	.byte 80
	.byte 82
	.byte 79
	.byte 67
	.byte 69
	.byte 68
	.byte 85
	.byte 82
	.byte 69
	.byte 32
	.byte 72
	.byte 69
	.byte 65
	.byte 68
	.byte 73
	.byte 78
	.byte 71
	.align 4
L4978:
	.byte 15
	.byte 66
	.byte 65
	.byte 68
	.byte 32
	.byte 68
	.byte 69
	.byte 67
	.byte 76
	.byte 65
	.byte 82
	.byte 65
	.byte 84
	.byte 73
	.byte 79
	.byte 78
	.align 4
L4977:
	.byte 14
	.byte 85
	.byte 78
	.byte 69
	.byte 88
	.byte 80
	.byte 69
	.byte 67
	.byte 84
	.byte 69
	.byte 68
	.byte 32
	.byte 39
	.byte 58
	.byte 39
	.align 4
L4976:
	.byte 16
	.byte 69
	.byte 82
	.byte 82
	.byte 79
	.byte 82
	.byte 32
	.byte 73
	.byte 78
	.byte 32
	.byte 67
	.byte 79
	.byte 77
	.byte 77
	.byte 65
	.byte 78
	.byte 68
	.align 4
L4975:
	.byte 15
	.byte 39
	.byte 69
	.byte 76
	.byte 83
	.byte 69
	.byte 39
	.byte 32
	.byte 69
	.byte 88
	.byte 80
	.byte 69
	.byte 67
	.byte 84
	.byte 69
	.byte 68
	.align 4
L4974:
	.byte 12
	.byte 66
	.byte 65
	.byte 68
	.byte 32
	.byte 70
	.byte 79
	.byte 82
	.byte 32
	.byte 76
	.byte 79
	.byte 79
	.byte 80
	.align 4
L4973:
	.byte 15
	.byte 39
	.byte 73
	.byte 78
	.byte 84
	.byte 79
	.byte 39
	.byte 32
	.byte 69
	.byte 88
	.byte 80
	.byte 69
	.byte 67
	.byte 84
	.byte 69
	.byte 68
	.align 4
L4972:
	.byte 12
	.byte 39
	.byte 58
	.byte 39
	.byte 32
	.byte 69
	.byte 88
	.byte 80
	.byte 69
	.byte 67
	.byte 84
	.byte 69
	.byte 68
	.align 4
L4971:
	.byte 12
	.byte 39
	.byte 42
	.byte 47
	.byte 39
	.byte 32
	.byte 77
	.byte 73
	.byte 83
	.byte 83
	.byte 73
	.byte 78
	.byte 71
	.align 4
L4970:
	.long 91
	.long L4051
	.long 94
	.long L4052
	.long 95
	.long L4053
	.long 96
	.long L4054
	.long 97
	.long L4055
	.long 98
	.long L4056
	.long 99
	.long L4057
	.long 8
	.long L4058
	.long 40
	.long L4059
	.long 43
	.long L4060
	.long 6
	.long L4061
	.long 7
	.long L4062
	.long 9
	.long L4063
	.long 32
	.long L4064
	.long 33
	.long L4065
	.long 34
	.long L4066
	.long 15
	.long L4067
	.long 19
	.long L4068
	.long 41
	.long L4069
	.long 30
	.long L4070
	.long 42
	.long L4071
	.long 44
	.long L4072
	.long 45
	.long L4073
	.long 50
	.long L4074
	.long 51
	.long L4075
	.long 54
	.long L4076
	.long 57
	.long L4077
	.long 58
	.long L4078
	.long 60
	.long L4079
	.long 61
	.long L4080
	.long 62
	.long L4081
	.long 63
	.long L4082
	.global G167
	.equ G167,L4001
	.global G161
	.equ G161,L4002
	.global G162
	.equ G162,L4003
	.global G163
	.equ G163,L4004
	.global G164
	.equ G164,L4005
	.global G165
	.equ G165,L4006
	.global G166
	.equ G166,L4007
	.global G150
	.equ G150,L4008
	.global G151
	.equ G151,L4009
	.text
//	SECTION: SYN1
	jmp L5009
//	RDBLOCKBODY
L5001:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl 540(%edi),%eax
	movl %eax,8(%ebp)
	movl 544(%edi),%eax
	movl %eax,12(%ebp)
	movl $0,16(%ebp)
	leal 20(%ebp),%ecx
	calll *124(%edi)
	movl %eax,540(%edi)
	movl L5012,%eax
	movl %eax,544(%edi)
	movl $97,28(%ebp)
	leal 20(%ebp),%ecx
	calll *616(%edi)
	jmp L5013
L5015:
L5016:
L5017:
	movl 460(%edi),%eax
	movl %eax,20(%ebp)
	leal 24(%ebp),%ecx
	calll *480(%edi)
	movl 588(%edi),%eax
	movl %eax,32(%ebp)
	leal 24(%ebp),%ecx
	calll *564(%edi)
	movl %eax,16(%ebp)
	movl 20(%ebp),%eax
	movl %eax,32(%ebp)
	movl 16(%ebp),%eax
	movl %eax,36(%ebp)
	leal 40(%ebp),%ecx
	calll *560(%edi)
	movl %eax,40(%ebp)
	leal 24(%ebp),%ecx
	calll *652(%edi)
	movl %eax,16(%ebp)
	jmp L5014
L5018:
	leal 20(%ebp),%ecx
	calll *480(%edi)
	leal 20(%ebp),%ecx
	calll *580(%edi)
	movl %eax,16(%ebp)
L5011:
	jmp L5020
L5019:
	leal 20(%ebp),%ecx
	calll *480(%edi)
	movl $40,28(%ebp)
	movl 16(%ebp),%eax
	movl %eax,32(%ebp)
	leal 36(%ebp),%ecx
	calll *580(%edi)
	movl %eax,36(%ebp)
	leal 20(%ebp),%ecx
	calll *652(%edi)
	movl %eax,16(%ebp)
L5020:
	cmpl $40,460(%edi)
	je L5019
	movl $74,28(%ebp)
	movl 16(%ebp),%eax
	movl %eax,32(%ebp)
	leal 36(%ebp),%ecx
	calll *560(%edi)
	movl %eax,36(%ebp)
	leal 20(%ebp),%ecx
	calll *652(%edi)
	movl %eax,16(%ebp)
	jmp L5014
L5021:
	leal 20(%ebp),%ecx
	calll *624(%edi)
	movl %eax,16(%ebp)
	cmpl $92,460(%edi)
	je L5022
	cmpl $90,460(%edi)
	je L5022
	movl $51,28(%ebp)
	leal 20(%ebp),%ecx
	calll *604(%edi)
L5022:
L5023:
L5024:
	jmp L5014
L5013:
	movl 460(%edi),%eax
	mov $L5999,%edx
	mov $6,%ecx
1:	cmp (%edx),%eax
	je 3f
	add $8,%edx
	loop 1b
2:	jmp L5021
3:	jmp *4(%edx)
L5014:
	movl 8(%ebp),%eax
	movl %eax,540(%edi)
	movl 12(%ebp),%eax
	movl %eax,544(%edi)
	movl 16(%ebp),%eax
L5010:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	RDSEQ
L5002:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl $0,8(%ebp)
	movl $97,20(%ebp)
	leal 12(%ebp),%ecx
	calll *616(%edi)
	leal 12(%ebp),%ecx
	calll *584(%edi)
	movl %eax,8(%ebp)
	cmpl $92,460(%edi)
	je L5027
	cmpl $90,460(%edi)
	jne L5026
L5027:
	movl 8(%ebp),%eax
	jmp L5025
L5026:
	movl $73,20(%ebp)
	movl 8(%ebp),%eax
	movl %eax,24(%ebp)
	leal 28(%ebp),%ecx
	calll *624(%edi)
	movl %eax,28(%ebp)
	leal 12(%ebp),%ecx
	calll *652(%edi)
L5025:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	RDCDEFS
L5003:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl $0,8(%ebp)
	movl $0,12(%ebp)
	leal 8(%ebp),%eax
	shr $2,%eax
	movl %eax,16(%ebp)
	movl 540(%edi),%eax
	movl %eax,20(%ebp)
	movl 544(%edi),%eax
	movl %eax,24(%ebp)
	leal 28(%ebp),%ecx
	calll *124(%edi)
	movl %eax,540(%edi)
	movl L5030,%eax
	movl %eax,544(%edi)
L5031:
	leal 28(%ebp),%ecx
	calll *572(%edi)
	movl %eax,12(%ebp)
	cmpl $20,460(%edi)
	je L5034
	cmpl $54,460(%edi)
	jne L5032
L5034:
	leal 28(%ebp),%ecx
	calll *480(%edi)
	jmp L5033
L5032:
	movl $45,36(%ebp)
	leal 28(%ebp),%ecx
	calll *604(%edi)
L5033:
	movl $43,36(%ebp)
	movl $0,40(%ebp)
	movl 12(%ebp),%eax
	movl %eax,44(%ebp)
	movl $0,56(%ebp)
	leal 48(%ebp),%ecx
	calll *576(%edi)
	movl %eax,48(%ebp)
	leal 28(%ebp),%ecx
	calll *656(%edi)
	movl 16(%ebp),%ecx
	mov %eax,(,%ecx,4)
	movl 16(%ebp),%eax
	mov (,%eax,4),%eax
	incl %eax
	movl %eax,16(%ebp)
L5029:
	movl $97,36(%ebp)
	leal 28(%ebp),%ecx
	calll *616(%edi)
	cmpl $2,460(%edi)
	je L5031
	movl 20(%ebp),%eax
	movl %eax,540(%edi)
	movl 24(%ebp),%eax
	movl %eax,544(%edi)
	movl 8(%ebp),%eax
L5028:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	RDSECT
L5004:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl 464(%edi),%eax
	movl %eax,12(%ebp)
	movl $0,16(%ebp)
	movl $91,28(%ebp)
	movl $6,32(%ebp)
	leal 20(%ebp),%ecx
	calll *612(%edi)
	leal 20(%ebp),%ecx
	calll *8(%ebp)
	movl %eax,16(%ebp)
	cmpl $92,460(%edi)
	je L5036
	movl $7,28(%ebp)
	leal 20(%ebp),%ecx
	calll *604(%edi)
L5036:
	movl 464(%edi),%eax
	cmpl 12(%ebp),%eax
	jne L5037
	leal 20(%ebp),%ecx
	calll *480(%edi)
	jmp L5038
L5037:
	movl 536(%edi),%eax
	cmpl 464(%edi),%eax
	jne L5039
	movl $0,460(%edi)
	movl $9,28(%ebp)
	leal 20(%ebp),%ecx
	calll *604(%edi)
L5039:
L5038:
	movl 16(%ebp),%eax
L5035:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	RNAMELIST
L5005:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	leal 8(%ebp),%ecx
	calll *572(%edi)
	movl %eax,8(%ebp)
	cmpl $38,460(%edi)
	je L5041
	movl 8(%ebp),%eax
	jmp L5040
L5041:
	leal 12(%ebp),%ecx
	calll *480(%edi)
	movl $38,20(%ebp)
	movl 8(%ebp),%eax
	movl %eax,24(%ebp)
	leal 28(%ebp),%ecx
	calll *568(%edi)
	movl %eax,28(%ebp)
	leal 12(%ebp),%ecx
	calll *652(%edi)
L5040:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	RNAME
L5006:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl 464(%edi),%eax
	movl %eax,8(%ebp)
	movl $2,20(%ebp)
	movl $8,24(%ebp)
	leal 12(%ebp),%ecx
	calll *612(%edi)
	movl 8(%ebp),%eax
L5042:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	IGNORE
L5007:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl 8(%ebp),%eax
	cmpl 460(%edi),%eax
	jne L5043
	leal 12(%ebp),%ecx
	calll *480(%edi)
L5043:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	CHECKFOR
L5008:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl 8(%ebp),%eax
	cmpl 460(%edi),%eax
	je L5044
	movl 12(%ebp),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *604(%edi)
L5044:
	leal 16(%ebp),%ecx
	calll *480(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L5009:
	ret
	.data
	.align 4
L5012:
	.long L5011
	.align 4
L5999:
	.long 75
	.long L5015
	.long 79
	.long L5016
	.long 76
	.long L5017
	.long 74
	.long L5018
	.long 92
	.long L5023
	.long 90
	.long L5024
	.align 4
L5030:
	.long L5029
	.global G140
	.equ G140,L5001
	.global G156
	.equ G156,L5002
	.global G147
	.equ G147,L5003
	.global G141
	.equ G141,L5004
	.global G142
	.equ G142,L5005
	.global G143
	.equ G143,L5006
	.global G154
	.equ G154,L5007
	.global G153
	.equ G153,L5008
	.text
//	SECTION: SYN2
	jmp L6003
//	RBEXP
L6001:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl $0,8(%ebp)
	movl 460(%edi),%eax
	movl %eax,12(%ebp)
	jmp L6005
L6007:
	movl $32,24(%ebp)
	leal 16(%ebp),%ecx
	calll *604(%edi)
L6008:
	leal 16(%ebp),%ecx
	calll *480(%edi)
	movl $16,24(%ebp)
	leal 16(%ebp),%ecx
	calll *644(%edi)
	jmp L6004
L6009:
L6010:
L6011:
	movl 464(%edi),%eax
	movl %eax,8(%ebp)
	leal 16(%ebp),%ecx
	calll *480(%edi)
	movl 8(%ebp),%eax
	jmp L6004
L6012:
	movl 428(%edi),%eax
	incl %eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *668(%edi)
	movl %eax,8(%ebp)
	movl $3,16(%ebp)
	movl $0,%eax
	addl 8(%ebp),%eax
	mov %eax,%ecx
	movl 16(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl $0,16(%ebp)
	movl 428(%edi),%eax
	movl %eax,20(%ebp)
	jmp L6013
L6014:
	movl 16(%ebp),%eax
	addl 424(%edi),%eax
	mov (,%eax,4),%eax
	movl %eax,24(%ebp)
	movl 16(%ebp),%eax
	incl %eax
	addl 8(%ebp),%eax
	mov %eax,%ecx
	movl 24(%ebp),%eax
	mov %eax,(,%ecx,4)
	incl 16(%ebp)
L6013:
	movl 16(%ebp),%eax
	cmpl 20(%ebp),%eax
	jle L6014
	leal 16(%ebp),%ecx
	calll *480(%edi)
	movl 8(%ebp),%eax
	jmp L6004
L6015:
	movl $1,24(%ebp)
	movl 404(%edi),%eax
	movl %eax,28(%ebp)
	leal 16(%ebp),%ecx
	calll *648(%edi)
	movl %eax,8(%ebp)
	leal 16(%ebp),%ecx
	calll *480(%edi)
	movl 8(%ebp),%eax
	jmp L6004
L6016:
	leal 16(%ebp),%ecx
	calll *480(%edi)
	movl $0,24(%ebp)
	leal 16(%ebp),%ecx
	calll *576(%edi)
	movl %eax,8(%ebp)
	movl $106,24(%ebp)
	movl $15,28(%ebp)
	leal 16(%ebp),%ecx
	calll *612(%edi)
	movl 8(%ebp),%eax
	jmp L6004
L6017:
	leal 16(%ebp),%ecx
	calll *480(%edi)
	movl $6,24(%ebp)
	leal 28(%ebp),%ecx
	calll *584(%edi)
	movl %eax,28(%ebp)
	leal 16(%ebp),%ecx
	calll *648(%edi)
	jmp L6004
L6018:
	movl $8,12(%ebp)
L6019:
L6020:
	leal 16(%ebp),%ecx
	calll *480(%edi)
	movl 12(%ebp),%eax
	movl %eax,24(%ebp)
	movl $37,36(%ebp)
	leal 28(%ebp),%ecx
	calll *576(%edi)
	movl %eax,28(%ebp)
	leal 16(%ebp),%ecx
	calll *648(%edi)
	jmp L6004
L6021:
	leal 16(%ebp),%ecx
	calll *480(%edi)
	movl $34,24(%ebp)
	leal 16(%ebp),%ecx
	calll *576(%edi)
	jmp L6004
L6022:
	leal 16(%ebp),%ecx
	calll *480(%edi)
	movl $34,24(%ebp)
	leal 16(%ebp),%ecx
	calll *576(%edi)
	movl %eax,8(%ebp)
	cmpl $1,(,%eax,4)
	jne L6023
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	negl %eax
	movl %eax,16(%ebp)
	movl 8(%ebp),%eax
	incl %eax
	mov %eax,%ecx
	movl 16(%ebp),%eax
	mov %eax,(,%ecx,4)
	jmp L6024
L6023:
	movl $17,24(%ebp)
	movl 8(%ebp),%eax
	movl %eax,28(%ebp)
	leal 16(%ebp),%ecx
	calll *648(%edi)
	movl %eax,8(%ebp)
L6024:
	movl 8(%ebp),%eax
	jmp L6004
L6025:
	leal 16(%ebp),%ecx
	calll *480(%edi)
	movl $30,24(%ebp)
	movl $24,36(%ebp)
	leal 28(%ebp),%ecx
	calll *576(%edi)
	movl %eax,28(%ebp)
	leal 16(%ebp),%ecx
	calll *648(%edi)
	jmp L6004
L6026:
	leal 16(%ebp),%ecx
	calll *480(%edi)
	movl $19,24(%ebp)
	movl $35,36(%ebp)
	leal 28(%ebp),%ecx
	calll *576(%edi)
	movl %eax,28(%ebp)
	leal 16(%ebp),%ecx
	calll *648(%edi)
	jmp L6004
L6027:
	leal 16(%ebp),%ecx
	calll *480(%edi)
	movl $39,24(%ebp)
	leal 28(%ebp),%ecx
	calll *620(%edi)
	movl %eax,28(%ebp)
	leal 16(%ebp),%ecx
	calll *648(%edi)
	jmp L6004
	jmp L6006
L6005:
	movl 460(%edi),%eax
	mov $L6999,%edx
	mov $16,%ecx
1:	cmp (%edx),%eax
	je 3f
	add $8,%edx
	loop 1b
2:	jmp L6007
3:	jmp *4(%edx)
L6006:
L6004:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	REXP
L6002:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	leal 12(%ebp),%ecx
	calll *696(%edi)
	movl %eax,12(%ebp)
	movl $0,16(%ebp)
	movl $0,20(%ebp)
	movl $0,24(%ebp)
	movl $0,28(%ebp)
L6029:
	movl 460(%edi),%eax
	movl %eax,32(%ebp)
	movl 488(%edi),%eax
	orl %eax,%eax
	jz L6034
	movl 12(%ebp),%eax
	jmp L6028
L6034:
	jmp L6035
L6037:
	movl 12(%ebp),%eax
	jmp L6028
L6038:
	leal 36(%ebp),%ecx
	calll *480(%edi)
	movl $0,16(%ebp)
	cmpl $106,460(%edi)
	je L6039
	leal 36(%ebp),%ecx
	calll *620(%edi)
	movl %eax,16(%ebp)
L6039:
	movl $106,44(%ebp)
	movl $19,48(%ebp)
	leal 36(%ebp),%ecx
	calll *612(%edi)
	movl $10,44(%ebp)
	movl 12(%ebp),%eax
	movl %eax,48(%ebp)
	movl 16(%ebp),%eax
	movl %eax,52(%ebp)
	leal 36(%ebp),%ecx
	calll *652(%edi)
	movl %eax,12(%ebp)
	jmp L6029
L6040:
	movl $36,24(%ebp)
	jmpl *L6033
L6041:
	movl $40,24(%ebp)
	jmpl *L6033
L6042:
L6043:
L6044:
	movl $35,24(%ebp)
	jmpl *L6033
L6045:
L6046:
	movl $34,24(%ebp)
	jmpl *L6033
L6047:
L6048:
L6049:
L6050:
L6051:
L6052:
	cmpl $30,8(%ebp)
	jl L6053
	movl 12(%ebp),%eax
	jmp L6028
L6053:
L6054:
	leal 36(%ebp),%ecx
	calll *480(%edi)
	movl $30,44(%ebp)
	leal 36(%ebp),%ecx
	calll *576(%edi)
	movl %eax,16(%ebp)
	movl 32(%ebp),%eax
	movl %eax,44(%ebp)
	movl 12(%ebp),%eax
	movl %eax,48(%ebp)
	movl 16(%ebp),%eax
	movl %eax,52(%ebp)
	leal 36(%ebp),%ecx
	calll *652(%edi)
	movl %eax,12(%ebp)
	cmpl $0,20(%ebp)
	jne L6055
	movl 12(%ebp),%eax
	movl %eax,20(%ebp)
	jmp L6056
L6055:
	movl $33,44(%ebp)
	movl 20(%ebp),%eax
	movl %eax,48(%ebp)
	movl 12(%ebp),%eax
	movl %eax,52(%ebp)
	leal 36(%ebp),%ecx
	calll *652(%edi)
	movl %eax,20(%ebp)
L6056:
	movl 16(%ebp),%eax
	movl %eax,12(%ebp)
	movl 460(%edi),%eax
	movl %eax,32(%ebp)
	cmpl $20,32(%ebp)
	jl L6057
	cmpl $25,32(%ebp)
	jle L6054
L6057:
	movl 20(%ebp),%eax
	movl %eax,12(%ebp)
	jmp L6029
L6058:
L6059:
	movl $25,24(%ebp)
	movl $30,28(%ebp)
	jmpl *L6031
L6060:
	movl $23,24(%ebp)
	jmpl *L6033
L6061:
	movl $22,24(%ebp)
	jmpl *L6033
L6062:
L6063:
	movl $21,24(%ebp)
	jmpl *L6033
L6064:
	cmpl $13,8(%ebp)
	jl L6065
	movl 12(%ebp),%eax
	jmp L6028
L6065:
	leal 36(%ebp),%ecx
	calll *480(%edi)
	movl $0,44(%ebp)
	leal 36(%ebp),%ecx
	calll *576(%edi)
	movl %eax,16(%ebp)
	movl $38,44(%ebp)
	movl $30,48(%ebp)
	leal 36(%ebp),%ecx
	calll *612(%edi)
	movl $37,44(%ebp)
	movl 12(%ebp),%eax
	movl %eax,48(%ebp)
	movl 16(%ebp),%eax
	movl %eax,52(%ebp)
	movl $0,64(%ebp)
	leal 56(%ebp),%ecx
	calll *576(%edi)
	movl %eax,56(%ebp)
	leal 36(%ebp),%ecx
	calll *656(%edi)
	movl %eax,12(%ebp)
	jmp L6029
L6032:
	movl 24(%ebp),%eax
	movl %eax,28(%ebp)
L6030:
	movl 8(%ebp),%eax
	cmpl 24(%ebp),%eax
	jl L6066
	movl 12(%ebp),%eax
	jmp L6028
L6066:
	leal 36(%ebp),%ecx
	calll *480(%edi)
	movl 32(%ebp),%eax
	movl %eax,44(%ebp)
	movl 12(%ebp),%eax
	movl %eax,48(%ebp)
	movl 28(%ebp),%eax
	movl %eax,60(%ebp)
	leal 52(%ebp),%ecx
	calll *576(%edi)
	movl %eax,52(%ebp)
	leal 36(%ebp),%ecx
	calll *652(%edi)
	movl %eax,12(%ebp)
	jmp L6029
	jmp L6036
L6035:
	movl 32(%ebp),%eax
	mov $L6998,%edx
	mov $21,%ecx
1:	cmp (%edx),%eax
	je 3f
	add $8,%edx
	loop 1b
2:	jmp L6037
3:	jmp *4(%edx)
L6036:
	jmp L6029
L6028:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L6003:
	jmp L6068
//	REXPLIST
L6067:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl $0,8(%ebp)
	leal 8(%ebp),%eax
	shr $2,%eax
	movl %eax,12(%ebp)
L6070:
	movl $0,24(%ebp)
	leal 16(%ebp),%ecx
	calll *576(%edi)
	movl %eax,16(%ebp)
	cmpl $38,460(%edi)
	je L6071
	movl 16(%ebp),%eax
	movl 12(%ebp),%ecx
	mov %eax,(,%ecx,4)
	movl 8(%ebp),%eax
	jmp L6069
L6071:
	leal 20(%ebp),%ecx
	calll *480(%edi)
	movl $38,28(%ebp)
	movl 16(%ebp),%eax
	movl %eax,32(%ebp)
	movl $0,36(%ebp)
	leal 20(%ebp),%ecx
	calll *652(%edi)
	movl 12(%ebp),%ecx
	mov %eax,(,%ecx,4)
	movl 12(%ebp),%eax
	mov (,%eax,4),%eax
	addl $2,%eax
	movl %eax,12(%ebp)
	jmp L6070
L6069:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L6068:
	jmp L6073
//	RDEF
L6072:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	leal 8(%ebp),%ecx
	calll *568(%edi)
	movl %eax,8(%ebp)
	jmp L6075
L6077:
	movl $0,12(%ebp)
	leal 16(%ebp),%ecx
	calll *480(%edi)
	movl 8(%ebp),%eax
	cmpl $2,(,%eax,4)
	je L6078
	movl $40,24(%ebp)
	leal 16(%ebp),%ecx
	calll *604(%edi)
L6078:
	cmpl $2,460(%edi)
	jne L6079
	leal 16(%ebp),%ecx
	calll *568(%edi)
	movl %eax,12(%ebp)
L6079:
	movl $106,24(%ebp)
	movl $41,28(%ebp)
	leal 16(%ebp),%ecx
	calll *612(%edi)
	cmpl $89,460(%edi)
	jne L6080
	leal 16(%ebp),%ecx
	calll *480(%edi)
	movl $45,24(%ebp)
	movl 8(%ebp),%eax
	movl %eax,28(%ebp)
	movl 12(%ebp),%eax
	movl %eax,32(%ebp)
	leal 36(%ebp),%ecx
	calll *584(%edi)
	movl %eax,36(%ebp)
	movl $0,40(%ebp)
	leal 16(%ebp),%ecx
	calll *660(%edi)
	jmp L6074
L6080:
	cmpl $20,460(%edi)
	jne L6081
	leal 16(%ebp),%ecx
	calll *480(%edi)
	movl $44,24(%ebp)
	movl 8(%ebp),%eax
	movl %eax,28(%ebp)
	movl 12(%ebp),%eax
	movl %eax,32(%ebp)
	movl $0,44(%ebp)
	leal 36(%ebp),%ecx
	calll *576(%edi)
	movl %eax,36(%ebp)
	movl $0,40(%ebp)
	leal 16(%ebp),%ecx
	calll *660(%edi)
	jmp L6074
L6081:
	movl $42,24(%ebp)
	leal 16(%ebp),%ecx
	calll *604(%edi)
L6082:
	movl $44,20(%ebp)
	leal 12(%ebp),%ecx
	calll *604(%edi)
L6083:
	leal 12(%ebp),%ecx
	calll *480(%edi)
	cmpl $103,460(%edi)
	jne L6084
	leal 12(%ebp),%ecx
	calll *480(%edi)
	movl 8(%ebp),%eax
	cmpl $2,(,%eax,4)
	je L6085
	movl $43,20(%ebp)
	leal 12(%ebp),%ecx
	calll *604(%edi)
L6085:
	movl $42,20(%ebp)
	movl 8(%ebp),%eax
	movl %eax,24(%ebp)
	movl $0,36(%ebp)
	leal 28(%ebp),%ecx
	calll *576(%edi)
	movl %eax,28(%ebp)
	leal 12(%ebp),%ecx
	calll *652(%edi)
	jmp L6074
L6084:
	movl $41,20(%ebp)
	movl 8(%ebp),%eax
	movl %eax,24(%ebp)
	leal 28(%ebp),%ecx
	calll *620(%edi)
	movl %eax,28(%ebp)
	leal 12(%ebp),%ecx
	calll *652(%edi)
	jmp L6074
	jmp L6076
L6075:
	movl 460(%edi),%eax
	mov $L6997,%edx
	mov $2,%ecx
1:	cmp (%edx),%eax
	je 3f
	add $8,%edx
	loop 1b
2:	jmp L6082
3:	jmp *4(%edx)
L6076:
L6074:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L6073:
	ret
	.data
	.align 4
L6999:
	.long 16
	.long L6008
	.long 4
	.long L6009
	.long 5
	.long L6010
	.long 2
	.long L6011
	.long 3
	.long L6012
	.long 1
	.long L6015
	.long 105
	.long L6016
	.long 6
	.long L6017
	.long 9
	.long L6018
	.long 7
	.long L6019
	.long 8
	.long L6020
	.long 14
	.long L6021
	.long 15
	.long L6022
	.long 30
	.long L6025
	.long 19
	.long L6026
	.long 39
	.long L6027
	.align 4
L6031:
	.long L6030
	.align 4
L6033:
	.long L6032
	.align 4
L6998:
	.long 105
	.long L6038
	.long 28
	.long L6040
	.long 9
	.long L6041
	.long 13
	.long L6042
	.long 11
	.long L6043
	.long 12
	.long L6044
	.long 14
	.long L6045
	.long 15
	.long L6046
	.long 20
	.long L6047
	.long 21
	.long L6048
	.long 24
	.long L6049
	.long 25
	.long L6050
	.long 22
	.long L6051
	.long 23
	.long L6052
	.long 31
	.long L6058
	.long 32
	.long L6059
	.long 33
	.long L6060
	.long 34
	.long L6061
	.long 35
	.long L6062
	.long 36
	.long L6063
	.long 37
	.long L6064
	.align 4
L6997:
	.long 105
	.long L6077
	.long 20
	.long L6083
	.global G174
	.equ G174,L6001
	.global G144
	.equ G144,L6002
	.global G155
	.equ G155,L6067
	.global G145
	.equ G145,L6072
	.text
//	SECTION: SYN4
	jmp L7004
//	RBCOM
L7001:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl $0,8(%ebp)
	movl $0,12(%ebp)
	movl 460(%edi),%eax
	movl %eax,16(%ebp)
	jmp L7006
L7008:
	movl $0,%eax
	jmp L7005
L7009:
L7010:
L7011:
L7012:
L7013:
L7014:
L7015:
L7016:
L7017:
	leal 20(%ebp),%ecx
	calll *620(%edi)
	movl %eax,8(%ebp)
	cmpl $50,460(%edi)
	jne L7018
	movl 460(%edi),%eax
	movl %eax,16(%ebp)
	leal 20(%ebp),%ecx
	calll *480(%edi)
	movl 16(%ebp),%eax
	movl %eax,28(%ebp)
	movl 8(%ebp),%eax
	movl %eax,32(%ebp)
	leal 36(%ebp),%ecx
	calll *620(%edi)
	movl %eax,36(%ebp)
	leal 20(%ebp),%ecx
	calll *652(%edi)
	jmp L7005
L7018:
	cmpl $54,460(%edi)
	jne L7019
	movl 8(%ebp),%eax
	cmpl $2,(,%eax,4)
	je L7020
	movl $50,28(%ebp)
	leal 20(%ebp),%ecx
	calll *604(%edi)
L7020:
	leal 20(%ebp),%ecx
	calll *480(%edi)
	movl $54,28(%ebp)
	movl 8(%ebp),%eax
	movl %eax,32(%ebp)
	leal 36(%ebp),%ecx
	calll *L7002
	movl %eax,36(%ebp)
	movl $0,40(%ebp)
	leal 20(%ebp),%ecx
	calll *656(%edi)
	jmp L7005
L7019:
	movl 8(%ebp),%eax
	cmpl $10,(,%eax,4)
	jne L7021
	movl $51,20(%ebp)
	movl 8(%ebp),%eax
	mov %eax,%ecx
	movl 20(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 8(%ebp),%eax
	jmp L7005
L7021:
	movl $51,28(%ebp)
	leal 20(%ebp),%ecx
	calll *604(%edi)
	movl 8(%ebp),%eax
	jmp L7005
L7022:
L7023:
	leal 20(%ebp),%ecx
	calll *480(%edi)
	movl 16(%ebp),%eax
	movl %eax,28(%ebp)
	movl $0,40(%ebp)
	leal 32(%ebp),%ecx
	calll *576(%edi)
	movl %eax,32(%ebp)
	leal 20(%ebp),%ecx
	calll *648(%edi)
	jmp L7005
L7024:
L7025:
L7026:
L7027:
	leal 20(%ebp),%ecx
	calll *480(%edi)
	movl $0,28(%ebp)
	leal 20(%ebp),%ecx
	calll *576(%edi)
	movl %eax,8(%ebp)
	movl $101,28(%ebp)
	leal 20(%ebp),%ecx
	calll *616(%edi)
	movl 16(%ebp),%eax
	movl %eax,28(%ebp)
	movl 8(%ebp),%eax
	movl %eax,32(%ebp)
	leal 36(%ebp),%ecx
	calll *584(%edi)
	movl %eax,36(%ebp)
	leal 20(%ebp),%ecx
	calll *652(%edi)
	jmp L7005
L7028:
	leal 20(%ebp),%ecx
	calll *480(%edi)
	movl $0,28(%ebp)
	leal 20(%ebp),%ecx
	calll *576(%edi)
	movl %eax,8(%ebp)
	movl $101,28(%ebp)
	leal 20(%ebp),%ecx
	calll *616(%edi)
	leal 20(%ebp),%ecx
	calll *584(%edi)
	movl %eax,12(%ebp)
	movl $102,28(%ebp)
	movl $54,32(%ebp)
	leal 20(%ebp),%ecx
	calll *612(%edi)
	movl $55,28(%ebp)
	movl 8(%ebp),%eax
	movl %eax,32(%ebp)
	movl 12(%ebp),%eax
	movl %eax,36(%ebp)
	leal 40(%ebp),%ecx
	calll *584(%edi)
	movl %eax,40(%ebp)
	leal 20(%ebp),%ecx
	calll *656(%edi)
	jmp L7005
L7029:
	movl $0,20(%ebp)
	movl $0,24(%ebp)
	movl $0,28(%ebp)
	leal 32(%ebp),%ecx
	calll *480(%edi)
	leal 32(%ebp),%ecx
	calll *572(%edi)
	movl %eax,8(%ebp)
	movl $20,40(%ebp)
	movl $57,44(%ebp)
	leal 32(%ebp),%ecx
	calll *612(%edi)
	movl $0,40(%ebp)
	leal 32(%ebp),%ecx
	calll *576(%edi)
	movl %eax,20(%ebp)
	movl $99,40(%ebp)
	movl $58,44(%ebp)
	leal 32(%ebp),%ecx
	calll *612(%edi)
	movl $0,40(%ebp)
	leal 32(%ebp),%ecx
	calll *576(%edi)
	movl %eax,24(%ebp)
	cmpl $100,460(%edi)
	jne L7030
	leal 32(%ebp),%ecx
	calll *480(%edi)
	movl $0,40(%ebp)
	leal 32(%ebp),%ecx
	calll *576(%edi)
	movl %eax,28(%ebp)
L7030:
	movl $101,40(%ebp)
	leal 32(%ebp),%ecx
	calll *616(%edi)
	movl $56,40(%ebp)
	movl 8(%ebp),%eax
	movl %eax,44(%ebp)
	movl 20(%ebp),%eax
	movl %eax,48(%ebp)
	movl 24(%ebp),%eax
	movl %eax,52(%ebp)
	movl 28(%ebp),%eax
	movl %eax,56(%ebp)
	leal 60(%ebp),%ecx
	calll *584(%edi)
	movl %eax,60(%ebp)
	leal 32(%ebp),%ecx
	calll *664(%edi)
	jmp L7005
L7031:
L7032:
L7033:
L7034:
L7035:
	movl 464(%edi),%eax
	movl %eax,8(%ebp)
	leal 20(%ebp),%ecx
	calll *480(%edi)
	movl 8(%ebp),%eax
	jmp L7005
L7036:
	leal 20(%ebp),%ecx
	calll *480(%edi)
	movl $0,28(%ebp)
	leal 20(%ebp),%ecx
	calll *576(%edi)
	movl %eax,8(%ebp)
	movl $98,28(%ebp)
	movl $60,32(%ebp)
	leal 20(%ebp),%ecx
	calll *612(%edi)
	movl $70,28(%ebp)
	movl 8(%ebp),%eax
	movl %eax,32(%ebp)
	movl 624(%edi),%eax
	movl %eax,44(%ebp)
	leal 36(%ebp),%ecx
	calll *564(%edi)
	movl %eax,36(%ebp)
	leal 20(%ebp),%ecx
	calll *652(%edi)
	jmp L7005
L7037:
	leal 20(%ebp),%ecx
	calll *480(%edi)
	movl $0,28(%ebp)
	leal 20(%ebp),%ecx
	calll *576(%edi)
	movl %eax,8(%ebp)
	movl $54,28(%ebp)
	movl $61,32(%ebp)
	leal 20(%ebp),%ecx
	calll *612(%edi)
	movl $71,28(%ebp)
	movl 8(%ebp),%eax
	movl %eax,32(%ebp)
	leal 36(%ebp),%ecx
	calll *L7002
	movl %eax,36(%ebp)
	leal 20(%ebp),%ecx
	calll *652(%edi)
	jmp L7005
L7038:
	leal 20(%ebp),%ecx
	calll *480(%edi)
	movl $54,28(%ebp)
	movl $62,32(%ebp)
	leal 20(%ebp),%ecx
	calll *612(%edi)
	movl $72,28(%ebp)
	leal 32(%ebp),%ecx
	calll *L7002
	movl %eax,32(%ebp)
	leal 20(%ebp),%ecx
	calll *648(%edi)
	jmp L7005
L7039:
	movl 560(%edi),%eax
	movl %eax,28(%ebp)
	leal 20(%ebp),%ecx
	calll *564(%edi)
	jmp L7005
	jmp L7007
L7006:
	movl 460(%edi),%eax
	mov $L7999,%edx
	mov $26,%ecx
1:	cmp (%edx),%eax
	je 3f
	add $8,%edx
	loop 1b
2:	jmp L7008
3:	jmp *4(%edx)
L7007:
L7005:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	RCOM
L7003:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	leal 8(%ebp),%ecx
	calll *L7002
	movl %eax,8(%ebp)
	cmpl $0,8(%ebp)
	jne L7041
	movl $51,20(%ebp)
	leal 12(%ebp),%ecx
	calll *604(%edi)
L7041:
	jmp L7043
L7042:
	movl 460(%edi),%eax
	movl %eax,12(%ebp)
	leal 16(%ebp),%ecx
	calll *480(%edi)
	cmpl $61,12(%ebp)
	jne L7044
	movl 12(%ebp),%eax
	movl %eax,24(%ebp)
	movl 8(%ebp),%eax
	movl %eax,28(%ebp)
	leal 16(%ebp),%ecx
	calll *648(%edi)
	movl %eax,8(%ebp)
	jmp L7045
L7044:
	movl 12(%ebp),%eax
	movl %eax,24(%ebp)
	movl 8(%ebp),%eax
	movl %eax,28(%ebp)
	movl $0,40(%ebp)
	leal 32(%ebp),%ecx
	calll *576(%edi)
	movl %eax,32(%ebp)
	leal 16(%ebp),%ecx
	calll *652(%edi)
	movl %eax,8(%ebp)
L7045:
L7043:
	cmpl $61,460(%edi)
	je L7042
	cmpl $62,460(%edi)
	je L7042
	cmpl $63,460(%edi)
	je L7042
	movl 8(%ebp),%eax
L7040:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L7004:
	ret
	.data
	.align 4
L7002:
	.long L7001
	.align 4
L7999:
	.long 2
	.long L7009
	.long 1
	.long L7010
	.long 3
	.long L7011
	.long 4
	.long L7012
	.long 5
	.long L7013
	.long 7
	.long L7014
	.long 8
	.long L7015
	.long 9
	.long L7016
	.long 105
	.long L7017
	.long 52
	.long L7022
	.long 53
	.long L7023
	.long 57
	.long L7024
	.long 58
	.long L7025
	.long 59
	.long L7026
	.long 60
	.long L7027
	.long 55
	.long L7028
	.long 56
	.long L7029
	.long 65
	.long L7031
	.long 66
	.long L7032
	.long 67
	.long L7033
	.long 68
	.long L7034
	.long 69
	.long L7035
	.long 70
	.long L7036
	.long 71
	.long L7037
	.long 72
	.long L7038
	.long 91
	.long L7039
	.global G146
	.equ G146,L7003
	.text
//	SECTION: PLIST
	jmp L8002
//	PLIST
L8001:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl $0,20(%ebp)
	movl $L8003,%eax
	shr $2,%eax
	movl %eax,24(%ebp)
	cmpl $0,8(%ebp)
	jne L8004
	movl $L8999,%eax
	shr $2,%eax
	movl %eax,36(%ebp)
	leal 28(%ebp),%ecx
	calll *240(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L8004:
	jmp L8005
L8007:
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,36(%ebp)
	leal 28(%ebp),%ecx
	calll *248(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L8008:
	movl $2,%eax
	addl 8(%ebp),%eax
	movl %eax,36(%ebp)
	leal 28(%ebp),%ecx
	calll *240(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L8009:
	movl $L8998,%eax
	shr $2,%eax
	movl %eax,36(%ebp)
	movl 8(%ebp),%eax
	incl %eax
	movl %eax,40(%ebp)
	leal 28(%ebp),%ecx
	calll *304(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L8010:
	movl $2,%eax
	addl 20(%ebp),%eax
	movl %eax,20(%ebp)
L8011:
L8012:
L8013:
L8014:
L8015:
	incl 20(%ebp)
L8016:
L8017:
L8018:
L8019:
L8020:
L8021:
L8022:
L8023:
L8024:
L8025:
L8026:
L8027:
L8028:
L8029:
L8030:
L8031:
L8032:
L8033:
L8034:
L8035:
L8036:
L8037:
L8038:
L8039:
L8040:
L8041:
L8042:
L8043:
L8044:
L8045:
L8046:
L8047:
L8048:
L8049:
L8050:
L8051:
L8052:
L8053:
L8054:
L8055:
L8056:
L8057:
	incl 20(%ebp)
L8058:
L8059:
L8060:
L8061:
L8062:
L8063:
L8064:
L8065:
L8066:
L8067:
L8068:
	incl 20(%ebp)
L8069:
L8070:
L8071:
L8072:
L8073:
L8074:
L8075:
L8076:
L8077:
	incl 20(%ebp)
	movl 16(%ebp),%eax
	cmpl 12(%ebp),%eax
	jne L8078
	movl $L8997,%eax
	shr $2,%eax
	movl %eax,36(%ebp)
	leal 28(%ebp),%ecx
	calll *240(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L8078:
	movl $L8996,%eax
	shr $2,%eax
	movl %eax,36(%ebp)
	leal 28(%ebp),%ecx
	calll *240(%edi)
	movl 8(%ebp),%eax
	mov (,%eax,4),%eax
	movl %eax,36(%ebp)
	leal 28(%ebp),%ecx
	calll *248(%edi)
	movl $2,28(%ebp)
	movl 20(%ebp),%eax
	movl %eax,32(%ebp)
	jmp L8079
L8080:
	leal 36(%ebp),%ecx
	calll *252(%edi)
	movl $0,36(%ebp)
	movl 12(%ebp),%eax
	decl %eax
	movl %eax,40(%ebp)
	jmp L8081
L8082:
	movl 36(%ebp),%eax
	addl 24(%ebp),%eax
	mov (,%eax,4),%eax
	movl %eax,52(%ebp)
	leal 44(%ebp),%ecx
	calll *240(%edi)
	incl 36(%ebp)
L8081:
	movl 36(%ebp),%eax
	cmpl 40(%ebp),%eax
	jle L8082
	movl $L8995,%eax
	shr $2,%eax
	movl %eax,44(%ebp)
	leal 36(%ebp),%ecx
	calll *240(%edi)
	movl 20(%ebp),%eax
	cmpl 28(%ebp),%eax
	jne L8084
	movl $L8994,%eax
	shr $2,%eax
	jmp L8083
L8084:
	movl $L8993,%eax
	shr $2,%eax
L8083:
	movl %eax,36(%ebp)
	movl 12(%ebp),%eax
	addl 24(%ebp),%eax
	mov %eax,%ecx
	movl 36(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 28(%ebp),%eax
	addl 8(%ebp),%eax
	decl %eax
	mov (,%eax,4),%eax
	movl %eax,44(%ebp)
	movl 12(%ebp),%eax
	incl %eax
	movl %eax,48(%ebp)
	movl 16(%ebp),%eax
	movl %eax,52(%ebp)
	leal 36(%ebp),%ecx
	calll *608(%edi)
	incl 28(%ebp)
L8079:
	movl 28(%ebp),%eax
	cmpl 32(%ebp),%eax
	jle L8080
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
	jmp L8006
L8005:
	movl 8(%ebp),%eax
	mov (,%eax,4),%eax
	mov $L8992,%edx
	mov $70,%ecx
1:	cmp (%edx),%eax
	je 3f
	add $8,%edx
	loop 1b
2:	jmp L8077
3:	jmp *4(%edx)
L8006:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L8002:
	ret
	.data
	.align 4
L8003:
	.long 0
	.long 0
	.long 0
	.long 0
	.long 0
	.long 0
	.long 0
	.long 0
	.long 0
	.long 0
	.long 0
	.long 0
	.long 0
	.long 0
	.long 0
	.long 0
	.long 0
	.long 0
	.long 0
	.long 0
	.align 4
L8999:
	.byte 3
	.byte 78
	.byte 73
	.byte 76
	.align 4
L8998:
	.byte 4
	.byte 34
	.byte 37
	.byte 83
	.byte 34
	.align 4
L8997:
	.byte 3
	.byte 69
	.byte 84
	.byte 67
	.align 4
L8996:
	.byte 2
	.byte 79
	.byte 80
	.align 4
L8995:
	.byte 2
	.byte 42
	.byte 45
	.align 4
L8994:
	.byte 2
	.byte 32
	.byte 32
	.align 4
L8993:
	.byte 2
	.byte 33
	.byte 32
	.align 4
L8992:
	.long 1
	.long L8007
	.long 2
	.long L8008
	.long 3
	.long L8009
	.long 56
	.long L8010
	.long 37
	.long L8011
	.long 44
	.long L8012
	.long 45
	.long L8013
	.long 55
	.long L8014
	.long 43
	.long L8015
	.long 48
	.long L8016
	.long 49
	.long L8017
	.long 9
	.long L8018
	.long 28
	.long L8019
	.long 10
	.long L8020
	.long 11
	.long L8021
	.long 12
	.long L8022
	.long 13
	.long L8023
	.long 14
	.long L8024
	.long 15
	.long L8025
	.long 20
	.long L8026
	.long 21
	.long L8027
	.long 22
	.long L8028
	.long 23
	.long L8029
	.long 24
	.long L8030
	.long 25
	.long L8031
	.long 31
	.long L8032
	.long 32
	.long L8033
	.long 33
	.long L8034
	.long 34
	.long L8035
	.long 35
	.long L8036
	.long 36
	.long L8037
	.long 38
	.long L8038
	.long 40
	.long L8039
	.long 41
	.long L8040
	.long 42
	.long L8041
	.long 50
	.long L8042
	.long 51
	.long L8043
	.long 54
	.long L8044
	.long 57
	.long L8045
	.long 58
	.long L8046
	.long 59
	.long L8047
	.long 60
	.long L8048
	.long 62
	.long L8049
	.long 63
	.long L8050
	.long 70
	.long L8051
	.long 71
	.long L8052
	.long 73
	.long L8053
	.long 74
	.long L8054
	.long 75
	.long L8055
	.long 79
	.long L8056
	.long 76
	.long L8057
	.long 6
	.long L8058
	.long 7
	.long L8059
	.long 8
	.long L8060
	.long 17
	.long L8061
	.long 30
	.long L8062
	.long 39
	.long L8063
	.long 52
	.long L8064
	.long 53
	.long L8065
	.long 61
	.long L8066
	.long 72
	.long L8067
	.long 19
	.long L8068
	.long 65
	.long L8069
	.long 66
	.long L8070
	.long 67
	.long L8071
	.long 68
	.long L8072
	.long 69
	.long L8073
	.long 4
	.long L8074
	.long 5
	.long L8075
	.long 16
	.long L8076
	.global G152
	.equ G152,L8001
	.text
//	SECTION: TRN0
	jmp L9005
//	NEXTPARAM
L9001:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	incl 976(%edi)
	movl 976(%edi),%eax
L9006:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	TRANSREPORT
L9002:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl 776(%edi),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *48(%edi)
	incl 764(%edi)
	movl 764(%edi),%eax
	cmpl 768(%edi),%eax
	jl L9007
	movl $L9999,%eax
	shr $2,%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *240(%edi)
	movl $8,24(%ebp)
	leal 16(%ebp),%ecx
	calll *120(%edi)
L9007:
	movl $L9998,%eax
	shr $2,%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *240(%edi)
	movl 8(%ebp),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *L9004
	movl $L9997,%eax
	shr $2,%eax
	movl %eax,24(%ebp)
	movl 1152(%edi),%eax
	movl %eax,28(%ebp)
	leal 16(%ebp),%ecx
	calll *304(%edi)
	movl 12(%ebp),%eax
	movl %eax,24(%ebp)
	movl $0,28(%ebp)
	movl $4,32(%ebp)
	leal 16(%ebp),%ecx
	calll *608(%edi)
	leal 16(%ebp),%ecx
	calll *252(%edi)
	movl 780(%edi),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *48(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	TRNMESSAGE
L9003:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	jmp L9009
L9011:
	movl $L9996,%eax
	shr $2,%eax
	movl %eax,20(%ebp)
	movl 8(%ebp),%eax
	movl %eax,24(%ebp)
	leal 12(%ebp),%ecx
	calll *304(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L9012:
	movl $L9995,%eax
	shr $2,%eax
	jmp L9008
L9013:
	movl $L9994,%eax
	shr $2,%eax
	jmp L9008
L9014:
L9015:
	movl $L9993,%eax
	shr $2,%eax
	jmp L9008
L9016:
	movl $L9992,%eax
	shr $2,%eax
	jmp L9008
L9017:
	movl $L9991,%eax
	shr $2,%eax
	jmp L9008
L9018:
	movl $L9990,%eax
	shr $2,%eax
	jmp L9008
L9019:
	movl $L9989,%eax
	shr $2,%eax
	jmp L9008
L9020:
	movl $L9988,%eax
	shr $2,%eax
	jmp L9008
L9021:
	movl $L9987,%eax
	shr $2,%eax
	jmp L9008
L9022:
L9023:
L9024:
	movl $L9986,%eax
	shr $2,%eax
	jmp L9008
L9025:
L9026:
	movl $L9985,%eax
	shr $2,%eax
	jmp L9008
L9027:
L9028:
	movl $L9984,%eax
	shr $2,%eax
	jmp L9008
	jmp L9010
L9009:
	movl 8(%ebp),%eax
	mov $L9983,%edx
	mov $17,%ecx
1:	cmp (%edx),%eax
	je 3f
	add $8,%edx
	loop 1b
2:	jmp L9011
3:	jmp *4(%edx)
L9010:
L9008:
	movl %eax,12(%ebp)
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *240(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L9005:
	jmp L9030
//	COMPILEAE
L9029:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	leal 16(%ebp),%eax
	shr $2,%eax
	movl %eax,12(%ebp)
	leal 6024(%ebp),%eax
	shr $2,%eax
	movl %eax,6020(%ebp)
	leal 6832(%ebp),%eax
	shr $2,%eax
	movl %eax,6828(%ebp)
	leal 8040(%ebp),%eax
	shr $2,%eax
	movl %eax,8036(%ebp)
	movl 12(%ebp),%eax
	movl %eax,1040(%edi)
	movl $3,1044(%edi)
	movl $3,1048(%edi)
	movl $3,1052(%edi)
	movl $1500,1056(%edi)
	movl $0,9244(%ebp)
	movl $0,%eax
	addl 1040(%edi),%eax
	mov %eax,%ecx
	movl 9244(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl $0,9244(%ebp)
	movl 1040(%edi),%eax
	incl %eax
	mov %eax,%ecx
	movl 9244(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl $0,9244(%ebp)
	movl $2,%eax
	addl 1040(%edi),%eax
	mov %eax,%ecx
	movl 9244(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 6020(%ebp),%eax
	movl %eax,1140(%edi)
	movl $0,1144(%edi)
	movl $200,1148(%edi)
	movl 6828(%ebp),%eax
	movl %eax,1060(%edi)
	movl 8036(%ebp),%eax
	movl %eax,1064(%edi)
	movl $0,1068(%edi)
	movl $300,1072(%edi)
	movl $-1,1076(%edi)
	movl $0,1096(%edi)
	movl $0,1092(%edi)
	movl $-1,1088(%edi)
	movl $-1,1084(%edi)
	movl $-1,1100(%edi)
	movl $0,1152(%edi)
	movl 8(%ebp),%eax
	movl %eax,1080(%edi)
	movl $0,1004(%edi)
	movl $0,976(%edi)
	movl 1128(%edi),%eax
	movl %eax,1120(%edi)
	cmpl $0,8(%ebp)
	je L9031
L9032:
	movl 8(%ebp),%eax
	cmpl $49,(,%eax,4)
	je L9033
	movl 8(%ebp),%eax
	cmpl $48,(,%eax,4)
	je L9033
	jmp L9034
L9033:
	movl 8(%ebp),%eax
	mov (,%eax,4),%eax
	movl %eax,9252(%ebp)
	leal 9244(%ebp),%ecx
	calll *1160(%edi)
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	incl %eax
	movl %eax,9252(%ebp)
	leal 9244(%ebp),%ecx
	calll *1156(%edi)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,8(%ebp)
	jmp L9032
L9034:
L9031:
	movl $91,9252(%ebp)
	movl 1120(%edi),%eax
	movl %eax,9256(%ebp)
	leal 9244(%ebp),%ecx
	calll *1164(%edi)
	movl 8(%ebp),%eax
	movl %eax,9252(%ebp)
	leal 9244(%ebp),%ecx
	calll *836(%edi)
	movl 8(%ebp),%eax
	movl %eax,9252(%ebp)
	leal 9244(%ebp),%ecx
	calll *800(%edi)
	movl $76,9252(%ebp)
	movl 1144(%edi),%eax
	movl $2,%ecx
	cltd
	idivl %ecx
	movl %eax,9256(%ebp)
	leal 9244(%ebp),%ecx
	calll *1164(%edi)
	movl $0,9244(%ebp)
	jmp L9036
L9035:
	movl 9244(%ebp),%eax
	addl 1140(%edi),%eax
	mov (,%eax,4),%eax
	movl %eax,9256(%ebp)
	leal 9248(%ebp),%ecx
	calll *1180(%edi)
	movl 9244(%ebp),%eax
	incl %eax
	addl 1140(%edi),%eax
	mov (,%eax,4),%eax
	movl %eax,9256(%ebp)
	leal 9248(%ebp),%ecx
	calll *1184(%edi)
	movl $2,%eax
	addl 9244(%ebp),%eax
	movl %eax,9244(%ebp)
L9036:
	movl 1144(%edi),%eax
	cmpl 9244(%ebp),%eax
	jne L9035
	leal 9248(%ebp),%ecx
	calll *1008(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L9030:
	ret
	.data
	.align 4
L9004:
	.long L9003
	.align 4
L9999:
	.byte 21
	.byte 10
	.byte 67
	.byte 79
	.byte 77
	.byte 80
	.byte 73
	.byte 76
	.byte 65
	.byte 84
	.byte 73
	.byte 79
	.byte 78
	.byte 32
	.byte 65
	.byte 66
	.byte 79
	.byte 82
	.byte 84
	.byte 69
	.byte 68
	.byte 10
	.align 4
L9998:
	.byte 11
	.byte 10
	.byte 82
	.byte 69
	.byte 80
	.byte 79
	.byte 82
	.byte 84
	.byte 58
	.byte 32
	.byte 32
	.byte 32
	.align 4
L9997:
	.byte 22
	.byte 10
	.byte 67
	.byte 79
	.byte 77
	.byte 77
	.byte 65
	.byte 78
	.byte 68
	.byte 83
	.byte 32
	.byte 67
	.byte 79
	.byte 77
	.byte 80
	.byte 73
	.byte 76
	.byte 69
	.byte 68
	.byte 32
	.byte 37
	.byte 78
	.byte 10
	.align 4
L9996:
	.byte 18
	.byte 67
	.byte 79
	.byte 77
	.byte 80
	.byte 73
	.byte 76
	.byte 69
	.byte 82
	.byte 32
	.byte 69
	.byte 82
	.byte 82
	.byte 79
	.byte 82
	.byte 32
	.byte 32
	.byte 37
	.byte 78
	.align 4
L9995:
	.byte 14
	.byte 84
	.byte 79
	.byte 79
	.byte 32
	.byte 77
	.byte 65
	.byte 78
	.byte 89
	.byte 32
	.byte 67
	.byte 65
	.byte 83
	.byte 69
	.byte 83
	.align 4
L9994:
	.byte 38
	.byte 73
	.byte 76
	.byte 76
	.byte 69
	.byte 71
	.byte 65
	.byte 76
	.byte 32
	.byte 85
	.byte 83
	.byte 69
	.byte 32
	.byte 79
	.byte 70
	.byte 32
	.byte 66
	.byte 82
	.byte 69
	.byte 65
	.byte 75
	.byte 44
	.byte 32
	.byte 76
	.byte 79
	.byte 79
	.byte 80
	.byte 32
	.byte 79
	.byte 82
	.byte 32
	.byte 82
	.byte 69
	.byte 83
	.byte 85
	.byte 76
	.byte 84
	.byte 73
	.byte 83
	.align 4
L9993:
	.byte 30
	.byte 73
	.byte 76
	.byte 76
	.byte 69
	.byte 71
	.byte 65
	.byte 76
	.byte 32
	.byte 85
	.byte 83
	.byte 69
	.byte 32
	.byte 79
	.byte 70
	.byte 32
	.byte 67
	.byte 65
	.byte 83
	.byte 69
	.byte 32
	.byte 79
	.byte 82
	.byte 32
	.byte 68
	.byte 69
	.byte 70
	.byte 65
	.byte 85
	.byte 76
	.byte 84
	.align 4
L9992:
	.byte 28
	.byte 84
	.byte 87
	.byte 79
	.byte 32
	.byte 67
	.byte 65
	.byte 83
	.byte 69
	.byte 83
	.byte 32
	.byte 87
	.byte 73
	.byte 84
	.byte 72
	.byte 32
	.byte 83
	.byte 65
	.byte 77
	.byte 69
	.byte 32
	.byte 67
	.byte 79
	.byte 78
	.byte 83
	.byte 84
	.byte 65
	.byte 78
	.byte 84
	.align 4
L9991:
	.byte 16
	.byte 84
	.byte 79
	.byte 79
	.byte 32
	.byte 77
	.byte 65
	.byte 78
	.byte 89
	.byte 32
	.byte 71
	.byte 76
	.byte 79
	.byte 66
	.byte 65
	.byte 76
	.byte 83
	.align 4
L9990:
	.byte 19
	.byte 78
	.byte 65
	.byte 77
	.byte 69
	.byte 32
	.byte 68
	.byte 69
	.byte 67
	.byte 76
	.byte 65
	.byte 82
	.byte 69
	.byte 68
	.byte 32
	.byte 84
	.byte 87
	.byte 73
	.byte 67
	.byte 69
	.align 4
L9989:
	.byte 23
	.byte 84
	.byte 79
	.byte 79
	.byte 32
	.byte 77
	.byte 65
	.byte 78
	.byte 89
	.byte 32
	.byte 78
	.byte 65
	.byte 77
	.byte 69
	.byte 83
	.byte 32
	.byte 68
	.byte 69
	.byte 67
	.byte 76
	.byte 65
	.byte 82
	.byte 69
	.byte 68
	.align 4
L9988:
	.byte 17
	.byte 78
	.byte 65
	.byte 77
	.byte 69
	.byte 32
	.byte 78
	.byte 79
	.byte 84
	.byte 32
	.byte 68
	.byte 69
	.byte 67
	.byte 76
	.byte 65
	.byte 82
	.byte 69
	.byte 68
	.align 4
L9987:
	.byte 26
	.byte 68
	.byte 89
	.byte 78
	.byte 65
	.byte 77
	.byte 73
	.byte 67
	.byte 32
	.byte 70
	.byte 82
	.byte 69
	.byte 69
	.byte 32
	.byte 86
	.byte 65
	.byte 82
	.byte 73
	.byte 65
	.byte 66
	.byte 76
	.byte 69
	.byte 32
	.byte 85
	.byte 83
	.byte 69
	.byte 68
	.align 4
L9986:
	.byte 28
	.byte 69
	.byte 82
	.byte 82
	.byte 79
	.byte 82
	.byte 32
	.byte 73
	.byte 78
	.byte 32
	.byte 67
	.byte 79
	.byte 78
	.byte 83
	.byte 84
	.byte 65
	.byte 78
	.byte 84
	.byte 32
	.byte 69
	.byte 88
	.byte 80
	.byte 82
	.byte 69
	.byte 83
	.byte 83
	.byte 73
	.byte 79
	.byte 78
	.align 4
L9985:
	.byte 24
	.byte 76
	.byte 72
	.byte 83
	.byte 32
	.byte 65
	.byte 78
	.byte 68
	.byte 32
	.byte 82
	.byte 72
	.byte 83
	.byte 32
	.byte 68
	.byte 79
	.byte 32
	.byte 78
	.byte 79
	.byte 84
	.byte 32
	.byte 77
	.byte 65
	.byte 84
	.byte 67
	.byte 72
	.align 4
L9984:
	.byte 25
	.byte 76
	.byte 84
	.byte 89
	.byte 80
	.byte 69
	.byte 32
	.byte 69
	.byte 88
	.byte 80
	.byte 82
	.byte 69
	.byte 83
	.byte 83
	.byte 73
	.byte 79
	.byte 78
	.byte 32
	.byte 69
	.byte 88
	.byte 80
	.byte 69
	.byte 67
	.byte 84
	.byte 69
	.byte 68
	.align 4
L9983:
	.long 141
	.long L9012
	.long 104
	.long L9013
	.long 101
	.long L9014
	.long 105
	.long L9015
	.long 106
	.long L9016
	.long 144
	.long L9017
	.long 142
	.long L9018
	.long 143
	.long L9019
	.long 115
	.long L9020
	.long 116
	.long L9021
	.long 117
	.long L9022
	.long 118
	.long L9023
	.long 119
	.long L9024
	.long 110
	.long L9025
	.long 112
	.long L9026
	.long 109
	.long L9027
	.long 113
	.long L9028
	.global G243
	.equ G243,L9001
	.global G210
	.equ G210,L9002
	.global G245
	.equ G245,L9029
	.text
//	SECTION: TRN1
	jmp L10002
//	TRANS
L10001:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
L10003:
	movl $0,12(%ebp)
	cmpl $0,8(%ebp)
	jne L10005
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L10005:
	movl 8(%ebp),%eax
	movl %eax,1080(%edi)
	jmp L10006
L10008:
	movl $100,24(%ebp)
	movl 8(%ebp),%eax
	movl %eax,28(%ebp)
	leal 16(%ebp),%ecx
	calll *840(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L10009:
	movl 1048(%edi),%eax
	movl %eax,16(%ebp)
	movl 1044(%edi),%eax
	movl %eax,20(%ebp)
	movl 1120(%edi),%eax
	movl %eax,24(%ebp)
	movl $0,28(%ebp)
	movl 1124(%edi),%eax
	movl %eax,32(%ebp)
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,44(%ebp)
	leal 36(%ebp),%ecx
	calll *804(%edi)
	movl 20(%ebp),%eax
	movl %eax,44(%ebp)
	movl 1044(%edi),%eax
	movl %eax,48(%ebp)
	leal 36(%ebp),%ecx
	calll *816(%edi)
	movl 1044(%edi),%eax
	movl %eax,1048(%edi)
	movl 1120(%edi),%eax
	movl %eax,1124(%edi)
	movl 1120(%edi),%eax
	movl %eax,28(%ebp)
	movl 24(%ebp),%eax
	movl %eax,1120(%edi)
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,44(%ebp)
	leal 36(%ebp),%ecx
	calll *828(%edi)
	movl 28(%ebp),%eax
	cmpl 1120(%edi),%eax
	je L10010
	movl $110,44(%ebp)
	movl 8(%ebp),%eax
	movl %eax,48(%ebp)
	leal 36(%ebp),%ecx
	calll *840(%edi)
L10010:
	movl 1124(%edi),%eax
	cmpl 1120(%edi),%eax
	je L10011
	movl 1124(%edi),%eax
	movl %eax,1120(%edi)
	movl $91,44(%ebp)
	movl 1120(%edi),%eax
	movl %eax,48(%ebp)
	leal 36(%ebp),%ecx
	calll *1164(%edi)
L10011:
	movl $92,44(%ebp)
	leal 36(%ebp),%ecx
	calll *1160(%edi)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,44(%ebp)
	leal 36(%ebp),%ecx
	calll *836(%edi)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,44(%ebp)
	leal 36(%ebp),%ecx
	calll *800(%edi)
	movl 32(%ebp),%eax
	movl %eax,1124(%edi)
	movl 24(%ebp),%eax
	cmpl 1120(%edi),%eax
	je L10012
	movl $91,44(%ebp)
	movl 24(%ebp),%eax
	movl %eax,48(%ebp)
	leal 36(%ebp),%ecx
	calll *1164(%edi)
L10012:
	movl 16(%ebp),%eax
	movl %eax,1048(%edi)
	movl 20(%ebp),%eax
	movl %eax,1044(%edi)
	movl 24(%ebp),%eax
	movl %eax,1120(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L10013:
L10014:
L10015:
	movl 1048(%edi),%eax
	movl %eax,16(%ebp)
	movl 1044(%edi),%eax
	movl %eax,20(%ebp)
	movl 1120(%edi),%eax
	movl %eax,24(%ebp)
	movl 8(%ebp),%eax
	mov (,%eax,4),%eax
	movl %eax,28(%ebp)
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,32(%ebp)
	cmpl $75,28(%ebp)
	jne L10016
	movl $1,28(%ebp)
L10016:
	jmp L10018
L10017:
	cmpl $79,28(%ebp)
	jne L10019
	leal 36(%ebp),%ecx
	calll *972(%edi)
	movl %eax,36(%ebp)
	movl 32(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,48(%ebp)
	movl $78,52(%ebp)
	movl 36(%ebp),%eax
	movl %eax,56(%ebp)
	leal 40(%ebp),%ecx
	calll *820(%edi)
	movl 36(%ebp),%eax
	movl %eax,48(%ebp)
	leal 40(%ebp),%ecx
	calll *936(%edi)
	movl $102,48(%ebp)
	movl 32(%ebp),%eax
	addl $3,%eax
	mov (,%eax,4),%eax
	movl %eax,60(%ebp)
	leal 52(%ebp),%ecx
	calll *940(%edi)
	movl %eax,52(%ebp)
	leal 40(%ebp),%ecx
	calll *1164(%edi)
	jmp L10020
L10019:
	movl 32(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,44(%ebp)
	movl 28(%ebp),%eax
	movl %eax,48(%ebp)
	movl 32(%ebp),%eax
	addl $3,%eax
	mov (,%eax,4),%eax
	movl %eax,60(%ebp)
	leal 52(%ebp),%ecx
	calll *940(%edi)
	movl %eax,52(%ebp)
	leal 36(%ebp),%ecx
	calll *820(%edi)
L10020:
	movl 32(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,32(%ebp)
	movl 1044(%edi),%eax
	movl %eax,1048(%edi)
L10018:
	cmpl $0,32(%ebp)
	jne L10017
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,44(%ebp)
	leal 36(%ebp),%ecx
	calll *836(%edi)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,44(%ebp)
	leal 36(%ebp),%ecx
	calll *800(%edi)
	movl 16(%ebp),%eax
	movl %eax,1048(%edi)
	movl 20(%ebp),%eax
	movl %eax,1044(%edi)
	movl 24(%ebp),%eax
	movl %eax,1120(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L10021:
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,24(%ebp)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,28(%ebp)
	leal 16(%ebp),%ecx
	calll *920(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L10022:
	movl 1120(%edi),%eax
	movl %eax,16(%ebp)
	movl 1128(%edi),%eax
	addl 1120(%edi),%eax
	movl %eax,1120(%edi)
	movl $91,28(%ebp)
	movl 1120(%edi),%eax
	movl %eax,32(%ebp)
	leal 20(%ebp),%ecx
	calll *1164(%edi)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,28(%ebp)
	leal 20(%ebp),%ecx
	calll *932(%edi)
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,28(%ebp)
	leal 20(%ebp),%ecx
	calll *924(%edi)
	movl $51,28(%ebp)
	movl 16(%ebp),%eax
	movl %eax,32(%ebp)
	leal 20(%ebp),%ecx
	calll *1164(%edi)
	movl 16(%ebp),%eax
	movl %eax,1120(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L10023:
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *924(%edi)
	movl $52,24(%ebp)
	leal 16(%ebp),%ecx
	calll *1160(%edi)
	decl 1120(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L10024:
	movl $89,24(%ebp)
	movl 8(%ebp),%eax
	addl $3,%eax
	mov (,%eax,4),%eax
	movl %eax,28(%ebp)
	leal 16(%ebp),%ecx
	calll *1168(%edi)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *800(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L10025:
	movl $-1,12(%ebp)
L10026:
	leal 16(%ebp),%ecx
	calll *972(%edi)
	movl %eax,16(%ebp)
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,28(%ebp)
	movl 12(%ebp),%eax
	movl %eax,32(%ebp)
	movl 16(%ebp),%eax
	movl %eax,36(%ebp)
	leal 20(%ebp),%ecx
	calll *880(%edi)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,28(%ebp)
	leal 20(%ebp),%ecx
	calll *800(%edi)
	movl 16(%ebp),%eax
	movl %eax,28(%ebp)
	leal 20(%ebp),%ecx
	calll *960(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L10027:
	leal 16(%ebp),%ecx
	calll *972(%edi)
	movl %eax,16(%ebp)
	leal 20(%ebp),%ecx
	calll *972(%edi)
	movl %eax,20(%ebp)
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,32(%ebp)
	movl $0,36(%ebp)
	movl 16(%ebp),%eax
	movl %eax,40(%ebp)
	leal 24(%ebp),%ecx
	calll *880(%edi)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,32(%ebp)
	leal 24(%ebp),%ecx
	calll *800(%edi)
	movl 20(%ebp),%eax
	movl %eax,32(%ebp)
	leal 24(%ebp),%ecx
	calll *964(%edi)
	movl 16(%ebp),%eax
	movl %eax,32(%ebp)
	leal 24(%ebp),%ecx
	calll *960(%edi)
	movl 8(%ebp),%eax
	addl $3,%eax
	mov (,%eax,4),%eax
	movl %eax,32(%ebp)
	leal 24(%ebp),%ecx
	calll *800(%edi)
	movl 20(%ebp),%eax
	movl %eax,32(%ebp)
	leal 24(%ebp),%ecx
	calll *960(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L10028:
	cmpl $0,1100(%edi)
	jge L10029
	movl $104,24(%ebp)
	movl 8(%ebp),%eax
	movl %eax,28(%ebp)
	leal 16(%ebp),%ecx
	calll *840(%edi)
L10029:
	cmpl $0,1100(%edi)
	jne L10030
	leal 16(%ebp),%ecx
	calll *972(%edi)
	movl %eax,1100(%edi)
L10030:
	movl 1100(%edi),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *964(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L10031:
	cmpl $0,1084(%edi)
	jge L10032
	movl $104,24(%ebp)
	movl 8(%ebp),%eax
	movl %eax,28(%ebp)
	leal 16(%ebp),%ecx
	calll *840(%edi)
L10032:
	cmpl $0,1084(%edi)
	jne L10033
	leal 16(%ebp),%ecx
	calll *972(%edi)
	movl %eax,1084(%edi)
L10033:
	movl 1084(%edi),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *964(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L10034:
	movl $97,24(%ebp)
	leal 16(%ebp),%ecx
	calll *1160(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L10035:
	movl $68,24(%ebp)
	leal 16(%ebp),%ecx
	calll *1160(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L10036:
	cmpl $0,1088(%edi)
	jge L10037
	movl $104,24(%ebp)
	movl 8(%ebp),%eax
	movl %eax,28(%ebp)
	leal 16(%ebp),%ecx
	calll *840(%edi)
L10037:
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *924(%edi)
	movl $98,24(%ebp)
	movl 1088(%edi),%eax
	movl %eax,28(%ebp)
	leal 16(%ebp),%ecx
	calll *1168(%edi)
	decl 1120(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L10038:
	movl $-1,12(%ebp)
L10039:
	leal 16(%ebp),%ecx
	calll *972(%edi)
	movl %eax,16(%ebp)
	leal 20(%ebp),%ecx
	calll *972(%edi)
	movl %eax,20(%ebp)
	movl 1084(%edi),%eax
	movl %eax,24(%ebp)
	movl 1100(%edi),%eax
	movl %eax,28(%ebp)
	movl $0,1084(%edi)
	movl 20(%ebp),%eax
	movl %eax,1100(%edi)
	movl 20(%ebp),%eax
	movl %eax,40(%ebp)
	leal 32(%ebp),%ecx
	calll *964(%edi)
	movl 16(%ebp),%eax
	movl %eax,40(%ebp)
	leal 32(%ebp),%ecx
	calll *960(%edi)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,40(%ebp)
	leal 32(%ebp),%ecx
	calll *800(%edi)
	movl 20(%ebp),%eax
	movl %eax,40(%ebp)
	leal 32(%ebp),%ecx
	calll *960(%edi)
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,40(%ebp)
	movl 12(%ebp),%eax
	movl %eax,44(%ebp)
	movl 16(%ebp),%eax
	movl %eax,48(%ebp)
	leal 32(%ebp),%ecx
	calll *880(%edi)
	cmpl $0,1084(%edi)
	je L10040
	movl 1084(%edi),%eax
	movl %eax,40(%ebp)
	leal 32(%ebp),%ecx
	calll *960(%edi)
L10040:
	movl 24(%ebp),%eax
	movl %eax,1084(%edi)
	movl 28(%ebp),%eax
	movl %eax,1100(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L10041:
	movl $-1,12(%ebp)
L10042:
L10043:
	leal 16(%ebp),%ecx
	calll *972(%edi)
	movl %eax,16(%ebp)
	movl 1084(%edi),%eax
	movl %eax,20(%ebp)
	movl 1100(%edi),%eax
	movl %eax,24(%ebp)
	movl $0,1084(%edi)
	movl $0,1100(%edi)
	movl 16(%ebp),%eax
	movl %eax,36(%ebp)
	leal 28(%ebp),%ecx
	calll *960(%edi)
	movl 8(%ebp),%eax
	cmpl $61,(,%eax,4)
	jne L10044
	movl 16(%ebp),%eax
	movl %eax,1100(%edi)
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,36(%ebp)
	leal 28(%ebp),%ecx
	calll *800(%edi)
	movl 16(%ebp),%eax
	movl %eax,36(%ebp)
	leal 28(%ebp),%ecx
	calll *964(%edi)
	jmp L10045
L10044:
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,36(%ebp)
	leal 28(%ebp),%ecx
	calll *800(%edi)
	cmpl $0,1100(%edi)
	je L10046
	movl 1100(%edi),%eax
	movl %eax,36(%ebp)
	leal 28(%ebp),%ecx
	calll *960(%edi)
L10046:
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,36(%ebp)
	movl 12(%ebp),%eax
	movl %eax,40(%ebp)
	movl 16(%ebp),%eax
	movl %eax,44(%ebp)
	leal 28(%ebp),%ecx
	calll *880(%edi)
L10045:
	cmpl $0,1084(%edi)
	je L10047
	movl 1084(%edi),%eax
	movl %eax,36(%ebp)
	leal 28(%ebp),%ecx
	calll *960(%edi)
L10047:
	movl 20(%ebp),%eax
	movl %eax,1084(%edi)
	movl 24(%ebp),%eax
	movl %eax,1100(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L10048:
	leal 16(%ebp),%ecx
	calll *972(%edi)
	movl %eax,16(%ebp)
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,28(%ebp)
	leal 20(%ebp),%ecx
	calll *940(%edi)
	movl %eax,20(%ebp)
	movl 1068(%edi),%eax
	cmpl 1072(%edi),%eax
	jl L10049
	movl $141,32(%ebp)
	movl 8(%ebp),%eax
	movl %eax,36(%ebp)
	leal 24(%ebp),%ecx
	calll *840(%edi)
L10049:
	cmpl $0,1076(%edi)
	jge L10050
	movl $105,32(%ebp)
	movl 8(%ebp),%eax
	movl %eax,36(%ebp)
	leal 24(%ebp),%ecx
	calll *840(%edi)
L10050:
	movl 1076(%edi),%eax
	movl %eax,24(%ebp)
	movl 1068(%edi),%eax
	decl %eax
	movl %eax,28(%ebp)
	jmp L10051
L10052:
	movl 24(%ebp),%eax
	addl 1060(%edi),%eax
	mov (,%eax,4),%eax
	cmpl 20(%ebp),%eax
	jne L10053
	movl $106,40(%ebp)
	movl 8(%ebp),%eax
	movl %eax,44(%ebp)
	leal 32(%ebp),%ecx
	calll *840(%edi)
L10053:
	incl 24(%ebp)
L10051:
	movl 24(%ebp),%eax
	cmpl 28(%ebp),%eax
	jle L10052
	movl 20(%ebp),%eax
	movl %eax,24(%ebp)
	movl 1068(%edi),%eax
	addl 1060(%edi),%eax
	mov %eax,%ecx
	movl 24(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 16(%ebp),%eax
	movl %eax,24(%ebp)
	movl 1068(%edi),%eax
	addl 1064(%edi),%eax
	mov %eax,%ecx
	movl 24(%ebp),%eax
	mov %eax,(,%ecx,4)
	incl 1068(%edi)
	movl 16(%ebp),%eax
	movl %eax,32(%ebp)
	leal 24(%ebp),%ecx
	calll *960(%edi)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,32(%ebp)
	leal 24(%ebp),%ecx
	calll *800(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L10054:
	cmpl $0,1076(%edi)
	jge L10055
	movl $105,24(%ebp)
	movl 8(%ebp),%eax
	movl %eax,28(%ebp)
	leal 16(%ebp),%ecx
	calll *840(%edi)
L10055:
	cmpl $0,1092(%edi)
	je L10056
	movl $101,24(%ebp)
	movl 8(%ebp),%eax
	movl %eax,28(%ebp)
	leal 16(%ebp),%ecx
	calll *840(%edi)
L10056:
	leal 16(%ebp),%ecx
	calll *972(%edi)
	movl %eax,1092(%edi)
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *960(%edi)
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *800(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L10057:
	cmpl $0,1076(%edi)
	jge L10058
	movl $105,24(%ebp)
	movl 8(%ebp),%eax
	movl %eax,28(%ebp)
	leal 16(%ebp),%ecx
	calll *840(%edi)
L10058:
	movl 1096(%edi),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *964(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L10059:
	movl 8(%ebp),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *884(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L10060:
	movl 8(%ebp),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *888(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L10061:
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *800(%edi)
	incl 1152(%edi)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,8(%ebp)
	jmpl *L10004
	jmp L10007
L10006:
	movl 8(%ebp),%eax
	mov (,%eax,4),%eax
	mov $L10999,%edx
	mov $27,%ecx
1:	cmp (%edx),%eax
	je 3f
	add $8,%edx
	loop 1b
2:	jmp L10008
3:	jmp *4(%edx)
L10007:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L10002:
	ret
	.data
	.align 4
L10004:
	.long L10003
	.align 4
L10999:
	.long 74
	.long L10009
	.long 79
	.long L10013
	.long 76
	.long L10014
	.long 75
	.long L10015
	.long 50
	.long L10021
	.long 51
	.long L10022
	.long 52
	.long L10023
	.long 54
	.long L10024
	.long 58
	.long L10025
	.long 57
	.long L10026
	.long 55
	.long L10027
	.long 65
	.long L10028
	.long 66
	.long L10031
	.long 67
	.long L10034
	.long 68
	.long L10035
	.long 53
	.long L10036
	.long 59
	.long L10038
	.long 60
	.long L10039
	.long 62
	.long L10041
	.long 63
	.long L10042
	.long 61
	.long L10043
	.long 71
	.long L10048
	.long 72
	.long L10054
	.long 69
	.long L10057
	.long 70
	.long L10059
	.long 56
	.long L10060
	.long 73
	.long L10061
	.global G200
	.equ G200,L10001
	.text
//	SECTION: TRN2
	jmp L11017
//	DECLNAMES
L11001:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	cmpl $0,8(%ebp)
	je L11018
	jmp L11019
L11021:
	movl $102,20(%ebp)
	movl 1080(%edi),%eax
	movl %eax,24(%ebp)
	leal 12(%ebp),%ecx
	calll *840(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L11022:
L11023:
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *808(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L11024:
L11025:
	leal 12(%ebp),%ecx
	calll *972(%edi)
	movl %eax,12(%ebp)
	movl 8(%ebp),%eax
	addl $4,%eax
	mov %eax,%ecx
	movl 12(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	movl 8(%ebp),%eax
	addl $4,%eax
	mov (,%eax,4),%eax
	movl %eax,24(%ebp)
	leal 12(%ebp),%ecx
	calll *812(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L11026:
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *804(%edi)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *804(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
	jmp L11020
L11019:
	movl 8(%ebp),%eax
	mov (,%eax,4),%eax
	mov $L11999,%edx
	mov $5,%ecx
1:	cmp (%edx),%eax
	je 3f
	add $8,%edx
	loop 1b
2:	jmp L11021
3:	jmp *4(%edx)
L11020:
L11018:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	DECLDYN
L11002:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	cmpl $0,8(%ebp)
	je L11027
	movl 8(%ebp),%eax
	cmpl $2,(,%eax,4)
	jne L11028
	movl 8(%ebp),%eax
	movl %eax,20(%ebp)
	movl $77,24(%ebp)
	movl 1120(%edi),%eax
	movl %eax,28(%ebp)
	leal 12(%ebp),%ecx
	calll *820(%edi)
	incl 1120(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L11028:
	movl 8(%ebp),%eax
	cmpl $38,(,%eax,4)
	jne L11029
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	movl $77,24(%ebp)
	movl 1120(%edi),%eax
	movl %eax,28(%ebp)
	leal 12(%ebp),%ecx
	calll *820(%edi)
	incl 1120(%edi)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *808(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L11029:
	movl $103,20(%ebp)
	movl 8(%ebp),%eax
	movl %eax,24(%ebp)
	leal 12(%ebp),%ecx
	calll *840(%edi)
L11027:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	DECLSTAT
L11003:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl 8(%ebp),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *824(%edi)
	movl %eax,16(%ebp)
	movl 16(%ebp),%eax
	incl %eax
	addl 1040(%edi),%eax
	cmpl $76,(,%eax,4)
	jne L11030
	movl $2,%eax
	addl 16(%ebp),%eax
	addl 1040(%edi),%eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	movl 8(%ebp),%eax
	movl %eax,32(%ebp)
	movl $76,36(%ebp)
	movl 20(%ebp),%eax
	movl %eax,40(%ebp)
	leal 24(%ebp),%ecx
	calll *820(%edi)
	movl 1144(%edi),%eax
	cmpl 1148(%edi),%eax
	jl L11031
	movl $144,32(%ebp)
	movl 8(%ebp),%eax
	movl %eax,36(%ebp)
	leal 24(%ebp),%ecx
	calll *840(%edi)
L11031:
	movl 20(%ebp),%eax
	movl %eax,24(%ebp)
	movl 1144(%edi),%eax
	addl 1140(%edi),%eax
	mov %eax,%ecx
	movl 24(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 12(%ebp),%eax
	movl %eax,24(%ebp)
	movl 1144(%edi),%eax
	incl %eax
	addl 1140(%edi),%eax
	mov %eax,%ecx
	movl 24(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl $2,%eax
	addl 1144(%edi),%eax
	movl %eax,1144(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L11030:
	leal 20(%ebp),%ecx
	calll *972(%edi)
	movl %eax,20(%ebp)
	movl 8(%ebp),%eax
	movl %eax,32(%ebp)
	movl $78,36(%ebp)
	movl 20(%ebp),%eax
	movl %eax,40(%ebp)
	leal 24(%ebp),%ecx
	calll *820(%edi)
	movl 20(%ebp),%eax
	movl %eax,32(%ebp)
	leal 24(%ebp),%ecx
	calll *936(%edi)
	movl $101,32(%ebp)
	movl 12(%ebp),%eax
	movl %eax,36(%ebp)
	leal 24(%ebp),%ecx
	calll *1168(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	DECLLABELS
L11004:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl 1044(%edi),%eax
	movl %eax,12(%ebp)
	movl 8(%ebp),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *L11009
	movl 12(%ebp),%eax
	movl %eax,24(%ebp)
	movl 1044(%edi),%eax
	movl %eax,28(%ebp)
	leal 16(%ebp),%ecx
	calll *816(%edi)
	movl 1044(%edi),%eax
	movl %eax,1048(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	CHECKDISTINCT
L11005:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	jmp L11033
L11032:
	movl $3,%eax
	addl 8(%ebp),%eax
	movl %eax,16(%ebp)
	movl 8(%ebp),%eax
	addl 1040(%edi),%eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	jmp L11035
L11034:
	movl 16(%ebp),%eax
	addl 1040(%edi),%eax
	mov (,%eax,4),%eax
	cmpl 20(%ebp),%eax
	jne L11036
	movl $142,32(%ebp)
	movl 20(%ebp),%eax
	movl %eax,36(%ebp)
	leal 24(%ebp),%ecx
	calll *840(%edi)
L11036:
	movl $3,%eax
	addl 16(%ebp),%eax
	movl %eax,16(%ebp)
L11035:
	movl 16(%ebp),%eax
	cmpl 12(%ebp),%eax
	jl L11034
	movl $3,%eax
	addl 8(%ebp),%eax
	movl %eax,8(%ebp)
L11033:
	movl 12(%ebp),%eax
	cmpl 8(%ebp),%eax
	jne L11032
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	ADDNAME
L11006:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl 1044(%edi),%eax
	cmpl 1056(%edi),%eax
	jl L11037
	movl $143,28(%ebp)
	movl 1080(%edi),%eax
	movl %eax,32(%ebp)
	leal 20(%ebp),%ecx
	calll *840(%edi)
L11037:
	movl 8(%ebp),%eax
	movl %eax,20(%ebp)
	movl 1044(%edi),%eax
	addl 1040(%edi),%eax
	mov %eax,%ecx
	movl 20(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 12(%ebp),%eax
	movl %eax,20(%ebp)
	movl 1044(%edi),%eax
	incl %eax
	addl 1040(%edi),%eax
	mov %eax,%ecx
	movl 20(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 16(%ebp),%eax
	movl %eax,20(%ebp)
	movl $2,%eax
	addl 1044(%edi),%eax
	addl 1040(%edi),%eax
	mov %eax,%ecx
	movl 20(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl $3,%eax
	addl 1044(%edi),%eax
	movl %eax,1044(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	CELLWITHNAME
L11007:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl 1048(%edi),%eax
	movl %eax,12(%ebp)
L11039:
	movl 12(%ebp),%eax
	subl $3,%eax
	movl %eax,12(%ebp)
	cmpl $0,12(%ebp)
	je L11040
	movl 12(%ebp),%eax
	addl 1040(%edi),%eax
	mov (,%eax,4),%eax
	cmpl 8(%ebp),%eax
	jne L11039
L11040:
	movl 12(%ebp),%eax
L11038:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	SCANLABELS
L11008:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	cmpl $0,8(%ebp)
	je L11041
	jmp L11042
L11044:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L11045:
	leal 12(%ebp),%ecx
	calll *972(%edi)
	movl %eax,12(%ebp)
	movl 8(%ebp),%eax
	addl $3,%eax
	mov %eax,%ecx
	movl 12(%ebp),%eax
	mov %eax,(,%ecx,4)
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	movl 8(%ebp),%eax
	addl $3,%eax
	mov (,%eax,4),%eax
	movl %eax,24(%ebp)
	leal 12(%ebp),%ecx
	calll *812(%edi)
L11046:
L11047:
L11048:
L11049:
L11050:
L11051:
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *L11009
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L11052:
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *L11009
L11053:
L11054:
L11055:
L11056:
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *L11009
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L11057:
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *L11009
	movl 8(%ebp),%eax
	addl $3,%eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *L11009
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
	jmp L11043
L11042:
	movl 8(%ebp),%eax
	mov (,%eax,4),%eax
	mov $L11998,%edx
	mov $13,%ecx
1:	cmp (%edx),%eax
	je 3f
	add $8,%edx
	loop 1b
2:	jmp L11044
3:	jmp *4(%edx)
L11043:
L11041:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	TRANSDEF
L11010:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl 8(%ebp),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *L11012
	movl 8(%ebp),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *L11016
	orl %eax,%eax
	jz L11058
	leal 12(%ebp),%ecx
	calll *972(%edi)
	movl %eax,12(%ebp)
	movl 1120(%edi),%eax
	movl %eax,16(%ebp)
	movl 12(%ebp),%eax
	movl %eax,28(%ebp)
	leal 20(%ebp),%ecx
	calll *964(%edi)
	movl 8(%ebp),%eax
	movl %eax,28(%ebp)
	leal 20(%ebp),%ecx
	calll *L11014
	movl 16(%ebp),%eax
	movl %eax,1120(%edi)
	movl $91,28(%ebp)
	movl 1120(%edi),%eax
	movl %eax,32(%ebp)
	leal 20(%ebp),%ecx
	calll *1164(%edi)
	movl 12(%ebp),%eax
	movl %eax,28(%ebp)
	leal 20(%ebp),%ecx
	calll *960(%edi)
L11058:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	TRANSDYNDEFS
L11011:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	jmp L11059
L11061:
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *L11012
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *L11012
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L11062:
	movl $45,20(%ebp)
	movl 1124(%edi),%eax
	movl %eax,24(%ebp)
	leal 12(%ebp),%ecx
	calll *1164(%edi)
	incl 1120(%edi)
	movl 1124(%edi),%eax
	incl %eax
	movl %eax,12(%ebp)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *940(%edi)
	mov %eax,%ecx
	movl 12(%ebp),%eax
	addl %ecx,%eax
	movl %eax,1124(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L11063:
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *932(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L11064:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
	jmp L11060
L11059:
	movl 8(%ebp),%eax
	mov (,%eax,4),%eax
	mov $L11997,%edx
	mov $3,%ecx
1:	cmp (%edx),%eax
	je 3f
	add $8,%edx
	loop 1b
2:	jmp L11064
3:	jmp *4(%edx)
L11060:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	TRANSSTATDEFS
L11013:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	jmp L11065
L11067:
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *L11014
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *L11014
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L11068:
L11069:
	movl 1048(%edi),%eax
	movl %eax,12(%ebp)
	movl 1044(%edi),%eax
	movl %eax,16(%ebp)
	movl 1052(%edi),%eax
	movl %eax,20(%ebp)
	movl 1084(%edi),%eax
	movl %eax,24(%ebp)
	movl 1100(%edi),%eax
	movl %eax,28(%ebp)
	movl 1088(%edi),%eax
	movl %eax,32(%ebp)
	movl 1076(%edi),%eax
	movl %eax,36(%ebp)
	movl $-1,1084(%edi)
	movl $-1,1100(%edi)
	movl $-1,1088(%edi)
	movl $-1,1076(%edi)
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,48(%ebp)
	movl 8(%ebp),%eax
	addl $4,%eax
	mov (,%eax,4),%eax
	movl %eax,52(%ebp)
	leal 40(%ebp),%ecx
	calll *968(%edi)
	movl 1128(%edi),%eax
	movl %eax,1120(%edi)
	movl 1044(%edi),%eax
	movl %eax,1052(%edi)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,48(%ebp)
	leal 40(%ebp),%ecx
	calll *808(%edi)
	movl 16(%ebp),%eax
	movl %eax,48(%ebp)
	movl 1044(%edi),%eax
	movl %eax,52(%ebp)
	leal 40(%ebp),%ecx
	calll *816(%edi)
	movl 1044(%edi),%eax
	movl %eax,1048(%edi)
	movl 8(%ebp),%eax
	addl $3,%eax
	mov (,%eax,4),%eax
	movl %eax,48(%ebp)
	leal 40(%ebp),%ecx
	calll *836(%edi)
	movl $95,48(%ebp)
	movl 1120(%edi),%eax
	movl %eax,52(%ebp)
	leal 40(%ebp),%ecx
	calll *1164(%edi)
	movl 8(%ebp),%eax
	cmpl $44,(,%eax,4)
	jne L11070
	movl 8(%ebp),%eax
	addl $3,%eax
	mov (,%eax,4),%eax
	movl %eax,48(%ebp)
	leal 40(%ebp),%ecx
	calll *924(%edi)
	movl $96,48(%ebp)
	leal 40(%ebp),%ecx
	calll *1160(%edi)
	jmp L11071
L11070:
	movl 8(%ebp),%eax
	addl $3,%eax
	mov (,%eax,4),%eax
	movl %eax,48(%ebp)
	leal 40(%ebp),%ecx
	calll *800(%edi)
	movl $97,48(%ebp)
	leal 40(%ebp),%ecx
	calll *1160(%edi)
L11071:
	movl $103,48(%ebp)
	movl $0,52(%ebp)
	leal 40(%ebp),%ecx
	calll *1164(%edi)
	movl 24(%ebp),%eax
	movl %eax,1084(%edi)
	movl 28(%ebp),%eax
	movl %eax,1100(%edi)
	movl 32(%ebp),%eax
	movl %eax,1088(%edi)
	movl 36(%ebp),%eax
	movl %eax,1076(%edi)
	movl 12(%ebp),%eax
	movl %eax,1048(%edi)
	movl 16(%ebp),%eax
	movl %eax,1044(%edi)
	movl 20(%ebp),%eax
	movl %eax,1052(%edi)
L11072:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
	jmp L11066
L11065:
	movl 8(%ebp),%eax
	mov (,%eax,4),%eax
	mov $L11996,%edx
	mov $3,%ecx
1:	cmp (%edx),%eax
	je 3f
	add $8,%edx
	loop 1b
2:	jmp L11072
3:	jmp *4(%edx)
L11066:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	STATDEFS
L11015:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl 8(%ebp),%eax
	cmpl $44,(,%eax,4)
	je L11075
	movl 8(%ebp),%eax
	cmpl $45,(,%eax,4)
	jne L11074
L11075:
	movl $-1,%eax
	jmp L11073
L11074:
	movl 8(%ebp),%eax
	cmpl $40,(,%eax,4)
	je L11077
	movl $0,%eax
	jmp L11076
L11077:
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *L11016
	orl %eax,%eax
	jz L11079
	movl $-1,%eax
	jmp L11078
L11079:
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *L11016
L11078:
L11076:
L11073:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L11017:
	ret
	.data
	.align 4
L11009:
	.long L11008
	.align 4
L11012:
	.long L11011
	.align 4
L11014:
	.long L11013
	.align 4
L11016:
	.long L11015
	.align 4
L11999:
	.long 42
	.long L11022
	.long 41
	.long L11023
	.long 45
	.long L11024
	.long 44
	.long L11025
	.long 40
	.long L11026
	.align 4
L11998:
	.long 54
	.long L11045
	.long 57
	.long L11046
	.long 58
	.long L11047
	.long 59
	.long L11048
	.long 60
	.long L11049
	.long 70
	.long L11050
	.long 71
	.long L11051
	.long 73
	.long L11052
	.long 61
	.long L11053
	.long 62
	.long L11054
	.long 63
	.long L11055
	.long 72
	.long L11056
	.long 55
	.long L11057
	.align 4
L11997:
	.long 40
	.long L11061
	.long 42
	.long L11062
	.long 41
	.long L11063
	.align 4
L11996:
	.long 40
	.long L11067
	.long 44
	.long L11068
	.long 45
	.long L11069
	.global G201
	.equ G201,L11001
	.global G202
	.equ G202,L11002
	.global G203
	.equ G203,L11003
	.global G209
	.equ G209,L11004
	.global G204
	.equ G204,L11005
	.global G205
	.equ G205,L11006
	.global G206
	.equ G206,L11007
	.global G207
	.equ G207,L11010
	.text
//	SECTION: TRN3
	jmp L12004
//	JUMPCOND
L12001:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl 12(%ebp),%eax
	movl %eax,20(%ebp)
	jmp L12005
L12007:
	notl 12(%ebp)
L12008:
	movl 12(%ebp),%eax
	orl %eax,%eax
	jz L12009
	movl 16(%ebp),%eax
	movl %eax,32(%ebp)
	leal 24(%ebp),%ecx
	calll *964(%edi)
L12009:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L12010:
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,32(%ebp)
	movl 12(%ebp),%eax
	notl %eax
	movl %eax,36(%ebp)
	movl 16(%ebp),%eax
	movl %eax,40(%ebp)
	leal 24(%ebp),%ecx
	calll *880(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L12011:
	notl 20(%ebp)
L12012:
	movl 20(%ebp),%eax
	orl %eax,%eax
	jz L12013
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,32(%ebp)
	movl 12(%ebp),%eax
	movl %eax,36(%ebp)
	movl 16(%ebp),%eax
	movl %eax,40(%ebp)
	leal 24(%ebp),%ecx
	calll *880(%edi)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,32(%ebp)
	movl 12(%ebp),%eax
	movl %eax,36(%ebp)
	movl 16(%ebp),%eax
	movl %eax,40(%ebp)
	leal 24(%ebp),%ecx
	calll *880(%edi)
	jmp L12014
L12013:
	leal 24(%ebp),%ecx
	calll *972(%edi)
	movl %eax,24(%ebp)
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,36(%ebp)
	movl 12(%ebp),%eax
	notl %eax
	movl %eax,40(%ebp)
	movl 24(%ebp),%eax
	movl %eax,44(%ebp)
	leal 28(%ebp),%ecx
	calll *880(%edi)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,36(%ebp)
	movl 12(%ebp),%eax
	movl %eax,40(%ebp)
	movl 16(%ebp),%eax
	movl %eax,44(%ebp)
	leal 28(%ebp),%ecx
	calll *880(%edi)
	movl 24(%ebp),%eax
	movl %eax,36(%ebp)
	leal 28(%ebp),%ecx
	calll *960(%edi)
L12014:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L12015:
	movl 8(%ebp),%eax
	movl %eax,32(%ebp)
	leal 24(%ebp),%ecx
	calll *924(%edi)
	movl 12(%ebp),%eax
	orl %eax,%eax
	jz L12017
	movl $86,%eax
	jmp L12016
L12017:
	movl $87,%eax
L12016:
	movl %eax,32(%ebp)
	movl 16(%ebp),%eax
	movl %eax,36(%ebp)
	leal 24(%ebp),%ecx
	calll *1168(%edi)
	decl 1120(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
	jmp L12006
L12005:
	movl 8(%ebp),%eax
	mov (,%eax,4),%eax
	mov $L12999,%edx
	mov $5,%ecx
1:	cmp (%edx),%eax
	je 3f
	add $8,%edx
	loop 1b
2:	jmp L12015
3:	jmp *4(%edx)
L12006:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	TRANSSWITCH
L12002:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl 1068(%edi),%eax
	movl %eax,12(%ebp)
	movl 1076(%edi),%eax
	movl %eax,16(%ebp)
	movl 1092(%edi),%eax
	movl %eax,20(%ebp)
	movl 1096(%edi),%eax
	movl %eax,24(%ebp)
	leal 28(%ebp),%ecx
	calll *972(%edi)
	movl %eax,28(%ebp)
	leal 32(%ebp),%ecx
	calll *972(%edi)
	movl %eax,1096(%edi)
	movl 1068(%edi),%eax
	movl %eax,1076(%edi)
	movl 28(%ebp),%eax
	movl %eax,40(%ebp)
	leal 32(%ebp),%ecx
	calll *964(%edi)
	movl $0,1092(%edi)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,40(%ebp)
	leal 32(%ebp),%ecx
	calll *800(%edi)
	movl 1096(%edi),%eax
	movl %eax,40(%ebp)
	leal 32(%ebp),%ecx
	calll *964(%edi)
	movl 28(%ebp),%eax
	movl %eax,40(%ebp)
	leal 32(%ebp),%ecx
	calll *960(%edi)
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,40(%ebp)
	leal 32(%ebp),%ecx
	calll *924(%edi)
	cmpl $0,1092(%edi)
	jne L12018
	movl 1096(%edi),%eax
	movl %eax,1092(%edi)
L12018:
	movl $70,40(%ebp)
	movl 1068(%edi),%eax
	subl 12(%ebp),%eax
	movl %eax,44(%ebp)
	movl 1092(%edi),%eax
	movl %eax,48(%ebp)
	leal 32(%ebp),%ecx
	calll *1176(%edi)
	movl 1076(%edi),%eax
	movl %eax,32(%ebp)
	movl 1068(%edi),%eax
	decl %eax
	movl %eax,36(%ebp)
	jmp L12019
L12020:
	movl 32(%ebp),%eax
	addl 1060(%edi),%eax
	mov (,%eax,4),%eax
	movl %eax,48(%ebp)
	leal 40(%ebp),%ecx
	calll *1180(%edi)
	movl 32(%ebp),%eax
	addl 1064(%edi),%eax
	mov (,%eax,4),%eax
	movl %eax,48(%ebp)
	leal 40(%ebp),%ecx
	calll *1184(%edi)
	incl 32(%ebp)
L12019:
	movl 32(%ebp),%eax
	cmpl 36(%ebp),%eax
	jle L12020
	decl 1120(%edi)
	movl 1096(%edi),%eax
	movl %eax,40(%ebp)
	leal 32(%ebp),%ecx
	calll *960(%edi)
	movl 24(%ebp),%eax
	movl %eax,1096(%edi)
	movl 12(%ebp),%eax
	movl %eax,1068(%edi)
	movl 16(%ebp),%eax
	movl %eax,1076(%edi)
	movl 20(%ebp),%eax
	movl %eax,1092(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	TRANSFOR
L12003:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl 1048(%edi),%eax
	movl %eax,12(%ebp)
	movl 1044(%edi),%eax
	movl %eax,16(%ebp)
	leal 20(%ebp),%ecx
	calll *972(%edi)
	movl %eax,20(%ebp)
	leal 24(%ebp),%ecx
	calll *972(%edi)
	movl %eax,24(%ebp)
	movl 1084(%edi),%eax
	movl %eax,28(%ebp)
	movl 1100(%edi),%eax
	movl %eax,32(%ebp)
	movl $0,36(%ebp)
	movl $0,40(%ebp)
	movl $1,44(%ebp)
	movl 1120(%edi),%eax
	movl %eax,48(%ebp)
	movl $0,1084(%edi)
	movl $0,1100(%edi)
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,60(%ebp)
	movl $77,64(%ebp)
	movl 48(%ebp),%eax
	movl %eax,68(%ebp)
	leal 52(%ebp),%ecx
	calll *820(%edi)
	movl 1044(%edi),%eax
	movl %eax,1048(%edi)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,60(%ebp)
	leal 52(%ebp),%ecx
	calll *924(%edi)
	movl 8(%ebp),%eax
	addl $3,%eax
	mov (,%eax,4),%eax
	cmpl $1,(,%eax,4)
	jne L12021
	movl $42,36(%ebp)
	movl 8(%ebp),%eax
	addl $3,%eax
	mov (,%eax,4),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,40(%ebp)
	jmp L12022
L12021:
	movl $40,36(%ebp)
	movl 1120(%edi),%eax
	movl %eax,40(%ebp)
	movl 8(%ebp),%eax
	addl $3,%eax
	mov (,%eax,4),%eax
	movl %eax,60(%ebp)
	leal 52(%ebp),%ecx
	calll *924(%edi)
L12022:
	movl 8(%ebp),%eax
	addl $4,%eax
	cmpl $0,(,%eax,4)
	je L12023
	movl 8(%ebp),%eax
	addl $4,%eax
	mov (,%eax,4),%eax
	movl %eax,60(%ebp)
	leal 52(%ebp),%ecx
	calll *940(%edi)
	movl %eax,44(%ebp)
L12023:
	movl $92,60(%ebp)
	leal 52(%ebp),%ecx
	calll *1160(%edi)
	movl 20(%ebp),%eax
	movl %eax,60(%ebp)
	leal 52(%ebp),%ecx
	calll *964(%edi)
	movl 8(%ebp),%eax
	addl $5,%eax
	mov (,%eax,4),%eax
	movl %eax,60(%ebp)
	leal 52(%ebp),%ecx
	calll *836(%edi)
	movl 24(%ebp),%eax
	movl %eax,60(%ebp)
	leal 52(%ebp),%ecx
	calll *960(%edi)
	movl 8(%ebp),%eax
	addl $5,%eax
	mov (,%eax,4),%eax
	movl %eax,60(%ebp)
	leal 52(%ebp),%ecx
	calll *800(%edi)
	cmpl $0,1100(%edi)
	je L12024
	movl 1100(%edi),%eax
	movl %eax,60(%ebp)
	leal 52(%ebp),%ecx
	calll *960(%edi)
L12024:
	movl $40,60(%ebp)
	movl 48(%ebp),%eax
	movl %eax,64(%ebp)
	leal 52(%ebp),%ecx
	calll *1164(%edi)
	movl $42,60(%ebp)
	movl 44(%ebp),%eax
	movl %eax,64(%ebp)
	leal 52(%ebp),%ecx
	calll *1164(%edi)
	movl $14,60(%ebp)
	leal 52(%ebp),%ecx
	calll *1160(%edi)
	movl $80,60(%ebp)
	movl 48(%ebp),%eax
	movl %eax,64(%ebp)
	leal 52(%ebp),%ecx
	calll *1164(%edi)
	movl 20(%ebp),%eax
	movl %eax,60(%ebp)
	leal 52(%ebp),%ecx
	calll *960(%edi)
	cmpl $0,44(%ebp)
	jle L12025
	movl $40,60(%ebp)
	movl 48(%ebp),%eax
	movl %eax,64(%ebp)
	leal 52(%ebp),%ecx
	calll *1164(%edi)
	movl 36(%ebp),%eax
	movl %eax,60(%ebp)
	movl 40(%ebp),%eax
	movl %eax,64(%ebp)
	leal 52(%ebp),%ecx
	calll *1164(%edi)
	jmp L12026
L12025:
	movl 36(%ebp),%eax
	movl %eax,60(%ebp)
	movl 40(%ebp),%eax
	movl %eax,64(%ebp)
	leal 52(%ebp),%ecx
	calll *1164(%edi)
	movl $40,60(%ebp)
	movl 48(%ebp),%eax
	movl %eax,64(%ebp)
	leal 52(%ebp),%ecx
	calll *1164(%edi)
L12026:
	movl $88,60(%ebp)
	movl 24(%ebp),%eax
	movl %eax,64(%ebp)
	leal 52(%ebp),%ecx
	calll *1168(%edi)
	cmpl $0,1084(%edi)
	je L12027
	movl 1084(%edi),%eax
	movl %eax,60(%ebp)
	leal 52(%ebp),%ecx
	calll *960(%edi)
L12027:
	movl 28(%ebp),%eax
	movl %eax,1084(%edi)
	movl 32(%ebp),%eax
	movl %eax,1100(%edi)
	movl 48(%ebp),%eax
	movl %eax,1120(%edi)
	movl $91,60(%ebp)
	movl 1120(%edi),%eax
	movl %eax,64(%ebp)
	leal 52(%ebp),%ecx
	calll *1164(%edi)
	movl 12(%ebp),%eax
	movl %eax,1048(%edi)
	movl 16(%ebp),%eax
	movl %eax,1044(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L12004:
	ret
	.data
	.align 4
L12999:
	.long 5
	.long L12007
	.long 4
	.long L12008
	.long 30
	.long L12010
	.long 33
	.long L12011
	.long 34
	.long L12012
	.global G220
	.equ G220,L12001
	.global G221
	.equ G221,L12002
	.global G222
	.equ G222,L12003
	.text
//	SECTION: TRN4
	jmp L13005
//	LOAD
L13001:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	cmpl $0,8(%ebp)
	jne L13006
	movl $148,20(%ebp)
	movl 1080(%edi),%eax
	movl %eax,24(%ebp)
	leal 12(%ebp),%ecx
	calll *840(%edi)
	leal 12(%ebp),%ecx
	calll *944(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L13006:
	movl 8(%ebp),%eax
	mov (,%eax,4),%eax
	movl %eax,12(%ebp)
	jmp L13007
L13009:
	movl $147,24(%ebp)
	movl 1080(%edi),%eax
	movl %eax,28(%ebp)
	leal 16(%ebp),%ecx
	calll *840(%edi)
	leal 16(%ebp),%ecx
	calll *944(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L13010:
	movl $120,12(%ebp)
L13011:
L13012:
L13013:
L13014:
L13015:
L13016:
L13017:
L13018:
L13019:
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *924(%edi)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *924(%edi)
	movl 12(%ebp),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *1160(%edi)
	decl 1120(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L13020:
L13021:
L13022:
L13023:
L13024:
L13025:
L13026:
L13027:
L13028:
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,16(%ebp)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	movl 16(%ebp),%eax
	cmpl $2,(,%eax,4)
	je L13030
	movl 16(%ebp),%eax
	cmpl $1,(,%eax,4)
	jne L13029
L13030:
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,16(%ebp)
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
L13029:
	movl 16(%ebp),%eax
	movl %eax,32(%ebp)
	leal 24(%ebp),%ecx
	calll *924(%edi)
	movl 20(%ebp),%eax
	movl %eax,32(%ebp)
	leal 24(%ebp),%ecx
	calll *924(%edi)
	cmpl $9,12(%ebp)
	jne L13031
	movl $14,32(%ebp)
	leal 24(%ebp),%ecx
	calll *1160(%edi)
	movl $8,12(%ebp)
L13031:
	movl 12(%ebp),%eax
	movl %eax,32(%ebp)
	leal 24(%ebp),%ecx
	calll *1160(%edi)
	decl 1120(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L13032:
L13033:
L13034:
L13035:
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *924(%edi)
	movl 12(%ebp),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *1160(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L13036:
L13037:
L13038:
	movl 12(%ebp),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *1160(%edi)
	incl 1120(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L13039:
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *928(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L13040:
	movl $42,24(%ebp)
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,28(%ebp)
	leal 16(%ebp),%ecx
	calll *1164(%edi)
	incl 1120(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L13041:
	movl $43,24(%ebp)
	leal 16(%ebp),%ecx
	calll *1160(%edi)
	movl 8(%ebp),%eax
	incl %eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *1156(%edi)
	movl $32,24(%ebp)
	leal 16(%ebp),%ecx
	calll *1000(%edi)
	incl 1120(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L13042:
	movl 8(%ebp),%eax
	movl %eax,24(%ebp)
	movl $40,28(%ebp)
	movl $41,32(%ebp)
	movl $44,36(%ebp)
	movl $42,40(%ebp)
	leal 16(%ebp),%ecx
	calll *948(%edi)
	incl 1120(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L13043:
	movl 1088(%edi),%eax
	movl %eax,16(%ebp)
	movl 1044(%edi),%eax
	movl %eax,20(%ebp)
	movl 1048(%edi),%eax
	movl %eax,24(%ebp)
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,36(%ebp)
	leal 28(%ebp),%ecx
	calll *836(%edi)
	leal 28(%ebp),%ecx
	calll *972(%edi)
	movl %eax,1088(%edi)
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,36(%ebp)
	leal 28(%ebp),%ecx
	calll *800(%edi)
	movl 1088(%edi),%eax
	movl %eax,36(%ebp)
	leal 28(%ebp),%ecx
	calll *960(%edi)
	movl $93,36(%ebp)
	movl 1120(%edi),%eax
	movl %eax,40(%ebp)
	leal 28(%ebp),%ecx
	calll *1164(%edi)
	incl 1120(%edi)
	movl 20(%ebp),%eax
	movl %eax,1044(%edi)
	movl 24(%ebp),%eax
	movl %eax,1048(%edi)
	movl 16(%ebp),%eax
	movl %eax,1088(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L13044:
	movl 1120(%edi),%eax
	movl %eax,16(%ebp)
	movl 1128(%edi),%eax
	addl 1120(%edi),%eax
	movl %eax,1120(%edi)
	movl $91,28(%ebp)
	movl 1120(%edi),%eax
	movl %eax,32(%ebp)
	leal 20(%ebp),%ecx
	calll *1164(%edi)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,28(%ebp)
	leal 20(%ebp),%ecx
	calll *932(%edi)
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,28(%ebp)
	leal 20(%ebp),%ecx
	calll *924(%edi)
	movl $10,28(%ebp)
	movl 16(%ebp),%eax
	movl %eax,32(%ebp)
	leal 20(%ebp),%ecx
	calll *1164(%edi)
	movl 16(%ebp),%eax
	incl %eax
	movl %eax,1120(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L13045:
	leal 16(%ebp),%ecx
	calll *972(%edi)
	movl %eax,16(%ebp)
	leal 20(%ebp),%ecx
	calll *972(%edi)
	movl %eax,20(%ebp)
	movl 1120(%edi),%eax
	movl %eax,24(%ebp)
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,36(%ebp)
	movl $0,40(%ebp)
	movl 20(%ebp),%eax
	movl %eax,44(%ebp)
	leal 28(%ebp),%ecx
	calll *880(%edi)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,36(%ebp)
	leal 28(%ebp),%ecx
	calll *924(%edi)
	movl $98,36(%ebp)
	movl 16(%ebp),%eax
	movl %eax,40(%ebp)
	leal 28(%ebp),%ecx
	calll *1168(%edi)
	movl 24(%ebp),%eax
	movl %eax,1120(%edi)
	movl $91,36(%ebp)
	movl 1120(%edi),%eax
	movl %eax,40(%ebp)
	leal 28(%ebp),%ecx
	calll *1164(%edi)
	movl 20(%ebp),%eax
	movl %eax,36(%ebp)
	leal 28(%ebp),%ecx
	calll *960(%edi)
	movl 8(%ebp),%eax
	addl $3,%eax
	mov (,%eax,4),%eax
	movl %eax,36(%ebp)
	leal 28(%ebp),%ecx
	calll *924(%edi)
	movl $98,36(%ebp)
	movl 16(%ebp),%eax
	movl %eax,40(%ebp)
	leal 28(%ebp),%ecx
	calll *1168(%edi)
	movl 16(%ebp),%eax
	movl %eax,36(%ebp)
	leal 28(%ebp),%ecx
	calll *960(%edi)
	movl $93,36(%ebp)
	movl 24(%ebp),%eax
	movl %eax,40(%ebp)
	leal 28(%ebp),%ecx
	calll *1164(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L13046:
	leal 16(%ebp),%ecx
	calll *972(%edi)
	movl %eax,16(%ebp)
	movl %eax,28(%ebp)
	leal 20(%ebp),%ecx
	calll *936(%edi)
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,8(%ebp)
	jmp L13048
L13047:
	movl $102,28(%ebp)
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,40(%ebp)
	leal 32(%ebp),%ecx
	calll *940(%edi)
	movl %eax,32(%ebp)
	leal 20(%ebp),%ecx
	calll *1164(%edi)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,8(%ebp)
L13048:
	movl 8(%ebp),%eax
	cmpl $38,(,%eax,4)
	je L13047
	movl $102,28(%ebp)
	movl 8(%ebp),%eax
	movl %eax,40(%ebp)
	leal 32(%ebp),%ecx
	calll *940(%edi)
	movl %eax,32(%ebp)
	leal 20(%ebp),%ecx
	calll *1164(%edi)
	movl $47,28(%ebp)
	movl 16(%ebp),%eax
	movl %eax,32(%ebp)
	leal 20(%ebp),%ecx
	calll *1168(%edi)
	incl 1120(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
	jmp L13008
L13007:
	movl 12(%ebp),%eax
	mov $L13999,%edx
	mov $34,%ecx
1:	cmp (%edx),%eax
	je 3f
	add $8,%edx
	loop 1b
2:	jmp L13009
3:	jmp *4(%edx)
L13008:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	LOADLV
L13002:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	cmpl $0,8(%ebp)
	jne L13051
	jmpl *L13050
L13051:
	jmp L13052
L13054:
L13049:
	movl $113,20(%ebp)
	movl 1080(%edi),%eax
	movl %eax,24(%ebp)
	leal 12(%ebp),%ecx
	calll *840(%edi)
	leal 12(%ebp),%ecx
	calll *944(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L13055:
	movl 8(%ebp),%eax
	movl %eax,20(%ebp)
	movl $45,24(%ebp)
	movl $46,28(%ebp)
	movl $47,32(%ebp)
	movl $0,36(%ebp)
	leal 12(%ebp),%ecx
	calll *948(%edi)
	incl 1120(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L13056:
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *924(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L13057:
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,12(%ebp)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,16(%ebp)
	movl 12(%ebp),%eax
	cmpl $2,(,%eax,4)
	jne L13058
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,12(%ebp)
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,16(%ebp)
L13058:
	movl 12(%ebp),%eax
	movl %eax,28(%ebp)
	leal 20(%ebp),%ecx
	calll *924(%edi)
	movl 16(%ebp),%eax
	movl %eax,28(%ebp)
	leal 20(%ebp),%ecx
	calll *924(%edi)
	movl $14,28(%ebp)
	leal 20(%ebp),%ecx
	calll *1160(%edi)
	decl 1120(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
	jmp L13053
L13052:
	movl 8(%ebp),%eax
	mov (,%eax,4),%eax
	mov $L13998,%edx
	mov $3,%ecx
1:	cmp (%edx),%eax
	je 3f
	add $8,%edx
	loop 1b
2:	jmp L13054
3:	jmp *4(%edx)
L13053:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	LOADZERO
L13003:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl $42,16(%ebp)
	movl $0,20(%ebp)
	leal 8(%ebp),%ecx
	calll *1164(%edi)
	incl 1120(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	LOADLIST
L13004:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	cmpl $0,8(%ebp)
	je L13059
	movl 8(%ebp),%eax
	cmpl $38,(,%eax,4)
	je L13060
	movl 8(%ebp),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *924(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L13060:
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *932(%edi)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *932(%edi)
L13059:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L13005:
	ret
	.data
	.align 4
L13999:
	.long 28
	.long L13010
	.long 12
	.long L13011
	.long 13
	.long L13012
	.long 15
	.long L13013
	.long 22
	.long L13014
	.long 23
	.long L13015
	.long 24
	.long L13016
	.long 25
	.long L13017
	.long 31
	.long L13018
	.long 32
	.long L13019
	.long 9
	.long L13020
	.long 11
	.long L13021
	.long 14
	.long L13022
	.long 20
	.long L13023
	.long 21
	.long L13024
	.long 33
	.long L13025
	.long 34
	.long L13026
	.long 35
	.long L13027
	.long 36
	.long L13028
	.long 17
	.long L13032
	.long 30
	.long L13033
	.long 8
	.long L13034
	.long 19
	.long L13035
	.long 4
	.long L13036
	.long 5
	.long L13037
	.long 16
	.long L13038
	.long 7
	.long L13039
	.long 1
	.long L13040
	.long 3
	.long L13041
	.long 2
	.long L13042
	.long 6
	.long L13043
	.long 10
	.long L13044
	.long 37
	.long L13045
	.long 39
	.long L13046
	.align 4
L13050:
	.long L13049
	.align 4
L13998:
	.long 2
	.long L13055
	.long 8
	.long L13056
	.long 9
	.long L13057
	.global G231
	.equ G231,L13001
	.global G232
	.equ G232,L13002
	.global G236
	.equ G236,L13003
	.global G233
	.equ G233,L13004
	.text
//	SECTION: TRN5
	jmp L14004
//	EVALCONST
L14001:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	cmpl $0,8(%ebp)
	jne L14006
	movl $117,20(%ebp)
	movl 1080(%edi),%eax
	movl %eax,24(%ebp)
	leal 12(%ebp),%ecx
	calll *840(%edi)
	movl $0,%eax
	jmp L14005
L14006:
	jmp L14007
L14009:
	movl $118,20(%ebp)
	movl 8(%ebp),%eax
	movl %eax,24(%ebp)
	leal 12(%ebp),%ecx
	calll *840(%edi)
	movl $0,%eax
	jmp L14005
L14010:
	movl 8(%ebp),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *824(%edi)
	movl %eax,12(%ebp)
	movl 12(%ebp),%eax
	incl %eax
	addl 1040(%edi),%eax
	cmpl $1,(,%eax,4)
	jne L14011
	movl $2,%eax
	addl 12(%ebp),%eax
	addl 1040(%edi),%eax
	mov (,%eax,4),%eax
	jmp L14005
L14011:
	movl $119,24(%ebp)
	movl 8(%ebp),%eax
	movl %eax,28(%ebp)
	leal 16(%ebp),%ecx
	calll *840(%edi)
	movl $0,%eax
	jmp L14005
L14012:
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	jmp L14005
L14013:
	movl $-1,%eax
	jmp L14005
L14014:
	movl $0,%eax
	jmp L14005
L14015:
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *940(%edi)
	negl %eax
	jmp L14005
L14016:
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *940(%edi)
	test %eax,%eax
	jns 1f
	neg %eax
1:
	jmp L14005
L14017:
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *940(%edi)
	notl %eax
	jmp L14005
L14018:
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *940(%edi)
	movl %eax,12(%ebp)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *940(%edi)
	mov %eax,%ecx
	movl 12(%ebp),%eax
	imull %ecx
	jmp L14005
L14019:
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *940(%edi)
	movl %eax,12(%ebp)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *940(%edi)
	mov %eax,%ecx
	movl 12(%ebp),%eax
	cltd
	idivl %ecx
	jmp L14005
L14020:
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *940(%edi)
	movl %eax,12(%ebp)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *940(%edi)
	mov %eax,%ecx
	movl 12(%ebp),%eax
	cltd
	idivl %ecx
	mov %edx,%eax
	jmp L14005
L14021:
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *940(%edi)
	movl %eax,12(%ebp)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *940(%edi)
	mov %eax,%ecx
	movl 12(%ebp),%eax
	addl %ecx,%eax
	jmp L14005
L14022:
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *940(%edi)
	movl %eax,12(%ebp)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *940(%edi)
	mov %eax,%ecx
	movl 12(%ebp),%eax
	subl %ecx,%eax
	jmp L14005
L14023:
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *940(%edi)
	movl %eax,12(%ebp)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *940(%edi)
	mov %eax,%ecx
	movl 12(%ebp),%eax
	shll %cl,%eax
	jmp L14005
L14024:
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *940(%edi)
	movl %eax,12(%ebp)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *940(%edi)
	mov %eax,%ecx
	movl 12(%ebp),%eax
	shrl %cl,%eax
	jmp L14005
L14025:
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *940(%edi)
	movl %eax,12(%ebp)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *940(%edi)
	mov %eax,%ecx
	movl 12(%ebp),%eax
	orl %ecx,%eax
	jmp L14005
L14026:
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *940(%edi)
	movl %eax,12(%ebp)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *940(%edi)
	mov %eax,%ecx
	movl 12(%ebp),%eax
	andl %ecx,%eax
	jmp L14005
L14027:
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *940(%edi)
	movl %eax,12(%ebp)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *940(%edi)
	mov %eax,%ecx
	movl 12(%ebp),%eax
	xorl $-1,%eax
	xorl %ecx,%eax
	jmp L14005
L14028:
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *940(%edi)
	movl %eax,12(%ebp)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *940(%edi)
	mov %eax,%ecx
	movl 12(%ebp),%eax
	xorl %ecx,%eax
	jmp L14005
	jmp L14008
L14007:
	movl 8(%ebp),%eax
	mov (,%eax,4),%eax
	mov $L14999,%edx
	mov $18,%ecx
1:	cmp (%edx),%eax
	je 3f
	add $8,%edx
	loop 1b
2:	jmp L14009
3:	jmp *4(%edx)
L14008:
L14005:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	ASSIGN
L14002:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	cmpl $0,8(%ebp)
	je L14030
	cmpl $0,12(%ebp)
	jne L14029
L14030:
	movl $110,24(%ebp)
	movl 1080(%edi),%eax
	movl %eax,28(%ebp)
	leal 16(%ebp),%ecx
	calll *840(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L14029:
	jmp L14031
L14033:
	movl 12(%ebp),%eax
	cmpl $38,(,%eax,4)
	je L14034
	movl $112,24(%ebp)
	movl 1080(%edi),%eax
	movl %eax,28(%ebp)
	leal 16(%ebp),%ecx
	calll *840(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L14034:
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,24(%ebp)
	movl 12(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,28(%ebp)
	leal 16(%ebp),%ecx
	calll *920(%edi)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,24(%ebp)
	movl 12(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,28(%ebp)
	leal 16(%ebp),%ecx
	calll *920(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L14035:
	movl 12(%ebp),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *924(%edi)
	movl 8(%ebp),%eax
	movl %eax,24(%ebp)
	movl $80,28(%ebp)
	movl $81,32(%ebp)
	movl $82,36(%ebp)
	movl $0,40(%ebp)
	leal 16(%ebp),%ecx
	calll *948(%edi)
	decl 1120(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L14036:
	movl 12(%ebp),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *924(%edi)
	movl 8(%ebp),%eax
	incl %eax
	mov (,%eax,4),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *924(%edi)
	movl 8(%ebp),%eax
	addl $2,%eax
	mov (,%eax,4),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *924(%edi)
	movl $121,24(%ebp)
	leal 16(%ebp),%ecx
	calll *1160(%edi)
	movl 1120(%edi),%eax
	subl $3,%eax
	movl %eax,1120(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L14037:
L14038:
L14039:
	movl 12(%ebp),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *924(%edi)
	movl 8(%ebp),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *928(%edi)
	movl $83,24(%ebp)
	leal 16(%ebp),%ecx
	calll *1160(%edi)
	movl 1120(%edi),%eax
	subl $2,%eax
	movl %eax,1120(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L14040:
	movl $109,24(%ebp)
	movl 1080(%edi),%eax
	movl %eax,28(%ebp)
	leal 16(%ebp),%ecx
	calll *840(%edi)
	jmp L14032
L14031:
	movl 8(%ebp),%eax
	mov (,%eax,4),%eax
	mov $L14998,%edx
	mov $6,%ecx
1:	cmp (%edx),%eax
	je 3f
	add $8,%edx
	loop 1b
2:	jmp L14040
3:	jmp *4(%edx)
L14032:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	TRANSNAME
L14003:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl 8(%ebp),%eax
	movl %eax,36(%ebp)
	leal 28(%ebp),%ecx
	calll *824(%edi)
	movl %eax,28(%ebp)
	movl 28(%ebp),%eax
	incl %eax
	addl 1040(%edi),%eax
	mov (,%eax,4),%eax
	movl %eax,32(%ebp)
	movl $2,%eax
	addl 28(%ebp),%eax
	addl 1040(%edi),%eax
	mov (,%eax,4),%eax
	movl %eax,36(%ebp)
	cmpl $0,28(%ebp)
	jne L14041
	movl $115,48(%ebp)
	movl 8(%ebp),%eax
	movl %eax,52(%ebp)
	leal 40(%ebp),%ecx
	calll *840(%edi)
	movl 16(%ebp),%eax
	movl %eax,48(%ebp)
	movl $2,52(%ebp)
	leal 40(%ebp),%ecx
	calll *1164(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L14041:
	jmp L14042
L14044:
	movl 28(%ebp),%eax
	cmpl 1052(%edi),%eax
	jge L14045
	movl $116,48(%ebp)
	movl 8(%ebp),%eax
	movl %eax,52(%ebp)
	leal 40(%ebp),%ecx
	calll *840(%edi)
L14045:
	movl 12(%ebp),%eax
	movl %eax,48(%ebp)
	movl 36(%ebp),%eax
	movl %eax,52(%ebp)
	leal 40(%ebp),%ecx
	calll *1164(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L14046:
	movl 16(%ebp),%eax
	movl %eax,48(%ebp)
	movl 36(%ebp),%eax
	movl %eax,52(%ebp)
	leal 40(%ebp),%ecx
	calll *1164(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L14047:
	movl 20(%ebp),%eax
	movl %eax,48(%ebp)
	movl 36(%ebp),%eax
	movl %eax,52(%ebp)
	leal 40(%ebp),%ecx
	calll *1168(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L14048:
	cmpl $0,24(%ebp)
	jne L14049
	movl $113,48(%ebp)
	movl 8(%ebp),%eax
	movl %eax,52(%ebp)
	leal 40(%ebp),%ecx
	calll *840(%edi)
	movl 12(%ebp),%eax
	movl %eax,24(%ebp)
L14049:
	movl 24(%ebp),%eax
	movl %eax,48(%ebp)
	movl 36(%ebp),%eax
	movl %eax,52(%ebp)
	leal 40(%ebp),%ecx
	calll *1164(%edi)
	jmp L14043
L14042:
	movl 32(%ebp),%eax
	mov $L14997,%edx
	mov $4,%ecx
1:	cmp (%edx),%eax
	je 3f
	add $8,%edx
	loop 1b
2:	jmp L14043
3:	jmp *4(%edx)
L14043:
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L14004:
	ret
	.data
	.align 4
L14999:
	.long 2
	.long L14010
	.long 1
	.long L14012
	.long 4
	.long L14013
	.long 5
	.long L14014
	.long 17
	.long L14015
	.long 19
	.long L14016
	.long 30
	.long L14017
	.long 11
	.long L14018
	.long 12
	.long L14019
	.long 13
	.long L14020
	.long 14
	.long L14021
	.long 15
	.long L14022
	.long 31
	.long L14023
	.long 32
	.long L14024
	.long 34
	.long L14025
	.long 33
	.long L14026
	.long 35
	.long L14027
	.long 36
	.long L14028
	.align 4
L14998:
	.long 38
	.long L14033
	.long 2
	.long L14035
	.long 28
	.long L14036
	.long 8
	.long L14037
	.long 9
	.long L14038
	.long 37
	.long L14039
	.align 4
L14997:
	.long 77
	.long L14044
	.long 76
	.long L14046
	.long 78
	.long L14047
	.long 1
	.long L14048
	.global G235
	.equ G235,L14001
	.global G230
	.equ G230,L14002
	.global G237
	.equ G237,L14003
	.text
//	SECTION: TRN6
	jmp L15018
//	COMPLAB
L15001:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl $90,20(%ebp)
	movl 8(%ebp),%eax
	movl %eax,24(%ebp)
	leal 12(%ebp),%ecx
	calll *1168(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	COMPENTRY
L15002:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl $2,%eax
	addl 8(%ebp),%eax
	movl %eax,16(%ebp)
	movl $94,28(%ebp)
	movl 16(%ebp),%eax
	movl %eax,40(%ebp)
	movl $0,44(%ebp)
	leal 32(%ebp),%ecx
	calll *340(%edi)
	movl %eax,32(%ebp)
	movl 12(%ebp),%eax
	movl %eax,36(%ebp)
	leal 20(%ebp),%ecx
	calll *1176(%edi)
	movl $1,20(%ebp)
	movl 16(%ebp),%eax
	movl %eax,32(%ebp)
	movl $0,36(%ebp)
	leal 24(%ebp),%ecx
	calll *340(%edi)
	movl %eax,24(%ebp)
	jmp L15019
L15020:
	movl 16(%ebp),%eax
	movl %eax,44(%ebp)
	movl 20(%ebp),%eax
	movl %eax,48(%ebp)
	leal 36(%ebp),%ecx
	calll *340(%edi)
	movl %eax,36(%ebp)
	leal 28(%ebp),%ecx
	calll *1188(%edi)
	incl 20(%ebp)
L15019:
	movl 20(%ebp),%eax
	cmpl 24(%ebp),%eax
	jle L15020
	movl $32,28(%ebp)
	leal 20(%ebp),%ecx
	calll *1000(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	COMPDATALAB
L15003:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl $100,20(%ebp)
	movl 8(%ebp),%eax
	movl %eax,24(%ebp)
	leal 12(%ebp),%ecx
	calll *1168(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	COMPJUMP
L15004:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl $85,20(%ebp)
	movl 8(%ebp),%eax
	movl %eax,24(%ebp)
	leal 12(%ebp),%ecx
	calll *1168(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	OUT1
L15005:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl 8(%ebp),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *1192(%edi)
	movl $32,20(%ebp)
	leal 12(%ebp),%ecx
	calll *1000(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	OUT2
L15006:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl 8(%ebp),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *1192(%edi)
	movl $32,24(%ebp)
	leal 16(%ebp),%ecx
	calll *1000(%edi)
	movl 12(%ebp),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *1012(%edi)
	movl $32,24(%ebp)
	leal 16(%ebp),%ecx
	calll *1000(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	OUT2P
L15007:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl 8(%ebp),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *1192(%edi)
	movl $32,24(%ebp)
	leal 16(%ebp),%ecx
	calll *1000(%edi)
	movl $76,24(%ebp)
	leal 16(%ebp),%ecx
	calll *1000(%edi)
	movl 12(%ebp),%eax
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *1012(%edi)
	movl $32,24(%ebp)
	leal 16(%ebp),%ecx
	calll *1000(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	OUT3P
L15008:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl 8(%ebp),%eax
	movl %eax,28(%ebp)
	leal 20(%ebp),%ecx
	calll *1192(%edi)
	movl $32,28(%ebp)
	leal 20(%ebp),%ecx
	calll *1000(%edi)
	movl 12(%ebp),%eax
	movl %eax,28(%ebp)
	leal 20(%ebp),%ecx
	calll *1012(%edi)
	movl $32,28(%ebp)
	leal 20(%ebp),%ecx
	calll *1000(%edi)
	movl $76,28(%ebp)
	leal 20(%ebp),%ecx
	calll *1000(%edi)
	movl 16(%ebp),%eax
	movl %eax,28(%ebp)
	leal 20(%ebp),%ecx
	calll *1012(%edi)
	movl $32,28(%ebp)
	leal 20(%ebp),%ecx
	calll *1000(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	OUTN
L15009:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl 8(%ebp),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *1012(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	OUTL
L15010:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl $32,20(%ebp)
	leal 12(%ebp),%ecx
	calll *1000(%edi)
	movl $76,20(%ebp)
	leal 12(%ebp),%ecx
	calll *1000(%edi)
	movl 8(%ebp),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *1012(%edi)
	movl $32,20(%ebp)
	leal 12(%ebp),%ecx
	calll *1000(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	OUTC
L15011:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl 8(%ebp),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *1012(%edi)
	movl $32,20(%ebp)
	leal 12(%ebp),%ecx
	calll *1000(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	OUTSTRING
L15012:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl 8(%ebp),%eax
	movl %eax,20(%ebp)
	movl $0,24(%ebp)
	leal 12(%ebp),%ecx
	calll *340(%edi)
	movl %eax,12(%ebp)
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *1012(%edi)
	movl $32,24(%ebp)
	leal 16(%ebp),%ecx
	calll *1000(%edi)
	movl $1,16(%ebp)
	movl 12(%ebp),%eax
	movl %eax,20(%ebp)
	jmp L15021
L15022:
	movl 8(%ebp),%eax
	movl %eax,40(%ebp)
	movl 16(%ebp),%eax
	movl %eax,44(%ebp)
	leal 32(%ebp),%ecx
	calll *340(%edi)
	movl %eax,32(%ebp)
	leal 24(%ebp),%ecx
	calll *1188(%edi)
	incl 16(%ebp)
L15021:
	movl 16(%ebp),%eax
	cmpl 20(%ebp),%eax
	jle L15022
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	WRITEOP
L15013:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl 8(%ebp),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *1016(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	WRN
L15014:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	cmpl $0,8(%ebp)
	jge L15023
	movl $45,20(%ebp)
	leal 12(%ebp),%ecx
	calll *1000(%edi)
	negl 8(%ebp)
	cmpl $0,8(%ebp)
	jge L15024
	movl 8(%ebp),%eax
	shrl $1,%eax
	movl $5,%ecx
	cltd
	idivl %ecx
	movl %eax,12(%ebp)
	movl %eax,24(%ebp)
	leal 16(%ebp),%ecx
	calll *1016(%edi)
	movl 8(%ebp),%eax
	movl %eax,16(%ebp)
	movl $10,%eax
	imull 12(%ebp)
	mov %eax,%ecx
	movl 16(%ebp),%eax
	subl %ecx,%eax
	movl %eax,8(%ebp)
L15024:
L15023:
	movl 8(%ebp),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *1016(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	WRPN
L15015:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	cmpl $9,8(%ebp)
	jle L15025
	movl 8(%ebp),%eax
	movl $10,%ecx
	cltd
	idivl %ecx
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *1016(%edi)
L15025:
	movl 8(%ebp),%eax
	movl $10,%ecx
	cltd
	idivl %ecx
	mov %edx,%eax
	addl $48,%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *1000(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	ENDOCODE
L15016:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	movl $10,16(%ebp)
	leal 8(%ebp),%ecx
	calll *56(%edi)
	movl $0,1004(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
//	WRC
L15017:
	pop (%ecx)
	mov %ebp,4(%ecx)
	mov %ecx,%ebp
	incl 1004(%edi)
	cmpl $62,1004(%edi)
	jle L15026
	cmpl $32,8(%ebp)
	jne L15026
	movl $10,20(%ebp)
	leal 12(%ebp),%ecx
	calll *56(%edi)
	movl $0,1004(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L15026:
	movl 8(%ebp),%eax
	movl %eax,20(%ebp)
	leal 12(%ebp),%ecx
	calll *56(%edi)
	mov %ebp,%ecx
	mov 4(%ecx),%ebp
	jmp *(%ecx)
L15018:
	ret
	.data
	.global G240
	.equ G240,L15001
	.global G242
	.equ G242,L15002
	.global G234
	.equ G234,L15003
	.global G241
	.equ G241,L15004
	.global G290
	.equ G290,L15005
	.global G291
	.equ G291,L15006
	.global G292
	.equ G292,L15007
	.global G294
	.equ G294,L15008
	.global G295
	.equ G295,L15009
	.global G296
	.equ G296,L15010
	.global G297
	.equ G297,L15011
	.global G289
	.equ G289,L15012
	.global G298
	.equ G298,L15013
	.global G253
	.equ G253,L15014
	.global G254
	.equ G254,L15015
	.global G252
	.equ G252,L15016
	.global G250
	.equ G250,L15017
	.text
