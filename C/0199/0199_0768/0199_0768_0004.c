#include <stdlib.h>
extern unsigned short v1 (signed int);
extern unsigned short (*v2) (signed int);
extern signed int v3 (unsigned char, signed short, unsigned int);
extern signed int (*v4) (unsigned char, signed short, unsigned int);
void v5 (unsigned short);
void (*v6) (unsigned short) = v5;
unsigned char v7 (unsigned int, signed char);
unsigned char (*v8) (unsigned int, signed char) = v7;
unsigned int v9 (signed int, signed char, signed short);
unsigned int (*v10) (signed int, signed char, signed short) = v9;
signed char v11 (signed char, unsigned char, unsigned char);
signed char (*v12) (signed char, unsigned char, unsigned char) = v11;
extern unsigned short v13 (unsigned short);
extern unsigned short (*v14) (unsigned short);
extern signed short v17 (signed short);
extern signed short (*v18) (signed short);
extern unsigned int v19 (unsigned char, signed int, unsigned int, signed char);
extern unsigned int (*v20) (unsigned char, signed int, unsigned int, signed char);
void v21 (signed int);
void (*v22) (signed int) = v21;
extern unsigned char v25 (signed short, signed int, unsigned char, signed int);
extern unsigned char (*v26) (signed short, signed int, unsigned char, signed int);
extern signed int v27 (unsigned int, unsigned int);
extern signed int (*v28) (unsigned int, unsigned int);
extern unsigned short v29 (signed short, signed char);
extern unsigned short (*v30) (signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v118 = 6;
signed short v117 = 3;
unsigned char v116 = 6;

void v21 (signed int v119)
{
history[history_index++] = (int)v119;
{
for (;;) {
unsigned short v122 = 3;
signed int v121 = 2;
unsigned short v120 = 3;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v123;
signed int v124;
unsigned int v125;
signed char v126;
unsigned int v127;
v123 = 5 + 4;
v124 = v121 + v119;
v125 = 2U + 2U;
v126 = -4 + 3;
v127 = v19 (v123, v124, v125, v126);
history[history_index++] = (int)v127;
}
break;
case 3: 
{
unsigned char v128;
signed int v129;
unsigned int v130;
signed char v131;
unsigned int v132;
v128 = 0 + 5;
v129 = 0 - v121;
v130 = 2U - 7U;
v131 = 1 - -1;
v132 = v19 (v128, v129, v130, v131);
history[history_index++] = (int)v132;
}
break;
case 5: 
return;
default: abort ();
}
}
}
}

signed char v11 (signed char v133, unsigned char v134, unsigned char v135)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
signed short v138 = -4;
signed short v137 = 3;
unsigned short v136 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (signed int v139, signed char v140, signed short v141)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
signed int v144 = 1;
unsigned char v143 = 2;
signed char v142 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned int v145, signed char v146)
{
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
unsigned char v149 = 3;
unsigned char v148 = 0;
signed char v147 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned short v150)
{
history[history_index++] = (int)v150;
{
for (;;) {
unsigned short v153 = 6;
signed short v152 = -2;
unsigned short v151 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
