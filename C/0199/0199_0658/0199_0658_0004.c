#include <stdlib.h>
extern unsigned int v1 (unsigned int, signed int);
extern unsigned int (*v2) (unsigned int, signed int);
extern unsigned short v3 (signed short, signed int, unsigned short, signed short);
extern unsigned short (*v4) (signed short, signed int, unsigned short, signed short);
extern unsigned short v5 (unsigned short, unsigned char, unsigned int, signed char);
extern unsigned short (*v6) (unsigned short, unsigned char, unsigned int, signed char);
extern signed char v7 (unsigned char);
extern signed char (*v8) (unsigned char);
extern signed int v9 (signed char);
extern signed int (*v10) (signed char);
signed int v11 (unsigned short);
signed int (*v12) (unsigned short) = v11;
extern signed int v15 (signed char, signed int, unsigned char);
extern signed int (*v16) (signed char, signed int, unsigned char);
signed short v17 (signed short);
signed short (*v18) (signed short) = v17;
extern signed char v19 (unsigned int, signed int);
extern signed char (*v20) (unsigned int, signed int);
signed int v21 (signed int, signed short, unsigned short, signed int);
signed int (*v22) (signed int, signed short, unsigned short, signed int) = v21;
extern unsigned char v23 (unsigned int, signed int, unsigned int);
extern unsigned char (*v24) (unsigned int, signed int, unsigned int);
void v25 (unsigned char);
void (*v26) (unsigned char) = v25;
signed short v27 (signed short);
signed short (*v28) (signed short) = v27;
unsigned short v29 (unsigned short, signed char);
unsigned short (*v30) (unsigned short, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v113 = 7;
unsigned short v112 = 0;
unsigned short v111 = 6;

unsigned short v29 (unsigned short v114, signed char v115)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
signed int v118 = 2;
unsigned int v117 = 5U;
unsigned char v116 = 1;
trace++;
switch (trace)
{
case 10: 
return v114;
default: abort ();
}
}
}
}

signed short v27 (signed short v119)
{
history[history_index++] = (int)v119;
{
for (;;) {
unsigned short v122 = 5;
unsigned short v121 = 7;
unsigned char v120 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v25 (unsigned char v123)
{
history[history_index++] = (int)v123;
{
for (;;) {
unsigned int v126 = 0U;
signed char v125 = 1;
unsigned short v124 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (signed int v127, signed short v128, unsigned short v129, signed int v130)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed short v133 = -1;
signed short v132 = -3;
unsigned short v131 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (signed short v134)
{
history[history_index++] = (int)v134;
{
for (;;) {
unsigned int v137 = 0U;
unsigned short v136 = 3;
signed short v135 = -3;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v138;
signed int v139;
signed char v140;
v138 = v137 - v137;
v139 = -1 + 2;
v140 = v19 (v138, v139);
history[history_index++] = (int)v140;
}
break;
case 5: 
{
unsigned int v141;
signed int v142;
signed char v143;
v141 = v137 - v137;
v142 = 0 - -2;
v143 = v19 (v141, v142);
history[history_index++] = (int)v143;
}
break;
case 7: 
return 0;
default: abort ();
}
}
}
}

signed int v11 (unsigned short v144)
{
history[history_index++] = (int)v144;
{
for (;;) {
unsigned int v147 = 7U;
unsigned char v146 = 1;
signed int v145 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
