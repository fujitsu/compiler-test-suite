#include <stdlib.h>
unsigned char v1 (signed char, unsigned short, unsigned char, unsigned char);
unsigned char (*v2) (signed char, unsigned short, unsigned char, unsigned char) = v1;
extern void v3 (signed char, unsigned char, unsigned short);
extern void (*v4) (signed char, unsigned char, unsigned short);
extern signed int v5 (unsigned short, unsigned short);
extern signed int (*v6) (unsigned short, unsigned short);
static unsigned int v7 (signed int, signed int);
static unsigned int (*v8) (signed int, signed int) = v7;
extern void v9 (unsigned short, signed char, unsigned int);
extern void (*v10) (unsigned short, signed char, unsigned int);
extern signed short v11 (signed char, signed int);
extern signed short (*v12) (signed char, signed int);
extern signed short v13 (unsigned short, signed char, unsigned short, signed short);
extern signed short (*v14) (unsigned short, signed char, unsigned short, signed short);
extern unsigned char v15 (signed int, unsigned int, signed char, signed int);
extern unsigned char (*v16) (signed int, unsigned int, signed char, signed int);
signed char v17 (unsigned int, signed char, unsigned char, unsigned char);
signed char (*v18) (unsigned int, signed char, unsigned char, unsigned char) = v17;
extern unsigned char v19 (unsigned int);
extern unsigned char (*v20) (unsigned int);
extern signed short v21 (unsigned int, unsigned short);
extern signed short (*v22) (unsigned int, unsigned short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern unsigned char v25 (unsigned char, signed int);
extern unsigned char (*v26) (unsigned char, signed int);
void v27 (signed short, unsigned short, signed int, unsigned int);
void (*v28) (signed short, unsigned short, signed int, unsigned int) = v27;
extern int history[];
extern int history_index;
extern int trace;
signed int v112 = 3;
unsigned char v111 = 1;
unsigned short v110 = 7;

void v27 (signed short v113, unsigned short v114, signed int v115, unsigned int v116)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed short v119 = -3;
signed short v118 = -3;
unsigned short v117 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (unsigned int v120, signed char v121, unsigned char v122, unsigned char v123)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
unsigned short v126 = 1;
unsigned int v125 = 5U;
unsigned short v124 = 5;
trace++;
switch (trace)
{
case 8: 
{
signed int v127;
unsigned int v128;
signed char v129;
signed int v130;
unsigned char v131;
v127 = -2 + 1;
v128 = v125 + v120;
v129 = -4 - v121;
v130 = -2 + 2;
v131 = v15 (v127, v128, v129, v130);
history[history_index++] = (int)v131;
}
break;
case 10: 
return v121;
default: abort ();
}
}
}
}

static unsigned int v7 (signed int v132, signed int v133)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned int v136 = 5U;
unsigned int v135 = 4U;
signed int v134 = 2;
trace++;
switch (trace)
{
case 1: 
{
signed int v137;
unsigned int v138;
signed char v139;
signed int v140;
unsigned char v141;
v137 = v132 + v132;
v138 = 5U + v136;
v139 = 0 - 3;
v140 = -2 - 3;
v141 = v15 (v137, v138, v139, v140);
history[history_index++] = (int)v141;
}
break;
case 3: 
return v136;
default: abort ();
}
}
}
}

unsigned char v1 (signed char v142, unsigned short v143, unsigned char v144, unsigned char v145)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
{
for (;;) {
unsigned int v148 = 0U;
signed char v147 = -4;
unsigned int v146 = 0U;
trace++;
switch (trace)
{
case 0: 
{
signed int v149;
signed int v150;
unsigned int v151;
v149 = -4 - 3;
v150 = 2 + 0;
v151 = v7 (v149, v150);
history[history_index++] = (int)v151;
}
break;
case 4: 
{
unsigned int v152;
unsigned char v153;
v152 = v146 + v146;
v153 = v19 (v152);
history[history_index++] = (int)v153;
}
break;
case 14: 
return 2;
default: abort ();
}
}
}
}
