#include <stdlib.h>
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
unsigned char v5 (unsigned char);
unsigned char (*v6) (unsigned char) = v5;
extern signed int v7 (unsigned short, signed short, unsigned short);
extern signed int (*v8) (unsigned short, signed short, unsigned short);
extern signed int v9 (signed int, signed short, signed int);
extern signed int (*v10) (signed int, signed short, signed int);
extern unsigned short v11 (unsigned char, unsigned short);
extern unsigned short (*v12) (unsigned char, unsigned short);
signed char v13 (unsigned int, signed int, unsigned char, signed int);
signed char (*v14) (unsigned int, signed int, unsigned char, signed int) = v13;
extern signed short v15 (unsigned int);
extern signed short (*v16) (unsigned int);
extern signed char v17 (unsigned int, signed short, unsigned char, unsigned short);
extern signed char (*v18) (unsigned int, signed short, unsigned char, unsigned short);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed short v21 (unsigned short, signed int, signed char);
extern signed short (*v22) (unsigned short, signed int, signed char);
extern unsigned short v23 (unsigned int, unsigned int, unsigned short, unsigned short);
extern unsigned short (*v24) (unsigned int, unsigned int, unsigned short, unsigned short);
extern void v25 (signed int, unsigned char, signed short, unsigned short);
extern void (*v26) (signed int, unsigned char, signed short, unsigned short);
extern unsigned char v29 (signed int, unsigned short, signed char, signed short);
extern unsigned char (*v30) (signed int, unsigned short, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v118 = 0;
signed int v117 = 2;
signed int v116 = -2;

signed char v13 (unsigned int v119, signed int v120, unsigned char v121, signed int v122)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
unsigned int v125 = 0U;
unsigned int v124 = 0U;
signed char v123 = 1;
trace++;
switch (trace)
{
case 2: 
{
signed int v126;
unsigned short v127;
signed char v128;
signed short v129;
unsigned char v130;
v126 = v120 - 2;
v127 = 0 + 0;
v128 = -1 + v123;
v129 = -4 + 2;
v130 = v29 (v126, v127, v128, v129);
history[history_index++] = (int)v130;
}
break;
case 14: 
return -3;
default: abort ();
}
}
}
}

unsigned char v5 (unsigned char v131)
{
history[history_index++] = (int)v131;
{
for (;;) {
unsigned short v134 = 2;
unsigned char v133 = 6;
unsigned int v132 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
