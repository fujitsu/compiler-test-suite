#include <stdlib.h>
extern unsigned short v3 (unsigned int);
extern unsigned short (*v4) (unsigned int);
extern signed short v5 (signed short, unsigned char);
extern signed short (*v6) (signed short, unsigned char);
extern unsigned short v7 (unsigned int, unsigned int, signed short);
extern unsigned short (*v8) (unsigned int, unsigned int, signed short);
extern signed char v9 (unsigned int, unsigned int, signed short, unsigned char);
extern signed char (*v10) (unsigned int, unsigned int, signed short, unsigned char);
extern unsigned int v11 (signed short, unsigned char, signed int, signed char);
extern unsigned int (*v12) (signed short, unsigned char, signed int, signed char);
signed short v13 (signed int, unsigned char, signed char, unsigned int);
signed short (*v14) (signed int, unsigned char, signed char, unsigned int) = v13;
signed char v15 (signed int, signed int, unsigned short);
signed char (*v16) (signed int, signed int, unsigned short) = v15;
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed char v19 (signed int, unsigned int);
extern signed char (*v20) (signed int, unsigned int);
signed int v21 (void);
signed int (*v22) (void) = v21;
extern void v23 (signed char, unsigned char, signed int, signed short);
extern void (*v24) (signed char, unsigned char, signed int, signed short);
extern unsigned short v25 (signed short, signed short);
extern unsigned short (*v26) (signed short, signed short);
unsigned char v27 (signed short, signed short, unsigned char);
unsigned char (*v28) (signed short, signed short, unsigned char) = v27;
extern signed int v29 (signed char, signed char, unsigned char);
extern signed int (*v30) (signed char, signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v108 = -1;
signed short v107 = -2;
unsigned short v106 = 7;

unsigned char v27 (signed short v109, signed short v110, unsigned char v111)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned short v114 = 7;
unsigned char v113 = 2;
unsigned int v112 = 6U;
trace++;
switch (trace)
{
case 5: 
{
signed char v115;
signed char v116;
unsigned char v117;
signed int v118;
v115 = 1 + 0;
v116 = -1 + -4;
v117 = v113 - v111;
v118 = v29 (v115, v116, v117);
history[history_index++] = (int)v118;
}
break;
case 7: 
{
signed char v119;
signed char v120;
unsigned char v121;
signed int v122;
v119 = -4 - 0;
v120 = 0 - -3;
v121 = 7 + 2;
v122 = v29 (v119, v120, v121);
history[history_index++] = (int)v122;
}
break;
case 9: 
{
unsigned char v123;
v123 = v17 ();
history[history_index++] = (int)v123;
}
break;
case 11: 
return v111;
default: abort ();
}
}
}
}

signed int v21 (void)
{
{
for (;;) {
unsigned int v126 = 0U;
signed int v125 = -3;
unsigned int v124 = 5U;
trace++;
switch (trace)
{
case 1: 
return 0;
default: abort ();
}
}
}
}

signed char v15 (signed int v127, signed int v128, unsigned short v129)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned short v132 = 6;
signed int v131 = 0;
unsigned int v130 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (signed int v133, unsigned char v134, signed char v135, unsigned int v136)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
unsigned char v139 = 4;
unsigned int v138 = 7U;
unsigned int v137 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
