#include <stdlib.h>
extern unsigned char v1 (signed int, unsigned char, unsigned char);
extern unsigned char (*v2) (signed int, unsigned char, unsigned char);
signed short v3 (signed short);
signed short (*v4) (signed short) = v3;
extern signed char v5 (signed char);
extern signed char (*v6) (signed char);
extern unsigned int v7 (signed char, signed char);
extern unsigned int (*v8) (signed char, signed char);
unsigned char v9 (signed short, unsigned short, unsigned int);
unsigned char (*v10) (signed short, unsigned short, unsigned int) = v9;
static unsigned short v11 (signed char, unsigned short, unsigned short, unsigned char);
static unsigned short (*v12) (signed char, unsigned short, unsigned short, unsigned char) = v11;
signed int v13 (signed short, unsigned short);
signed int (*v14) (signed short, unsigned short) = v13;
extern void v15 (signed int, signed short, signed int);
extern void (*v16) (signed int, signed short, signed int);
extern signed char v17 (unsigned int, signed char, unsigned int, signed int);
extern signed char (*v18) (unsigned int, signed char, unsigned int, signed int);
extern signed short v19 (signed char, unsigned short, signed char);
extern signed short (*v20) (signed char, unsigned short, signed char);
extern signed int v21 (signed int);
extern signed int (*v22) (signed int);
signed short v23 (unsigned int, signed short);
signed short (*v24) (unsigned int, signed short) = v23;
extern signed int v25 (unsigned int, unsigned short);
extern signed int (*v26) (unsigned int, unsigned short);
extern void v27 (unsigned char, signed short, unsigned int, signed short);
extern void (*v28) (unsigned char, signed short, unsigned int, signed short);
extern signed int v29 (unsigned short, signed char);
extern signed int (*v30) (unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v115 = 0;
unsigned int v114 = 4U;
unsigned int v113 = 2U;

signed short v23 (unsigned int v116, signed short v117)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned int v120 = 7U;
signed int v119 = -2;
unsigned short v118 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (signed short v121, unsigned short v122)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
unsigned int v125 = 2U;
unsigned short v124 = 4;
signed int v123 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v11 (signed char v126, unsigned short v127, unsigned short v128, unsigned char v129)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned int v132 = 5U;
unsigned char v131 = 2;
signed char v130 = -4;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v133;
signed char v134;
unsigned int v135;
signed int v136;
signed char v137;
v133 = v132 - v132;
v134 = 1 - -4;
v135 = v132 - 6U;
v136 = 1 + 3;
v137 = v17 (v133, v134, v135, v136);
history[history_index++] = (int)v137;
}
break;
case 4: 
return v127;
case 6: 
{
unsigned int v138;
signed char v139;
unsigned int v140;
signed int v141;
signed char v142;
v138 = v132 + v132;
v139 = 1 + v126;
v140 = 6U + 2U;
v141 = 2 - 3;
v142 = v17 (v138, v139, v140, v141);
history[history_index++] = (int)v142;
}
break;
case 8: 
return 2;
default: abort ();
}
}
}
}

unsigned char v9 (signed short v143, unsigned short v144, unsigned int v145)
{
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
{
for (;;) {
signed int v148 = 2;
signed int v147 = 1;
signed char v146 = 1;
trace++;
switch (trace)
{
case 1: 
{
signed char v149;
unsigned short v150;
unsigned short v151;
unsigned char v152;
unsigned short v153;
v149 = v146 - v146;
v150 = v144 + v144;
v151 = 1 + 1;
v152 = 2 - 1;
v153 = v11 (v149, v150, v151, v152);
history[history_index++] = (int)v153;
}
break;
case 5: 
{
signed char v154;
unsigned short v155;
unsigned short v156;
unsigned char v157;
unsigned short v158;
v154 = -1 - v146;
v155 = v144 + 2;
v156 = v144 + 1;
v157 = 7 + 3;
v158 = v11 (v154, v155, v156, v157);
history[history_index++] = (int)v158;
}
break;
case 9: 
return 1;
default: abort ();
}
}
}
}

signed short v3 (signed short v159)
{
history[history_index++] = (int)v159;
{
for (;;) {
unsigned short v162 = 0;
signed short v161 = 2;
unsigned int v160 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
