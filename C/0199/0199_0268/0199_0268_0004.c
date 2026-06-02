#include <stdlib.h>
signed short v1 (signed int, unsigned short, signed char, unsigned short);
signed short (*v2) (signed int, unsigned short, signed char, unsigned short) = v1;
extern signed char v3 (unsigned short);
extern signed char (*v4) (unsigned short);
extern unsigned int v5 (unsigned char, unsigned short, unsigned char);
extern unsigned int (*v6) (unsigned char, unsigned short, unsigned char);
extern signed short v7 (signed short, signed char);
extern signed short (*v8) (signed short, signed char);
extern signed char v9 (signed short, unsigned short, signed int, unsigned int);
extern signed char (*v10) (signed short, unsigned short, signed int, unsigned int);
extern signed char v11 (unsigned char);
extern signed char (*v12) (unsigned char);
extern signed int v13 (signed char, signed short, signed char);
extern signed int (*v14) (signed char, signed short, signed char);
extern unsigned char v15 (unsigned int, unsigned int, signed int, signed short);
extern unsigned char (*v16) (unsigned int, unsigned int, signed int, signed short);
extern unsigned char v17 (unsigned short);
extern unsigned char (*v18) (unsigned short);
static unsigned short v19 (signed short, unsigned int);
static unsigned short (*v20) (signed short, unsigned int) = v19;
static unsigned int v23 (signed char, unsigned short);
static unsigned int (*v24) (signed char, unsigned short) = v23;
extern signed char v25 (unsigned int, unsigned short);
extern signed char (*v26) (unsigned int, unsigned short);
extern unsigned int v29 (signed short);
extern unsigned int (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v122 = 3;
unsigned short v121 = 5;
signed char v120 = 3;

static unsigned int v23 (signed char v123, unsigned short v124)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned short v127 = 3;
unsigned char v126 = 5;
signed char v125 = -3;
trace++;
switch (trace)
{
case 2: 
{
signed int v128;
unsigned short v129;
signed char v130;
unsigned short v131;
signed short v132;
v128 = -4 + 0;
v129 = 7 + v124;
v130 = -1 + v123;
v131 = v124 - v124;
v132 = v1 (v128, v129, v130, v131);
history[history_index++] = (int)v132;
}
break;
case 14: 
return 0U;
default: abort ();
}
}
}
}

static unsigned short v19 (signed short v133, unsigned int v134)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
unsigned short v137 = 4;
unsigned char v136 = 5;
signed char v135 = -2;
trace++;
switch (trace)
{
case 1: 
{
signed char v138;
unsigned short v139;
unsigned int v140;
v138 = 1 + 1;
v139 = v137 + v137;
v140 = v23 (v138, v139);
history[history_index++] = (int)v140;
}
break;
case 15: 
return v137;
default: abort ();
}
}
}
}

signed short v1 (signed int v141, unsigned short v142, signed char v143, unsigned short v144)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
signed int v147 = 1;
signed short v146 = -3;
unsigned int v145 = 0U;
trace++;
switch (trace)
{
case 0: 
{
signed short v148;
unsigned int v149;
unsigned short v150;
v148 = -1 + v146;
v149 = v145 - v145;
v150 = v19 (v148, v149);
history[history_index++] = (int)v150;
}
break;
case 3: 
{
unsigned short v151;
signed char v152;
v151 = v144 - 5;
v152 = v3 (v151);
history[history_index++] = (int)v152;
}
break;
case 7: 
{
signed short v153;
unsigned short v154;
signed int v155;
unsigned int v156;
signed char v157;
v153 = 0 + v146;
v154 = v144 + v142;
v155 = -2 + -3;
v156 = v145 - v145;
v157 = v9 (v153, v154, v155, v156);
history[history_index++] = (int)v157;
}
break;
case 13: 
return v146;
case 16: 
return 2;
default: abort ();
}
}
}
}
