#include <stdlib.h>
signed short v1 (void);
signed short (*v2) (void) = v1;
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed char v5 (unsigned int, unsigned char, unsigned int, unsigned char);
extern signed char (*v6) (unsigned int, unsigned char, unsigned int, unsigned char);
extern signed short v7 (unsigned short, signed char, unsigned short);
extern signed short (*v8) (unsigned short, signed char, unsigned short);
extern void v9 (unsigned short);
extern void (*v10) (unsigned short);
extern void v11 (void);
extern void (*v12) (void);
extern void v13 (signed char, signed char);
extern void (*v14) (signed char, signed char);
extern signed char v15 (unsigned short, signed int, unsigned char);
extern signed char (*v16) (unsigned short, signed int, unsigned char);
extern unsigned char v17 (unsigned int, signed short, signed char, unsigned int);
extern unsigned char (*v18) (unsigned int, signed short, signed char, unsigned int);
extern signed int v19 (unsigned int, unsigned int, signed int);
extern signed int (*v20) (unsigned int, unsigned int, signed int);
extern unsigned int v23 (signed short, signed int, signed short);
extern unsigned int (*v24) (signed short, signed int, signed short);
unsigned short v25 (unsigned int, unsigned short, unsigned int, signed char);
unsigned short (*v26) (unsigned int, unsigned short, unsigned int, signed char) = v25;
extern unsigned short v27 (unsigned char, unsigned short, unsigned int, signed short);
extern unsigned short (*v28) (unsigned char, unsigned short, unsigned int, signed short);
extern void v29 (signed short, unsigned short);
extern void (*v30) (signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v115 = 3;
unsigned char v114 = 7;
unsigned char v113 = 1;

unsigned short v25 (unsigned int v116, unsigned short v117, unsigned int v118, signed char v119)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
signed short v122 = -1;
unsigned char v121 = 6;
signed short v120 = -1;
trace++;
switch (trace)
{
case 10: 
return 4;
default: abort ();
}
}
}
}

signed short v1 (void)
{
{
for (;;) {
unsigned int v125 = 4U;
signed int v124 = -3;
unsigned short v123 = 4;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v126;
signed char v127;
unsigned short v128;
signed short v129;
v126 = v123 + v123;
v127 = 2 - 2;
v128 = v123 - 4;
v129 = v7 (v126, v127, v128);
history[history_index++] = (int)v129;
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}
