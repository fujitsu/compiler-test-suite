#include <stdlib.h>
extern unsigned int v1 (unsigned short, unsigned char, unsigned short);
extern unsigned int (*v2) (unsigned short, unsigned char, unsigned short);
extern signed int v3 (unsigned int, unsigned int, unsigned short);
extern signed int (*v4) (unsigned int, unsigned int, unsigned short);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern unsigned int v7 (signed int, signed int, unsigned short);
extern unsigned int (*v8) (signed int, signed int, unsigned short);
signed char v9 (unsigned char);
signed char (*v10) (unsigned char) = v9;
extern unsigned char v13 (unsigned short, unsigned short, signed int, signed int);
extern unsigned char (*v14) (unsigned short, unsigned short, signed int, signed int);
signed short v15 (signed char, unsigned short, signed short);
signed short (*v16) (signed char, unsigned short, signed short) = v15;
extern signed int v17 (signed int, signed int, unsigned int);
extern signed int (*v18) (signed int, signed int, unsigned int);
extern unsigned int v19 (signed char);
extern unsigned int (*v20) (signed char);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern unsigned int v23 (unsigned char);
extern unsigned int (*v24) (unsigned char);
extern unsigned short v25 (signed char, unsigned short, unsigned short);
extern unsigned short (*v26) (signed char, unsigned short, unsigned short);
unsigned char v27 (unsigned char, unsigned int, signed short);
unsigned char (*v28) (unsigned char, unsigned int, signed short) = v27;
extern signed int v29 (signed char, signed short);
extern signed int (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v122 = 5U;
unsigned short v121 = 7;
unsigned int v120 = 6U;

unsigned char v27 (unsigned char v123, unsigned int v124, signed short v125)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
unsigned char v128 = 2;
signed int v127 = -1;
unsigned char v126 = 0;
trace++;
switch (trace)
{
case 4: 
{
signed char v129;
signed short v130;
signed int v131;
v129 = 0 - -1;
v130 = v125 + v125;
v131 = v29 (v129, v130);
history[history_index++] = (int)v131;
}
break;
case 6: 
{
signed char v132;
signed short v133;
signed int v134;
v132 = -2 + 0;
v133 = v125 - -2;
v134 = v29 (v132, v133);
history[history_index++] = (int)v134;
}
break;
case 8: 
{
signed char v135;
signed short v136;
signed int v137;
v135 = -3 + -3;
v136 = v125 - v125;
v137 = v29 (v135, v136);
history[history_index++] = (int)v137;
}
break;
case 10: 
{
signed char v138;
signed short v139;
signed int v140;
v138 = -1 + 1;
v139 = -1 - v125;
v140 = v29 (v138, v139);
history[history_index++] = (int)v140;
}
break;
case 12: 
return v128;
default: abort ();
}
}
}
}

signed short v15 (signed char v141, unsigned short v142, signed short v143)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
unsigned int v146 = 2U;
unsigned int v145 = 2U;
signed char v144 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (unsigned char v147)
{
history[history_index++] = (int)v147;
{
for (;;) {
unsigned char v150 = 2;
unsigned char v149 = 4;
unsigned int v148 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
