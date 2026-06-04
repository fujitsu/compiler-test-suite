#include <stdlib.h>
extern unsigned short v1 (unsigned int, unsigned char, signed short, unsigned char);
extern unsigned short (*v2) (unsigned int, unsigned char, signed short, unsigned char);
extern unsigned int v3 (unsigned char);
extern unsigned int (*v4) (unsigned char);
unsigned char v5 (signed int, signed short);
unsigned char (*v6) (signed int, signed short) = v5;
extern signed char v7 (signed int, signed char);
extern signed char (*v8) (signed int, signed char);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern signed int v11 (unsigned int, unsigned int, signed short);
extern signed int (*v12) (unsigned int, unsigned int, signed short);
extern unsigned short v13 (unsigned short, signed short, signed int, unsigned short);
extern unsigned short (*v14) (unsigned short, signed short, signed int, unsigned short);
extern signed char v15 (signed int, unsigned int, unsigned short, unsigned int);
extern signed char (*v16) (signed int, unsigned int, unsigned short, unsigned int);
extern unsigned int v17 (signed char, signed int, signed short, signed char);
extern unsigned int (*v18) (signed char, signed int, signed short, signed char);
signed int v19 (unsigned short);
signed int (*v20) (unsigned short) = v19;
signed short v21 (signed int, unsigned int);
signed short (*v22) (signed int, unsigned int) = v21;
extern signed int v23 (void);
extern signed int (*v24) (void);
signed char v25 (unsigned char, unsigned int, unsigned char, unsigned char);
signed char (*v26) (unsigned char, unsigned int, unsigned char, unsigned char) = v25;
unsigned char v27 (unsigned char, signed char);
unsigned char (*v28) (unsigned char, signed char) = v27;
extern unsigned short v29 (unsigned char, unsigned int, unsigned short, unsigned short);
extern unsigned short (*v30) (unsigned char, unsigned int, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v117 = 0;
unsigned int v116 = 0U;
unsigned char v115 = 7;

unsigned char v27 (unsigned char v118, signed char v119)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned short v122 = 7;
signed char v121 = 1;
signed char v120 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v25 (unsigned char v123, unsigned int v124, unsigned char v125, unsigned char v126)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed char v129 = 2;
signed short v128 = -1;
signed short v127 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (signed int v130, unsigned int v131)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed char v134 = -4;
unsigned char v133 = 3;
signed int v132 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (unsigned short v135)
{
history[history_index++] = (int)v135;
{
for (;;) {
signed char v138 = 3;
signed char v137 = 1;
signed int v136 = 3;
trace++;
switch (trace)
{
case 2: 
return v136;
case 4: 
{
unsigned char v139;
unsigned int v140;
unsigned short v141;
unsigned short v142;
unsigned short v143;
v139 = 4 - 6;
v140 = 0U - 7U;
v141 = 1 + 3;
v142 = v135 - v135;
v143 = v29 (v139, v140, v141, v142);
history[history_index++] = (int)v143;
}
break;
case 6: 
{
unsigned char v144;
unsigned int v145;
unsigned short v146;
unsigned short v147;
unsigned short v148;
v144 = 4 + 0;
v145 = 4U - 2U;
v146 = 5 + 7;
v147 = 7 - v135;
v148 = v29 (v144, v145, v146, v147);
history[history_index++] = (int)v148;
}
break;
case 8: 
{
unsigned char v149;
unsigned int v150;
unsigned short v151;
unsigned short v152;
unsigned short v153;
v149 = 1 + 7;
v150 = 2U + 4U;
v151 = 5 - v135;
v152 = v135 - 4;
v153 = v29 (v149, v150, v151, v152);
history[history_index++] = (int)v153;
}
break;
case 10: 
return 2;
default: abort ();
}
}
}
}

unsigned char v5 (signed int v154, signed short v155)
{
history[history_index++] = (int)v154;
history[history_index++] = (int)v155;
{
for (;;) {
signed char v158 = 2;
unsigned short v157 = 0;
signed int v156 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
