#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern unsigned char v3 (unsigned char, signed int, signed short, signed char);
extern unsigned char (*v4) (unsigned char, signed int, signed short, signed char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned char v7 (unsigned int);
extern unsigned char (*v8) (unsigned int);
extern unsigned int v9 (unsigned char);
extern unsigned int (*v10) (unsigned char);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern signed int v13 (unsigned char, unsigned short, unsigned char, unsigned int);
extern signed int (*v14) (unsigned char, unsigned short, unsigned char, unsigned int);
extern signed short v15 (signed char);
extern signed short (*v16) (signed char);
extern void v17 (signed short, signed short, signed char);
extern void (*v18) (signed short, signed short, signed char);
extern signed char v19 (signed short, signed int, signed char);
extern signed char (*v20) (signed short, signed int, signed char);
extern signed int v21 (unsigned char);
extern signed int (*v22) (unsigned char);
extern signed short v23 (unsigned short, signed char, signed short);
extern signed short (*v24) (unsigned short, signed char, signed short);
unsigned short v25 (void);
unsigned short (*v26) (void) = v25;
extern void v27 (unsigned short, signed char, unsigned short);
extern void (*v28) (unsigned short, signed char, unsigned short);
extern signed int v29 (unsigned short);
extern signed int (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v116 = -3;
unsigned int v115 = 6U;
unsigned short v114 = 6;

unsigned short v25 (void)
{
{
for (;;) {
unsigned char v119 = 3;
unsigned char v118 = 5;
unsigned short v117 = 4;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v120;
signed int v121;
v120 = 6 - 6;
v121 = v29 (v120);
history[history_index++] = (int)v121;
}
break;
case 3: 
{
unsigned short v122;
signed int v123;
v122 = v117 - v117;
v123 = v29 (v122);
history[history_index++] = (int)v123;
}
break;
case 5: 
{
unsigned short v124;
signed int v125;
v124 = v117 + v117;
v125 = v29 (v124);
history[history_index++] = (int)v125;
}
break;
case 7: 
{
unsigned short v126;
signed int v127;
v126 = v117 - 2;
v127 = v29 (v126);
history[history_index++] = (int)v127;
}
break;
case 9: 
{
unsigned short v128;
signed int v129;
v128 = 7 - 0;
v129 = v29 (v128);
history[history_index++] = (int)v129;
}
break;
case 11: 
return v117;
default: abort ();
}
}
}
}
