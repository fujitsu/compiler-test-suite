#include <stdlib.h>
signed char v1 (unsigned short);
signed char (*v2) (unsigned short) = v1;
extern unsigned short v3 (signed int, signed int);
extern unsigned short (*v4) (signed int, signed int);
extern signed short v5 (unsigned int, unsigned char, unsigned short, unsigned char);
extern signed short (*v6) (unsigned int, unsigned char, unsigned short, unsigned char);
extern void v7 (unsigned char, signed short, unsigned char, unsigned int);
extern void (*v8) (unsigned char, signed short, unsigned char, unsigned int);
extern unsigned int v9 (signed short, signed char);
extern unsigned int (*v10) (signed short, signed char);
unsigned int v11 (unsigned int, signed short);
unsigned int (*v12) (unsigned int, signed short) = v11;
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern signed int v17 (unsigned short, unsigned int, unsigned int);
extern signed int (*v18) (unsigned short, unsigned int, unsigned int);
extern signed char v19 (unsigned short, unsigned short, unsigned char);
extern signed char (*v20) (unsigned short, unsigned short, unsigned char);
extern signed int v21 (signed char, unsigned char, signed char, unsigned short);
extern signed int (*v22) (signed char, unsigned char, signed char, unsigned short);
extern unsigned int v23 (signed int, signed short, signed short);
extern unsigned int (*v24) (signed int, signed short, signed short);
extern unsigned char v25 (unsigned short);
extern unsigned char (*v26) (unsigned short);
extern void v27 (signed int, unsigned int, unsigned int);
extern void (*v28) (signed int, unsigned int, unsigned int);
extern signed char v29 (unsigned short, unsigned short, signed short);
extern signed char (*v30) (unsigned short, unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v118 = 1U;
unsigned int v117 = 4U;
signed int v116 = 0;

unsigned int v11 (unsigned int v119, signed short v120)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
signed char v123 = 0;
signed char v122 = -2;
signed char v121 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (unsigned short v124)
{
history[history_index++] = (int)v124;
{
for (;;) {
signed short v127 = 0;
unsigned char v126 = 4;
unsigned char v125 = 5;
trace++;
switch (trace)
{
case 0: 
{
signed short v128;
signed char v129;
unsigned int v130;
v128 = -2 - 3;
v129 = -3 + 0;
v130 = v9 (v128, v129);
history[history_index++] = (int)v130;
}
break;
case 14: 
return 0;
default: abort ();
}
}
}
}
