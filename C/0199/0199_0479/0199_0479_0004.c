#include <stdlib.h>
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern void v5 (signed short, unsigned int, unsigned char);
extern void (*v6) (signed short, unsigned int, unsigned char);
extern unsigned short v7 (unsigned int, signed char);
extern unsigned short (*v8) (unsigned int, signed char);
extern unsigned short v9 (unsigned int);
extern unsigned short (*v10) (unsigned int);
extern signed short v11 (unsigned int, signed short, unsigned int, unsigned int);
extern signed short (*v12) (unsigned int, signed short, unsigned int, unsigned int);
unsigned int v13 (signed char, signed int, signed int);
unsigned int (*v14) (signed char, signed int, signed int) = v13;
unsigned int v15 (void);
unsigned int (*v16) (void) = v15;
extern signed char v17 (signed char);
extern signed char (*v18) (signed char);
signed int v19 (signed short, signed int, signed int, signed char);
signed int (*v20) (signed short, signed int, signed int, signed char) = v19;
extern signed char v21 (unsigned short, unsigned short);
extern signed char (*v22) (unsigned short, unsigned short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed char v25 (signed char);
extern signed char (*v26) (signed char);
extern void v27 (signed int, signed short);
extern void (*v28) (signed int, signed short);
extern unsigned char v29 (unsigned char, unsigned char);
extern unsigned char (*v30) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v117 = 3;
signed char v116 = 2;
signed int v115 = 3;

signed int v19 (signed short v118, signed int v119, signed int v120, signed char v121)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned char v124 = 1;
signed int v123 = -2;
unsigned char v122 = 5;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v125;
unsigned short v126;
signed char v127;
v125 = 0 + 3;
v126 = 4 + 4;
v127 = v21 (v125, v126);
history[history_index++] = (int)v127;
}
break;
case 3: 
{
unsigned short v128;
unsigned short v129;
signed char v130;
v128 = 6 + 6;
v129 = 4 + 3;
v130 = v21 (v128, v129);
history[history_index++] = (int)v130;
}
break;
case 5: 
{
unsigned short v131;
unsigned short v132;
signed char v133;
v131 = 5 - 1;
v132 = 1 + 5;
v133 = v21 (v131, v132);
history[history_index++] = (int)v133;
}
break;
case 7: 
{
unsigned short v134;
unsigned short v135;
signed char v136;
v134 = 6 + 6;
v135 = 6 - 1;
v136 = v21 (v134, v135);
history[history_index++] = (int)v136;
}
break;
case 13: 
return v123;
default: abort ();
}
}
}
}

unsigned int v15 (void)
{
{
for (;;) {
signed short v139 = -3;
unsigned int v138 = 0U;
unsigned char v137 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (signed char v140, signed int v141, signed int v142)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
signed short v145 = 3;
signed char v144 = -1;
signed int v143 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
