#include <stdlib.h>
extern unsigned char v1 (signed char);
extern unsigned char (*v2) (signed char);
extern signed int v3 (unsigned short);
extern signed int (*v4) (unsigned short);
extern signed short v5 (signed short, unsigned char, unsigned char);
extern signed short (*v6) (signed short, unsigned char, unsigned char);
extern unsigned char v7 (unsigned char, unsigned int, signed int, unsigned int);
extern unsigned char (*v8) (unsigned char, unsigned int, signed int, unsigned int);
extern signed char v9 (unsigned char, unsigned int, signed short);
extern signed char (*v10) (unsigned char, unsigned int, signed short);
extern unsigned char v11 (unsigned short, signed short);
extern unsigned char (*v12) (unsigned short, signed short);
extern void v13 (unsigned short, signed short);
extern void (*v14) (unsigned short, signed short);
extern unsigned int v15 (signed short, unsigned short);
extern unsigned int (*v16) (signed short, unsigned short);
extern unsigned int v17 (signed int, signed short);
extern unsigned int (*v18) (signed int, signed short);
extern unsigned char v19 (signed char, unsigned char, unsigned char);
extern unsigned char (*v20) (signed char, unsigned char, unsigned char);
extern signed int v21 (signed int, signed short);
extern signed int (*v22) (signed int, signed short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
void v25 (unsigned char, unsigned short);
void (*v26) (unsigned char, unsigned short) = v25;
void v27 (signed int, signed short);
void (*v28) (signed int, signed short) = v27;
extern void v29 (unsigned int, unsigned char, unsigned short, signed int);
extern void (*v30) (unsigned int, unsigned char, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v106 = 5;
signed char v105 = -4;
unsigned int v104 = 0U;

void v27 (signed int v107, signed short v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed char v111 = 0;
signed char v110 = 2;
unsigned short v109 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v25 (unsigned char v112, unsigned short v113)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed char v116 = 2;
unsigned short v115 = 0;
signed char v114 = -2;
trace++;
switch (trace)
{
case 1: 
{
signed short v117;
unsigned short v118;
unsigned int v119;
v117 = 0 - 2;
v118 = 3 + 6;
v119 = v15 (v117, v118);
history[history_index++] = (int)v119;
}
break;
case 3: 
{
signed short v120;
unsigned short v121;
unsigned int v122;
v120 = -2 - -4;
v121 = 0 + v113;
v122 = v15 (v120, v121);
history[history_index++] = (int)v122;
}
break;
case 5: 
{
signed short v123;
unsigned short v124;
unsigned int v125;
v123 = -2 + -3;
v124 = v115 - v115;
v125 = v15 (v123, v124);
history[history_index++] = (int)v125;
}
break;
case 7: 
{
signed short v126;
unsigned short v127;
unsigned int v128;
v126 = 3 - -2;
v127 = 2 - v113;
v128 = v15 (v126, v127);
history[history_index++] = (int)v128;
}
break;
case 9: 
{
signed short v129;
unsigned short v130;
unsigned int v131;
v129 = 0 + -3;
v130 = 4 - 4;
v131 = v15 (v129, v130);
history[history_index++] = (int)v131;
}
break;
case 11: 
return;
case 13: 
return;
case 15: 
return;
default: abort ();
}
}
}
}
