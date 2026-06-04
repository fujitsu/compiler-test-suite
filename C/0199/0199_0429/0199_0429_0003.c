#include <stdlib.h>
extern unsigned short v1 (unsigned char, unsigned short);
extern unsigned short (*v2) (unsigned char, unsigned short);
extern unsigned short v3 (signed short, signed int, unsigned char);
extern unsigned short (*v4) (signed short, signed int, unsigned char);
extern unsigned char v5 (unsigned int);
extern unsigned char (*v6) (unsigned int);
extern unsigned short v7 (unsigned short);
extern unsigned short (*v8) (unsigned short);
unsigned char v9 (signed int, signed short, signed short);
unsigned char (*v10) (signed int, signed short, signed short) = v9;
extern signed short v11 (signed char, signed short, signed int, signed int);
extern signed short (*v12) (signed char, signed short, signed int, signed int);
extern void v13 (unsigned short, signed int, unsigned char, unsigned int);
extern void (*v14) (unsigned short, signed int, unsigned char, unsigned int);
extern signed short v15 (signed int, unsigned int, unsigned int, signed short);
extern signed short (*v16) (signed int, unsigned int, unsigned int, signed short);
extern unsigned short v17 (unsigned short);
extern unsigned short (*v18) (unsigned short);
extern signed char v19 (signed char, unsigned int, unsigned int, signed int);
extern signed char (*v20) (signed char, unsigned int, unsigned int, signed int);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern signed char v23 (unsigned int, signed short);
extern signed char (*v24) (unsigned int, signed short);
extern signed int v25 (unsigned int);
extern signed int (*v26) (unsigned int);
extern void v29 (unsigned short);
extern void (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v119 = 0;
signed short v118 = 3;
signed int v117 = 1;

unsigned char v9 (signed int v120, signed short v121, signed short v122)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
unsigned short v125 = 2;
unsigned short v124 = 1;
signed char v123 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed char v126;
signed short v127;
signed int v128;
signed int v129;
signed short v130;
v126 = v123 - v123;
v127 = v121 - v122;
v128 = v120 + 0;
v129 = v120 + 2;
v130 = v11 (v126, v127, v128, v129);
history[history_index++] = (int)v130;
}
break;
case 5: 
{
signed char v131;
signed short v132;
signed int v133;
signed int v134;
signed short v135;
v131 = 3 - 0;
v132 = v121 - 2;
v133 = v120 + v120;
v134 = v120 + 1;
v135 = v11 (v131, v132, v133, v134);
history[history_index++] = (int)v135;
}
break;
case 15: 
return 2;
default: abort ();
}
}
}
}
