#include <stdlib.h>
signed short v1 (signed short, unsigned short, signed char);
signed short (*v2) (signed short, unsigned short, signed char) = v1;
unsigned short v3 (unsigned short);
unsigned short (*v4) (unsigned short) = v3;
extern unsigned int v5 (unsigned char, unsigned char, unsigned int);
extern unsigned int (*v6) (unsigned char, unsigned char, unsigned int);
extern signed short v7 (signed int, unsigned short);
extern signed short (*v8) (signed int, unsigned short);
static unsigned short v9 (unsigned int, unsigned short, unsigned int, signed short);
static unsigned short (*v10) (unsigned int, unsigned short, unsigned int, signed short) = v9;
extern unsigned char v11 (signed int, signed char, signed int, unsigned char);
extern unsigned char (*v12) (signed int, signed char, signed int, unsigned char);
extern unsigned int v13 (unsigned short, signed short, signed int, unsigned short);
extern unsigned int (*v14) (unsigned short, signed short, signed int, unsigned short);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern signed int v17 (signed short, signed short);
extern signed int (*v18) (signed short, signed short);
extern unsigned short v19 (unsigned char, signed int, signed int, signed char);
extern unsigned short (*v20) (unsigned char, signed int, signed int, signed char);
extern unsigned char v21 (signed short);
extern unsigned char (*v22) (signed short);
extern signed char v23 (signed int);
extern signed char (*v24) (signed int);
extern unsigned char v25 (signed short);
extern unsigned char (*v26) (signed short);
extern void v27 (unsigned short);
extern void (*v28) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v129 = 2;
unsigned short v128 = 7;
signed char v127 = 2;

static unsigned short v9 (unsigned int v130, unsigned short v131, unsigned int v132, signed short v133)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned char v136 = 0;
signed short v135 = 1;
unsigned int v134 = 7U;
trace++;
switch (trace)
{
case 3: 
{
signed short v137;
unsigned char v138;
v137 = -1 - v133;
v138 = v21 (v137);
history[history_index++] = (int)v138;
}
break;
case 7: 
{
signed int v139;
signed char v140;
signed int v141;
unsigned char v142;
unsigned char v143;
v139 = 1 - 2;
v140 = -3 - 0;
v141 = 3 - 2;
v142 = 3 + v136;
v143 = v11 (v139, v140, v141, v142);
history[history_index++] = (int)v143;
}
break;
case 13: 
return v131;
default: abort ();
}
}
}
}

unsigned short v3 (unsigned short v144)
{
history[history_index++] = (int)v144;
{
for (;;) {
signed short v147 = -3;
signed short v146 = 3;
unsigned char v145 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed short v148, unsigned short v149, signed char v150)
{
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
{
for (;;) {
unsigned short v153 = 6;
signed short v152 = -4;
signed char v151 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v154;
v154 = v149 + v149;
v27 (v154);
}
break;
case 2: 
{
unsigned int v155;
unsigned short v156;
unsigned int v157;
signed short v158;
unsigned short v159;
v155 = 3U + 3U;
v156 = 4 - v149;
v157 = 7U + 1U;
v158 = -3 + v152;
v159 = v9 (v155, v156, v157, v158);
history[history_index++] = (int)v159;
}
break;
case 14: 
return -4;
default: abort ();
}
}
}
}
