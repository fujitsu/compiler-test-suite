#include <stdlib.h>
unsigned char v1 (unsigned char, signed short);
unsigned char (*v2) (unsigned char, signed short) = v1;
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern unsigned int v5 (signed char, unsigned short, signed char, unsigned char);
extern unsigned int (*v6) (signed char, unsigned short, signed char, unsigned char);
extern signed short v7 (void);
extern signed short (*v8) (void);
signed int v9 (void);
signed int (*v10) (void) = v9;
extern signed short v11 (signed char, unsigned short, unsigned char);
extern signed short (*v12) (signed char, unsigned short, unsigned char);
extern signed int v13 (unsigned short, signed int, signed char, signed short);
extern signed int (*v14) (unsigned short, signed int, signed char, signed short);
extern signed int v15 (unsigned int, unsigned int, signed short, unsigned short);
extern signed int (*v16) (unsigned int, unsigned int, signed short, unsigned short);
static unsigned short v17 (unsigned int);
static unsigned short (*v18) (unsigned int) = v17;
signed short v19 (unsigned int, unsigned int, unsigned short, signed int);
signed short (*v20) (unsigned int, unsigned int, unsigned short, signed int) = v19;
extern signed int v21 (unsigned int, signed int, signed short, signed int);
extern signed int (*v22) (unsigned int, signed int, signed short, signed int);
extern void v23 (signed char);
extern void (*v24) (signed char);
extern unsigned int v27 (unsigned char, unsigned int, unsigned short, unsigned int);
extern unsigned int (*v28) (unsigned char, unsigned int, unsigned short, unsigned int);
signed int v29 (unsigned int, unsigned char, unsigned char);
signed int (*v30) (unsigned int, unsigned char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v121 = 3;
signed short v120 = -2;
unsigned int v119 = 2U;

signed int v29 (unsigned int v122, unsigned char v123, unsigned char v124)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed char v127 = -3;
unsigned int v126 = 6U;
unsigned char v125 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (unsigned int v128, unsigned int v129, unsigned short v130, signed int v131)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed int v134 = 3;
signed short v133 = 0;
unsigned char v132 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v17 (unsigned int v135)
{
history[history_index++] = (int)v135;
{
for (;;) {
unsigned char v138 = 4;
unsigned char v137 = 0;
unsigned short v136 = 7;
trace++;
switch (trace)
{
case 1: 
return 7;
default: abort ();
}
}
}
}

signed int v9 (void)
{
{
for (;;) {
signed int v141 = -4;
unsigned int v140 = 0U;
signed char v139 = -2;
trace++;
switch (trace)
{
case 8: 
return 2;
default: abort ();
}
}
}
}

unsigned char v1 (unsigned char v142, signed short v143)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
signed int v146 = -1;
signed int v145 = -2;
signed short v144 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v147;
unsigned short v148;
v147 = 4U + 7U;
v148 = v17 (v147);
history[history_index++] = (int)v148;
}
break;
case 2: 
{
signed char v149;
unsigned short v150;
signed char v151;
unsigned char v152;
unsigned int v153;
v149 = 3 + 3;
v150 = 2 - 1;
v151 = 0 - 1;
v152 = 2 - v142;
v153 = v5 (v149, v150, v151, v152);
history[history_index++] = (int)v153;
}
break;
case 12: 
return v142;
default: abort ();
}
}
}
}
