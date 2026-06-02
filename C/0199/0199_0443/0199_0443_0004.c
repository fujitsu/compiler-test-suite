#include <stdlib.h>
signed int v1 (signed short, unsigned short);
signed int (*v2) (signed short, unsigned short) = v1;
unsigned int v3 (signed char, unsigned char);
unsigned int (*v4) (signed char, unsigned char) = v3;
extern signed char v5 (void);
extern signed char (*v6) (void);
signed char v7 (signed short, signed int, signed char);
signed char (*v8) (signed short, signed int, signed char) = v7;
unsigned short v9 (void);
unsigned short (*v10) (void) = v9;
extern unsigned short v11 (signed char, signed int);
extern unsigned short (*v12) (signed char, signed int);
extern signed short v13 (unsigned int);
extern signed short (*v14) (unsigned int);
extern unsigned char v15 (signed int, signed char, unsigned int, signed short);
extern unsigned char (*v16) (signed int, signed char, unsigned int, signed short);
extern unsigned short v17 (signed int, signed char);
extern unsigned short (*v18) (signed int, signed char);
extern unsigned char v19 (signed char, unsigned char, signed char, signed char);
extern unsigned char (*v20) (signed char, unsigned char, signed char, signed char);
extern unsigned int v21 (signed char, signed int, unsigned int);
extern unsigned int (*v22) (signed char, signed int, unsigned int);
extern unsigned short v23 (unsigned int, unsigned int);
extern unsigned short (*v24) (unsigned int, unsigned int);
extern unsigned char v25 (unsigned char, unsigned short, unsigned short, unsigned char);
extern unsigned char (*v26) (unsigned char, unsigned short, unsigned short, unsigned char);
extern signed char v27 (signed short, signed char, signed char, signed short);
extern signed char (*v28) (signed short, signed char, signed char, signed short);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v119 = 1U;
unsigned char v118 = 7;
unsigned short v117 = 4;

unsigned short v9 (void)
{
{
for (;;) {
unsigned char v122 = 7;
signed char v121 = 2;
signed short v120 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (signed short v123, signed int v124, signed char v125)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
unsigned short v128 = 5;
unsigned char v127 = 6;
unsigned char v126 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (signed char v129, unsigned char v130)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
unsigned char v133 = 6;
signed char v132 = 2;
unsigned int v131 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (signed short v134, unsigned short v135)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
unsigned short v138 = 2;
unsigned char v137 = 2;
unsigned char v136 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed short v139;
v139 = v29 ();
history[history_index++] = (int)v139;
}
break;
case 2: 
{
signed short v140;
signed char v141;
signed char v142;
signed short v143;
signed char v144;
v140 = v134 + v134;
v141 = -3 - -1;
v142 = 2 - 0;
v143 = -2 - v134;
v144 = v27 (v140, v141, v142, v143);
history[history_index++] = (int)v144;
}
break;
case 4: 
{
signed int v145;
signed char v146;
unsigned int v147;
signed short v148;
unsigned char v149;
v145 = -3 + 3;
v146 = -3 + 2;
v147 = 4U - 0U;
v148 = 2 + -1;
v149 = v15 (v145, v146, v147, v148);
history[history_index++] = (int)v149;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}
