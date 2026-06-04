#include <stdlib.h>
unsigned char v1 (void);
unsigned char (*v2) (void) = v1;
signed int v3 (signed short);
signed int (*v4) (signed short) = v3;
extern signed char v5 (signed int, unsigned short, signed short);
extern signed char (*v6) (signed int, unsigned short, signed short);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern signed int v11 (signed char, signed int, signed int, unsigned short);
extern signed int (*v12) (signed char, signed int, signed int, unsigned short);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern unsigned char v15 (unsigned short, unsigned int);
extern unsigned char (*v16) (unsigned short, unsigned int);
extern unsigned short v17 (signed char);
extern unsigned short (*v18) (signed char);
extern signed short v19 (unsigned int, signed short, unsigned int);
extern signed short (*v20) (unsigned int, signed short, unsigned int);
unsigned char v21 (unsigned char, signed char, unsigned short, signed int);
unsigned char (*v22) (unsigned char, signed char, unsigned short, signed int) = v21;
extern signed char v23 (unsigned char, unsigned short, unsigned int);
extern signed char (*v24) (unsigned char, unsigned short, unsigned int);
extern unsigned int v25 (unsigned char, signed char, signed short, unsigned int);
extern unsigned int (*v26) (unsigned char, signed char, signed short, unsigned int);
extern void v27 (signed char, signed char, unsigned int);
extern void (*v28) (signed char, signed char, unsigned int);
extern void v29 (signed char, unsigned short);
extern void (*v30) (signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v107 = -3;
unsigned short v106 = 4;
signed short v105 = 2;

unsigned char v21 (unsigned char v108, signed char v109, unsigned short v110, signed int v111)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
signed int v114 = 2;
signed char v113 = -3;
signed short v112 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed short v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
unsigned short v118 = 3;
unsigned char v117 = 3;
unsigned int v116 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (void)
{
{
for (;;) {
signed int v121 = 1;
signed char v120 = 0;
unsigned short v119 = 6;
trace++;
switch (trace)
{
case 0: 
return 0;
case 1: 
{
unsigned int v122;
signed short v123;
unsigned int v124;
signed short v125;
v122 = 5U - 2U;
v123 = -3 + -2;
v124 = 4U + 7U;
v125 = v19 (v122, v123, v124);
history[history_index++] = (int)v125;
}
break;
case 3: 
{
unsigned char v126;
signed char v127;
signed short v128;
unsigned int v129;
unsigned int v130;
v126 = 7 + 0;
v127 = 0 + -4;
v128 = 1 - -3;
v129 = 0U - 0U;
v130 = v25 (v126, v127, v128, v129);
history[history_index++] = (int)v130;
}
break;
case 17: 
return 5;
default: abort ();
}
}
}
}
