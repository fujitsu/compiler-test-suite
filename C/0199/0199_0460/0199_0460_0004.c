#include <stdlib.h>
signed short v1 (signed int, signed int, signed short, signed int);
signed short (*v2) (signed int, signed int, signed short, signed int) = v1;
extern signed char v3 (signed char);
extern signed char (*v4) (signed char);
extern unsigned char v5 (unsigned char, signed short, unsigned char, signed short);
extern unsigned char (*v6) (unsigned char, signed short, unsigned char, signed short);
extern unsigned int v7 (unsigned char);
extern unsigned int (*v8) (unsigned char);
extern signed char v9 (unsigned short, signed short, signed char, unsigned int);
extern signed char (*v10) (unsigned short, signed short, signed char, unsigned int);
void v11 (unsigned short, signed short);
void (*v12) (unsigned short, signed short) = v11;
signed short v13 (unsigned int, signed int, signed char);
signed short (*v14) (unsigned int, signed int, signed char) = v13;
extern unsigned int v15 (signed int, signed short);
extern unsigned int (*v16) (signed int, signed short);
extern unsigned int v19 (unsigned int, unsigned short, unsigned int);
extern unsigned int (*v20) (unsigned int, unsigned short, unsigned int);
extern unsigned int v21 (signed char);
extern unsigned int (*v22) (signed char);
extern unsigned short v23 (signed short, unsigned short, signed char, unsigned char);
extern unsigned short (*v24) (signed short, unsigned short, signed char, unsigned char);
extern signed int v25 (unsigned char, signed char, unsigned int, unsigned short);
extern signed int (*v26) (unsigned char, signed char, unsigned int, unsigned short);
signed int v27 (signed char);
signed int (*v28) (signed char) = v27;
static signed int v29 (signed int, unsigned char, unsigned int, unsigned short);
static signed int (*v30) (signed int, unsigned char, unsigned int, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v123 = 2;
signed char v122 = -1;
unsigned char v121 = 6;

static signed int v29 (signed int v124, unsigned char v125, unsigned int v126, unsigned short v127)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned char v130 = 0;
unsigned short v129 = 0;
signed short v128 = -2;
trace++;
switch (trace)
{
case 1: 
return 3;
default: abort ();
}
}
}
}

signed int v27 (signed char v131)
{
history[history_index++] = (int)v131;
{
for (;;) {
signed char v134 = -2;
unsigned int v133 = 3U;
signed char v132 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (unsigned int v135, signed int v136, signed char v137)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
unsigned char v140 = 4;
signed int v139 = 1;
unsigned int v138 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (unsigned short v141, signed short v142)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
signed int v145 = -2;
signed char v144 = 1;
signed int v143 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed int v146, signed int v147, signed short v148, signed int v149)
{
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
{
for (;;) {
signed short v152 = 3;
unsigned int v151 = 7U;
signed int v150 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed int v153;
unsigned char v154;
unsigned int v155;
unsigned short v156;
signed int v157;
v153 = v147 - v150;
v154 = 3 + 3;
v155 = 5U - 3U;
v156 = 0 - 7;
v157 = v29 (v153, v154, v155, v156);
history[history_index++] = (int)v157;
}
break;
case 2: 
return v148;
case 3: 
{
unsigned char v158;
signed short v159;
unsigned char v160;
signed short v161;
unsigned char v162;
v158 = 5 + 2;
v159 = 0 - v148;
v160 = 3 + 6;
v161 = v148 - v152;
v162 = v5 (v158, v159, v160, v161);
history[history_index++] = (int)v162;
}
break;
case 13: 
return v148;
default: abort ();
}
}
}
}
