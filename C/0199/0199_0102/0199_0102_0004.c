#include <stdlib.h>
unsigned char v1 (void);
unsigned char (*v2) (void) = v1;
extern unsigned char v3 (signed short);
extern unsigned char (*v4) (signed short);
extern void v5 (signed short, unsigned short, unsigned short);
extern void (*v6) (signed short, unsigned short, unsigned short);
extern void v7 (signed char, signed int, unsigned int);
extern void (*v8) (signed char, signed int, unsigned int);
extern signed short v9 (unsigned char, unsigned int, signed char, signed char);
extern signed short (*v10) (unsigned char, unsigned int, signed char, signed char);
signed int v11 (signed char);
signed int (*v12) (signed char) = v11;
unsigned char v13 (unsigned char, unsigned char, unsigned short);
unsigned char (*v14) (unsigned char, unsigned char, unsigned short) = v13;
extern unsigned short v15 (signed short, signed char, unsigned short, signed short);
extern unsigned short (*v16) (signed short, signed char, unsigned short, signed short);
signed char v17 (unsigned short, signed char, unsigned char);
signed char (*v18) (unsigned short, signed char, unsigned char) = v17;
signed char v19 (unsigned char);
signed char (*v20) (unsigned char) = v19;
extern signed short v21 (signed char, unsigned short, signed char, unsigned int);
extern signed short (*v22) (signed char, unsigned short, signed char, unsigned int);
extern unsigned short v23 (signed short, signed int, unsigned short, signed char);
extern unsigned short (*v24) (signed short, signed int, unsigned short, signed char);
extern unsigned short v25 (unsigned char);
extern unsigned short (*v26) (unsigned char);
extern signed char v27 (signed short, signed int);
extern signed char (*v28) (signed short, signed int);
extern signed int v29 (unsigned char, unsigned int, unsigned int);
extern signed int (*v30) (unsigned char, unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v118 = 1;
unsigned int v117 = 2U;
unsigned char v116 = 0;

signed char v19 (unsigned char v119)
{
history[history_index++] = (int)v119;
{
for (;;) {
signed short v122 = -2;
signed int v121 = -3;
unsigned char v120 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (unsigned short v123, signed char v124, unsigned char v125)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed int v128 = -3;
unsigned char v127 = 3;
unsigned int v126 = 6U;
trace++;
switch (trace)
{
case 6: 
{
unsigned char v129;
unsigned short v130;
v129 = v127 + 4;
v130 = v25 (v129);
history[history_index++] = (int)v130;
}
break;
case 8: 
{
unsigned char v131;
unsigned int v132;
unsigned int v133;
signed int v134;
v131 = 0 + 0;
v132 = v126 - v126;
v133 = 6U + v126;
v134 = v29 (v131, v132, v133);
history[history_index++] = (int)v134;
}
break;
case 10: 
{
unsigned char v135;
unsigned int v136;
unsigned int v137;
signed int v138;
v135 = v125 - 4;
v136 = v126 - 4U;
v137 = v126 - 0U;
v138 = v29 (v135, v136, v137);
history[history_index++] = (int)v138;
}
break;
case 12: 
return -4;
default: abort ();
}
}
}
}

unsigned char v13 (unsigned char v139, unsigned char v140, unsigned short v141)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
unsigned short v144 = 2;
signed short v143 = 3;
unsigned char v142 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (signed char v145)
{
history[history_index++] = (int)v145;
{
for (;;) {
signed short v148 = -2;
unsigned short v147 = 0;
signed short v146 = -4;
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
signed short v151 = -3;
unsigned short v150 = 7;
unsigned short v149 = 5;
trace++;
switch (trace)
{
case 0: 
{
signed short v152;
unsigned short v153;
unsigned short v154;
v152 = v151 + 3;
v153 = v149 - 1;
v154 = v149 + v149;
v5 (v152, v153, v154);
}
break;
case 14: 
return 7;
default: abort ();
}
}
}
}
