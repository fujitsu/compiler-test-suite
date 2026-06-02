#include <stdlib.h>
signed int v1 (unsigned int, signed char, unsigned char, unsigned char);
signed int (*v2) (unsigned int, signed char, unsigned char, unsigned char) = v1;
extern unsigned char v3 (unsigned int, signed int);
extern unsigned char (*v4) (unsigned int, signed int);
extern unsigned char v5 (signed short, signed short, signed char);
extern unsigned char (*v6) (signed short, signed short, signed char);
extern unsigned char v7 (unsigned int);
extern unsigned char (*v8) (unsigned int);
extern void v9 (unsigned char, signed char, signed short, unsigned int);
extern void (*v10) (unsigned char, signed char, signed short, unsigned int);
extern signed short v11 (signed int, unsigned short, unsigned int);
extern signed short (*v12) (signed int, unsigned short, unsigned int);
extern signed int v13 (signed char, signed short, unsigned int);
extern signed int (*v14) (signed char, signed short, unsigned int);
extern signed int v15 (signed char, signed int, unsigned short);
extern signed int (*v16) (signed char, signed int, unsigned short);
unsigned int v17 (void);
unsigned int (*v18) (void) = v17;
extern unsigned int v19 (signed char, signed int);
extern unsigned int (*v20) (signed char, signed int);
unsigned int v21 (unsigned char, signed int, unsigned char, unsigned short);
unsigned int (*v22) (unsigned char, signed int, unsigned char, unsigned short) = v21;
extern signed short v23 (unsigned short, unsigned char);
extern signed short (*v24) (unsigned short, unsigned char);
signed int v25 (void);
signed int (*v26) (void) = v25;
extern signed char v27 (signed short, unsigned int, signed char);
extern signed char (*v28) (signed short, unsigned int, signed char);
unsigned int v29 (signed char, signed int, unsigned short);
unsigned int (*v30) (signed char, signed int, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v112 = 0;
unsigned char v111 = 5;
unsigned short v110 = 6;

unsigned int v29 (signed char v113, signed int v114, unsigned short v115)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned char v118 = 0;
unsigned int v117 = 7U;
signed short v116 = -2;
trace++;
switch (trace)
{
case 4: 
return 2U;
default: abort ();
}
}
}
}

signed int v25 (void)
{
{
for (;;) {
unsigned int v121 = 0U;
unsigned short v120 = 1;
unsigned char v119 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (unsigned char v122, signed int v123, unsigned char v124, unsigned short v125)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
unsigned short v128 = 0;
signed short v127 = -4;
signed short v126 = -1;
trace++;
switch (trace)
{
case 6: 
return 0U;
case 8: 
{
signed short v129;
unsigned int v130;
signed char v131;
signed char v132;
v129 = v127 + -1;
v130 = 4U + 4U;
v131 = 0 + 3;
v132 = v27 (v129, v130, v131);
history[history_index++] = (int)v132;
}
break;
case 10: 
{
signed short v133;
unsigned int v134;
signed char v135;
signed char v136;
v133 = v127 + v127;
v134 = 5U + 2U;
v135 = -3 - 0;
v136 = v27 (v133, v134, v135);
history[history_index++] = (int)v136;
}
break;
case 12: 
return 0U;
default: abort ();
}
}
}
}

unsigned int v17 (void)
{
{
for (;;) {
signed short v139 = 1;
unsigned short v138 = 6;
signed char v137 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (unsigned int v140, signed char v141, unsigned char v142, unsigned char v143)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
unsigned char v146 = 6;
unsigned int v145 = 2U;
unsigned int v144 = 5U;
trace++;
switch (trace)
{
case 0: 
{
signed char v147;
signed int v148;
unsigned short v149;
signed int v150;
v147 = -2 - v141;
v148 = -1 - 2;
v149 = 3 - 7;
v150 = v15 (v147, v148, v149);
history[history_index++] = (int)v150;
}
break;
case 14: 
return 1;
default: abort ();
}
}
}
}
