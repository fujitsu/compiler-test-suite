#include <stdlib.h>
unsigned short v1 (signed char, signed char, unsigned char);
unsigned short (*v2) (signed char, signed char, unsigned char) = v1;
extern unsigned int v3 (signed int);
extern unsigned int (*v4) (signed int);
extern unsigned char v5 (unsigned char, unsigned char);
extern unsigned char (*v6) (unsigned char, unsigned char);
extern unsigned char v7 (unsigned char, signed int, signed int, signed int);
extern unsigned char (*v8) (unsigned char, signed int, signed int, signed int);
extern signed short v9 (void);
extern signed short (*v10) (void);
unsigned char v11 (unsigned int, signed char);
unsigned char (*v12) (unsigned int, signed char) = v11;
extern signed char v13 (signed short);
extern signed char (*v14) (signed short);
extern signed int v15 (signed short, signed char, unsigned int, signed char);
extern signed int (*v16) (signed short, signed char, unsigned int, signed char);
void v19 (signed int, signed int, unsigned char, signed char);
void (*v20) (signed int, signed int, unsigned char, signed char) = v19;
signed short v21 (signed short, unsigned int, unsigned int);
signed short (*v22) (signed short, unsigned int, unsigned int) = v21;
signed int v23 (signed int);
signed int (*v24) (signed int) = v23;
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed short v27 (unsigned short, unsigned int);
extern signed short (*v28) (unsigned short, unsigned int);
signed short v29 (unsigned short, unsigned int, signed int, unsigned char);
signed short (*v30) (unsigned short, unsigned int, signed int, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v114 = 5;
signed char v113 = -1;
signed short v112 = -3;

signed short v29 (unsigned short v115, unsigned int v116, signed int v117, unsigned char v118)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
unsigned short v121 = 6;
signed char v120 = -4;
unsigned short v119 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v23 (signed int v122)
{
history[history_index++] = (int)v122;
{
for (;;) {
signed int v125 = -3;
unsigned int v124 = 2U;
signed char v123 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (signed short v126, unsigned int v127, unsigned int v128)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
signed short v131 = 1;
unsigned int v130 = 5U;
signed int v129 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (signed int v132, signed int v133, unsigned char v134, signed char v135)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
unsigned short v138 = 0;
signed short v137 = -2;
signed short v136 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (unsigned int v139, signed char v140)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
unsigned short v143 = 0;
unsigned int v142 = 6U;
unsigned char v141 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (signed char v144, signed char v145, unsigned char v146)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
unsigned int v149 = 0U;
signed char v148 = -2;
signed char v147 = 2;
trace++;
switch (trace)
{
case 0: 
return 6;
case 1: 
{
signed short v150;
signed char v151;
unsigned int v152;
signed char v153;
signed int v154;
v150 = 0 + 0;
v151 = -4 - v144;
v152 = 5U - 5U;
v153 = 0 - v145;
v154 = v15 (v150, v151, v152, v153);
history[history_index++] = (int)v154;
}
break;
case 15: 
return 4;
default: abort ();
}
}
}
}
