#include <stdlib.h>
unsigned char v1 (signed short, unsigned short, signed short);
unsigned char (*v2) (signed short, unsigned short, signed short) = v1;
unsigned char v3 (unsigned char);
unsigned char (*v4) (unsigned char) = v3;
static unsigned short v5 (unsigned int, signed char, signed int, signed char);
static unsigned short (*v6) (unsigned int, signed char, signed int, signed char) = v5;
extern signed int v7 (signed int, signed short);
extern signed int (*v8) (signed int, signed short);
extern unsigned short v9 (unsigned short, signed int, signed char);
extern unsigned short (*v10) (unsigned short, signed int, signed char);
signed short v11 (signed int, signed int);
signed short (*v12) (signed int, signed int) = v11;
extern unsigned int v13 (signed short, signed short, unsigned char, signed short);
extern unsigned int (*v14) (signed short, signed short, unsigned char, signed short);
extern unsigned short v15 (signed int, signed int);
extern unsigned short (*v16) (signed int, signed int);
extern signed short v17 (unsigned char, signed short, signed char, unsigned int);
extern signed short (*v18) (unsigned char, signed short, signed char, unsigned int);
signed short v19 (void);
signed short (*v20) (void) = v19;
extern unsigned char v21 (signed int, signed char);
extern unsigned char (*v22) (signed int, signed char);
extern unsigned int v23 (unsigned int);
extern unsigned int (*v24) (unsigned int);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern unsigned short v27 (signed short, signed char);
extern unsigned short (*v28) (signed short, signed char);
extern unsigned char v29 (unsigned short, unsigned short, signed short, unsigned short);
extern unsigned char (*v30) (unsigned short, unsigned short, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v113 = 0;
signed char v112 = -2;
unsigned int v111 = 7U;

signed short v19 (void)
{
{
for (;;) {
unsigned short v116 = 1;
unsigned int v115 = 4U;
signed char v114 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed int v117, signed int v118)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed short v121 = 3;
signed int v120 = -4;
signed char v119 = 2;
trace++;
switch (trace)
{
case 7: 
{
signed int v122;
v122 = v25 ();
history[history_index++] = (int)v122;
}
break;
case 9: 
{
signed int v123;
v123 = v25 ();
history[history_index++] = (int)v123;
}
break;
case 13: 
return -3;
default: abort ();
}
}
}
}

static unsigned short v5 (unsigned int v124, signed char v125, signed int v126, signed char v127)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned char v130 = 6;
signed short v129 = -3;
signed char v128 = -3;
trace++;
switch (trace)
{
case 1: 
{
signed short v131;
signed short v132;
unsigned char v133;
signed short v134;
unsigned int v135;
v131 = v129 + -2;
v132 = 1 - v129;
v133 = v130 + 0;
v134 = v129 + v129;
v135 = v13 (v131, v132, v133, v134);
history[history_index++] = (int)v135;
}
break;
case 3: 
{
signed short v136;
signed short v137;
unsigned char v138;
signed short v139;
unsigned int v140;
v136 = v129 + v129;
v137 = v129 - -1;
v138 = v130 - 5;
v139 = v129 + -3;
v140 = v13 (v136, v137, v138, v139);
history[history_index++] = (int)v140;
}
break;
case 5: 
{
signed int v141;
signed short v142;
signed int v143;
v141 = v126 + -2;
v142 = v129 + v129;
v143 = v7 (v141, v142);
history[history_index++] = (int)v143;
}
break;
case 15: 
return 4;
default: abort ();
}
}
}
}

unsigned char v3 (unsigned char v144)
{
history[history_index++] = (int)v144;
{
for (;;) {
signed int v147 = -3;
signed short v146 = -3;
signed int v145 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (signed short v148, unsigned short v149, signed short v150)
{
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
{
for (;;) {
unsigned char v153 = 7;
unsigned char v152 = 6;
signed char v151 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v154;
signed char v155;
signed int v156;
signed char v157;
unsigned short v158;
v154 = 3U - 5U;
v155 = -3 + v151;
v156 = -1 + -1;
v157 = 1 + v151;
v158 = v5 (v154, v155, v156, v157);
history[history_index++] = (int)v158;
}
break;
case 16: 
return v152;
default: abort ();
}
}
}
}
