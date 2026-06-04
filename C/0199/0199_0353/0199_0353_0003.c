#include <stdlib.h>
extern unsigned char v1 (unsigned int, signed int);
extern unsigned char (*v2) (unsigned int, signed int);
extern signed short v3 (signed short, unsigned char, unsigned int, signed char);
extern signed short (*v4) (signed short, unsigned char, unsigned int, signed char);
extern signed int v5 (unsigned int, unsigned char, signed int, signed char);
extern signed int (*v6) (unsigned int, unsigned char, signed int, signed char);
signed char v7 (unsigned short, unsigned char, unsigned int, unsigned char);
signed char (*v8) (unsigned short, unsigned char, unsigned int, unsigned char) = v7;
extern unsigned int v9 (signed short, signed char, unsigned int, unsigned int);
extern unsigned int (*v10) (signed short, signed char, unsigned int, unsigned int);
extern unsigned char v11 (unsigned int, unsigned char);
extern unsigned char (*v12) (unsigned int, unsigned char);
extern unsigned short v13 (signed char, unsigned char, unsigned short, signed int);
extern unsigned short (*v14) (signed char, unsigned char, unsigned short, signed int);
extern unsigned char v15 (unsigned short, unsigned short, signed char);
extern unsigned char (*v16) (unsigned short, unsigned short, signed char);
extern signed short v17 (unsigned char);
extern signed short (*v18) (unsigned char);
extern signed int v19 (unsigned char);
extern signed int (*v20) (unsigned char);
unsigned char v21 (void);
unsigned char (*v22) (void) = v21;
unsigned short v23 (signed short, signed short);
unsigned short (*v24) (signed short, signed short) = v23;
extern unsigned char v25 (unsigned char, signed int, signed short, unsigned short);
extern unsigned char (*v26) (unsigned char, signed int, signed short, unsigned short);
extern unsigned short v27 (unsigned int, signed short, signed short);
extern unsigned short (*v28) (unsigned int, signed short, signed short);
extern void v29 (signed char, signed char, signed char, unsigned short);
extern void (*v30) (signed char, signed char, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v109 = 5;
unsigned short v108 = 6;
unsigned char v107 = 1;

unsigned short v23 (signed short v110, signed short v111)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
signed short v114 = -3;
unsigned char v113 = 4;
signed int v112 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (void)
{
{
for (;;) {
signed char v117 = 2;
signed int v116 = 2;
signed char v115 = -4;
trace++;
switch (trace)
{
case 7: 
{
unsigned int v118;
unsigned char v119;
signed int v120;
signed char v121;
signed int v122;
v118 = 5U - 4U;
v119 = 5 - 0;
v120 = v116 - v116;
v121 = 1 + v117;
v122 = v5 (v118, v119, v120, v121);
history[history_index++] = (int)v122;
}
break;
case 13: 
return 1;
default: abort ();
}
}
}
}

signed char v7 (unsigned short v123, unsigned char v124, unsigned int v125, unsigned char v126)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed short v129 = -3;
signed char v128 = 0;
unsigned char v127 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
