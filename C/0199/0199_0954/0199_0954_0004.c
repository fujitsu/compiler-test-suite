#include <stdlib.h>
signed int v1 (unsigned char, signed short);
signed int (*v2) (unsigned char, signed short) = v1;
extern unsigned int v3 (signed int, unsigned short, signed char, unsigned char);
extern unsigned int (*v4) (signed int, unsigned short, signed char, unsigned char);
extern void v5 (signed short, signed short, unsigned char);
extern void (*v6) (signed short, signed short, unsigned char);
extern unsigned int v7 (unsigned short, signed char);
extern unsigned int (*v8) (unsigned short, signed char);
extern signed int v9 (unsigned int, unsigned char, unsigned char, unsigned short);
extern signed int (*v10) (unsigned int, unsigned char, unsigned char, unsigned short);
extern unsigned short v11 (unsigned char, unsigned char, signed int);
extern unsigned short (*v12) (unsigned char, unsigned char, signed int);
extern void v13 (void);
extern void (*v14) (void);
extern unsigned short v15 (signed char, signed int, unsigned int, unsigned short);
extern unsigned short (*v16) (signed char, signed int, unsigned int, unsigned short);
extern signed char v17 (unsigned int, unsigned char, unsigned short, signed short);
extern signed char (*v18) (unsigned int, unsigned char, unsigned short, signed short);
extern unsigned char v19 (signed int, unsigned char);
extern unsigned char (*v20) (signed int, unsigned char);
unsigned int v21 (unsigned char, signed short);
unsigned int (*v22) (unsigned char, signed short) = v21;
unsigned short v23 (unsigned short);
unsigned short (*v24) (unsigned short) = v23;
signed short v25 (signed char, signed short);
signed short (*v26) (signed char, signed short) = v25;
extern signed short v27 (unsigned short, unsigned char);
extern signed short (*v28) (unsigned short, unsigned char);
unsigned short v29 (signed char, unsigned int);
unsigned short (*v30) (signed char, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v122 = 5U;
signed int v121 = 1;
signed int v120 = 1;

unsigned short v29 (signed char v123, unsigned int v124)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed short v127 = -3;
unsigned char v126 = 7;
unsigned short v125 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v25 (signed char v128, signed short v129)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed int v132 = -1;
signed char v131 = 0;
unsigned short v130 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v23 (unsigned short v133)
{
history[history_index++] = (int)v133;
{
for (;;) {
unsigned int v136 = 4U;
unsigned short v135 = 6;
unsigned int v134 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (unsigned char v137, signed short v138)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
unsigned char v141 = 6;
signed int v140 = -4;
unsigned int v139 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (unsigned char v142, signed short v143)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
signed short v146 = -1;
signed char v145 = -3;
signed char v144 = -3;
trace++;
switch (trace)
{
case 0: 
return -4;
case 1: 
{
unsigned char v147;
unsigned char v148;
signed int v149;
unsigned short v150;
v147 = 3 - v142;
v148 = 2 - v142;
v149 = 0 + -3;
v150 = v11 (v147, v148, v149);
history[history_index++] = (int)v150;
}
break;
case 5: 
{
unsigned short v151;
signed char v152;
unsigned int v153;
v151 = 0 + 3;
v152 = v145 - -4;
v153 = v7 (v151, v152);
history[history_index++] = (int)v153;
}
break;
case 15: 
return -1;
default: abort ();
}
}
}
}
