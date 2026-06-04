#include <stdlib.h>
extern signed short v1 (signed short, unsigned char);
extern signed short (*v2) (signed short, unsigned char);
extern signed short v3 (unsigned short, signed int, signed char, unsigned int);
extern signed short (*v4) (unsigned short, signed int, signed char, unsigned int);
extern signed int v5 (unsigned int, signed short, unsigned char, signed short);
extern signed int (*v6) (unsigned int, signed short, unsigned char, signed short);
extern signed short v7 (unsigned int, signed int);
extern signed short (*v8) (unsigned int, signed int);
signed char v9 (signed short, signed int, unsigned char, signed short);
signed char (*v10) (signed short, signed int, unsigned char, signed short) = v9;
signed short v11 (signed char, unsigned short, signed char, signed short);
signed short (*v12) (signed char, unsigned short, signed char, signed short) = v11;
extern signed char v13 (signed char, unsigned short, signed char, signed short);
extern signed char (*v14) (signed char, unsigned short, signed char, signed short);
extern unsigned short v15 (signed short);
extern unsigned short (*v16) (signed short);
unsigned int v17 (signed char, unsigned char);
unsigned int (*v18) (signed char, unsigned char) = v17;
signed char v19 (signed char, unsigned char);
signed char (*v20) (signed char, unsigned char) = v19;
extern signed char v21 (unsigned short);
extern signed char (*v22) (unsigned short);
extern unsigned int v23 (signed short, unsigned char, signed char);
extern unsigned int (*v24) (signed short, unsigned char, signed char);
extern unsigned short v25 (signed char, signed short, unsigned char);
extern unsigned short (*v26) (signed char, signed short, unsigned char);
unsigned char v27 (signed short, signed int, unsigned int);
unsigned char (*v28) (signed short, signed int, unsigned int) = v27;
extern signed int v29 (unsigned char, signed short, unsigned int, unsigned char);
extern signed int (*v30) (unsigned char, signed short, unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v122 = -2;
unsigned char v121 = 5;
signed int v120 = -1;

unsigned char v27 (signed short v123, signed int v124, unsigned int v125)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
unsigned int v128 = 0U;
unsigned int v127 = 0U;
unsigned short v126 = 0;
trace++;
switch (trace)
{
case 4: 
{
signed char v129;
signed short v130;
unsigned char v131;
unsigned short v132;
v129 = -4 - 3;
v130 = v123 - 0;
v131 = 7 - 3;
v132 = v25 (v129, v130, v131);
history[history_index++] = (int)v132;
}
break;
case 10: 
{
signed char v133;
signed short v134;
unsigned char v135;
unsigned short v136;
v133 = 2 - 3;
v134 = v123 + 2;
v135 = 7 + 2;
v136 = v25 (v133, v134, v135);
history[history_index++] = (int)v136;
}
break;
case 12: 
return 5;
default: abort ();
}
}
}
}

signed char v19 (signed char v137, unsigned char v138)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
unsigned char v141 = 3;
unsigned int v140 = 1U;
signed short v139 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (signed char v142, unsigned char v143)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
unsigned short v146 = 0;
signed int v145 = -3;
signed short v144 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed char v147, unsigned short v148, signed char v149, signed short v150)
{
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
{
for (;;) {
unsigned short v153 = 6;
signed int v152 = 1;
signed int v151 = -3;
trace++;
switch (trace)
{
case 6: 
{
signed char v154;
unsigned short v155;
signed char v156;
signed short v157;
signed char v158;
v154 = v149 - -1;
v155 = 5 - v148;
v156 = 1 - -4;
v157 = 0 - 0;
v158 = v13 (v154, v155, v156, v157);
history[history_index++] = (int)v158;
}
break;
case 8: 
return v150;
default: abort ();
}
}
}
}

signed char v9 (signed short v159, signed int v160, unsigned char v161, signed short v162)
{
history[history_index++] = (int)v159;
history[history_index++] = (int)v160;
history[history_index++] = (int)v161;
history[history_index++] = (int)v162;
{
for (;;) {
signed char v165 = 2;
signed short v164 = 3;
unsigned short v163 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
