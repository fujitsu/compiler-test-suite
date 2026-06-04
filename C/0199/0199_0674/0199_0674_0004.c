#include <stdlib.h>
extern void v3 (unsigned short, signed int, signed short);
extern void (*v4) (unsigned short, signed int, signed short);
extern signed short v5 (signed short, unsigned short, signed short);
extern signed short (*v6) (signed short, unsigned short, signed short);
unsigned char v7 (signed int, signed char, unsigned int, unsigned int);
unsigned char (*v8) (signed int, signed char, unsigned int, unsigned int) = v7;
extern signed char v9 (unsigned char);
extern signed char (*v10) (unsigned char);
signed char v11 (signed short, signed char, signed int);
signed char (*v12) (signed short, signed char, signed int) = v11;
extern signed int v13 (void);
extern signed int (*v14) (void);
unsigned char v15 (signed char, signed char, signed short, signed short);
unsigned char (*v16) (signed char, signed char, signed short, signed short) = v15;
extern signed int v17 (unsigned char);
extern signed int (*v18) (unsigned char);
signed char v19 (unsigned short);
signed char (*v20) (unsigned short) = v19;
extern signed short v21 (void);
extern signed short (*v22) (void);
extern unsigned char v23 (unsigned short, signed short);
extern unsigned char (*v24) (unsigned short, signed short);
extern signed char v25 (unsigned int, signed int, signed int, signed int);
extern signed char (*v26) (unsigned int, signed int, signed int, signed int);
extern unsigned char v27 (unsigned short, signed short, signed char, unsigned int);
extern unsigned char (*v28) (unsigned short, signed short, signed char, unsigned int);
extern void v29 (signed char, unsigned short, unsigned short);
extern void (*v30) (signed char, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v117 = -2;
unsigned short v116 = 1;
unsigned char v115 = 4;

signed char v19 (unsigned short v118)
{
history[history_index++] = (int)v118;
{
for (;;) {
signed short v121 = -2;
signed char v120 = -1;
signed short v119 = -3;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v122;
signed int v123;
v122 = 5 + 7;
v123 = v17 (v122);
history[history_index++] = (int)v123;
}
break;
case 5: 
{
unsigned int v124;
signed int v125;
signed int v126;
signed int v127;
signed char v128;
v124 = 7U - 4U;
v125 = 2 + 1;
v126 = 1 + 1;
v127 = -4 - 2;
v128 = v25 (v124, v125, v126, v127);
history[history_index++] = (int)v128;
}
break;
case 7: 
{
unsigned char v129;
signed int v130;
v129 = 7 - 0;
v130 = v17 (v129);
history[history_index++] = (int)v130;
}
break;
case 9: 
{
unsigned short v131;
signed short v132;
unsigned char v133;
v131 = v118 - v118;
v132 = v121 + 2;
v133 = v23 (v131, v132);
history[history_index++] = (int)v133;
}
break;
case 11: 
return -1;
default: abort ();
}
}
}
}

unsigned char v15 (signed char v134, signed char v135, signed short v136, signed short v137)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
unsigned char v140 = 0;
unsigned char v139 = 1;
unsigned char v138 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (signed short v141, signed char v142, signed int v143)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
signed char v146 = -3;
signed short v145 = -1;
unsigned short v144 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (signed int v147, signed char v148, unsigned int v149, unsigned int v150)
{
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
{
for (;;) {
signed short v153 = -3;
unsigned char v152 = 6;
signed char v151 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
