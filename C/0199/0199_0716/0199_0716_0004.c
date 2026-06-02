#include <stdlib.h>
unsigned int v1 (unsigned int, signed short, unsigned int);
unsigned int (*v2) (unsigned int, signed short, unsigned int) = v1;
extern unsigned char v3 (unsigned char, unsigned short, unsigned char, signed short);
extern unsigned char (*v4) (unsigned char, unsigned short, unsigned char, signed short);
unsigned short v5 (signed int);
unsigned short (*v6) (signed int) = v5;
signed int v7 (unsigned short, unsigned int, unsigned int, unsigned char);
signed int (*v8) (unsigned short, unsigned int, unsigned int, unsigned char) = v7;
extern signed char v9 (unsigned char, unsigned int, signed char);
extern signed char (*v10) (unsigned char, unsigned int, signed char);
extern unsigned short v11 (unsigned int, unsigned int, signed short, unsigned int);
extern unsigned short (*v12) (unsigned int, unsigned int, signed short, unsigned int);
signed char v13 (unsigned int, unsigned short);
signed char (*v14) (unsigned int, unsigned short) = v13;
extern unsigned int v15 (signed short, signed short);
extern unsigned int (*v16) (signed short, signed short);
extern unsigned short v17 (unsigned int, unsigned short, unsigned char);
extern unsigned short (*v18) (unsigned int, unsigned short, unsigned char);
extern unsigned int v19 (unsigned short);
extern unsigned int (*v20) (unsigned short);
extern unsigned short v21 (signed char, signed int);
extern unsigned short (*v22) (signed char, signed int);
unsigned short v23 (unsigned short, unsigned char);
unsigned short (*v24) (unsigned short, unsigned char) = v23;
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed char v27 (unsigned char, unsigned int, signed char);
extern signed char (*v28) (unsigned char, unsigned int, signed char);
extern unsigned int v29 (unsigned char);
extern unsigned int (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v112 = 0;
unsigned short v111 = 4;
unsigned int v110 = 1U;

unsigned short v23 (unsigned short v113, unsigned char v114)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
unsigned char v117 = 0;
signed int v116 = -2;
signed short v115 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (unsigned int v118, unsigned short v119)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned char v122 = 5;
signed char v121 = 2;
signed int v120 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (unsigned short v123, unsigned int v124, unsigned int v125, unsigned char v126)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed int v129 = -2;
unsigned int v128 = 1U;
unsigned short v127 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed int v130)
{
history[history_index++] = (int)v130;
{
for (;;) {
unsigned char v133 = 5;
signed int v132 = -4;
signed short v131 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (unsigned int v134, signed short v135, unsigned int v136)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
unsigned char v139 = 0;
signed int v138 = 1;
unsigned char v137 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v140;
unsigned int v141;
signed char v142;
signed char v143;
v140 = 5 - v139;
v141 = v136 - v136;
v142 = -3 + -4;
v143 = v27 (v140, v141, v142);
history[history_index++] = (int)v143;
}
break;
case 2: 
{
unsigned int v144;
unsigned int v145;
signed short v146;
unsigned int v147;
unsigned short v148;
v144 = 1U - 6U;
v145 = v134 - 2U;
v146 = v135 - v135;
v147 = v136 - 0U;
v148 = v11 (v144, v145, v146, v147);
history[history_index++] = (int)v148;
}
break;
case 12: 
return v136;
default: abort ();
}
}
}
}
