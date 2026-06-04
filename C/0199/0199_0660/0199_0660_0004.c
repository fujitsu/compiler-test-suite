#include <stdlib.h>
extern unsigned char v3 (unsigned char);
extern unsigned char (*v4) (unsigned char);
extern signed char v5 (unsigned int, unsigned int);
extern signed char (*v6) (unsigned int, unsigned int);
signed int v7 (unsigned int);
signed int (*v8) (unsigned int) = v7;
extern unsigned short v9 (signed char);
extern unsigned short (*v10) (signed char);
extern signed short v13 (unsigned int, signed char, signed int);
extern signed short (*v14) (unsigned int, signed char, signed int);
unsigned int v15 (unsigned int, unsigned int, unsigned int);
unsigned int (*v16) (unsigned int, unsigned int, unsigned int) = v15;
extern signed char v17 (unsigned char, unsigned short);
extern signed char (*v18) (unsigned char, unsigned short);
extern signed char v19 (signed int, signed int);
extern signed char (*v20) (signed int, signed int);
unsigned int v21 (unsigned char, unsigned int, unsigned short);
unsigned int (*v22) (unsigned char, unsigned int, unsigned short) = v21;
extern signed int v23 (unsigned int, unsigned char);
extern signed int (*v24) (unsigned int, unsigned char);
unsigned char v25 (signed char, unsigned char, signed char, unsigned short);
unsigned char (*v26) (signed char, unsigned char, signed char, unsigned short) = v25;
extern unsigned char v27 (signed int, signed char, signed char, unsigned short);
extern unsigned char (*v28) (signed int, signed char, signed char, unsigned short);
extern signed int v29 (unsigned int);
extern signed int (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v127 = 3U;
unsigned short v126 = 1;
signed int v125 = 3;

unsigned char v25 (signed char v128, unsigned char v129, signed char v130, unsigned short v131)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed char v134 = 0;
signed int v133 = -1;
unsigned int v132 = 4U;
trace++;
switch (trace)
{
case 10: 
{
signed int v135;
signed char v136;
signed char v137;
unsigned short v138;
unsigned char v139;
v135 = v133 - v133;
v136 = v130 - v128;
v137 = v128 + v130;
v138 = 4 - 5;
v139 = v27 (v135, v136, v137, v138);
history[history_index++] = (int)v139;
}
break;
case 12: 
return 6;
default: abort ();
}
}
}
}

unsigned int v21 (unsigned char v140, unsigned int v141, unsigned short v142)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
signed char v145 = -4;
signed int v144 = -3;
unsigned int v143 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (unsigned int v146, unsigned int v147, unsigned int v148)
{
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
{
for (;;) {
signed char v151 = 2;
unsigned char v150 = 4;
signed short v149 = 1;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v152;
unsigned short v153;
signed char v154;
v152 = v150 + v150;
v153 = 6 - 3;
v154 = v17 (v152, v153);
history[history_index++] = (int)v154;
}
break;
case 7: 
return v148;
default: abort ();
}
}
}
}

signed int v7 (unsigned int v155)
{
history[history_index++] = (int)v155;
{
for (;;) {
signed short v158 = -3;
unsigned int v157 = 3U;
signed short v156 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
