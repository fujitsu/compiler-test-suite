#include <stdlib.h>
signed char v3 (unsigned char);
signed char (*v4) (unsigned char) = v3;
void v5 (signed int, unsigned int, signed char);
void (*v6) (signed int, unsigned int, signed char) = v5;
unsigned short v7 (unsigned char);
unsigned short (*v8) (unsigned char) = v7;
extern unsigned int v9 (signed int, unsigned int, unsigned char);
extern unsigned int (*v10) (signed int, unsigned int, unsigned char);
extern signed short v11 (unsigned int, unsigned short, unsigned short);
extern signed short (*v12) (unsigned int, unsigned short, unsigned short);
unsigned short v13 (unsigned short, unsigned int);
unsigned short (*v14) (unsigned short, unsigned int) = v13;
extern signed short v15 (unsigned int, signed char, signed char);
extern signed short (*v16) (unsigned int, signed char, signed char);
extern signed short v17 (signed char, signed int, unsigned int, unsigned int);
extern signed short (*v18) (signed char, signed int, unsigned int, unsigned int);
extern unsigned int v19 (unsigned char);
extern unsigned int (*v20) (unsigned char);
extern signed int v21 (signed int, unsigned int, signed char);
extern signed int (*v22) (signed int, unsigned int, signed char);
extern unsigned char v23 (unsigned char);
extern unsigned char (*v24) (unsigned char);
signed char v25 (unsigned char, signed char, unsigned int);
signed char (*v26) (unsigned char, signed char, unsigned int) = v25;
extern signed int v27 (signed char, signed char, unsigned short, signed short);
extern signed int (*v28) (signed char, signed char, unsigned short, signed short);
extern unsigned short v29 (unsigned char, signed int, signed char);
extern unsigned short (*v30) (unsigned char, signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v121 = 5U;
signed char v120 = 2;
signed char v119 = -1;

signed char v25 (unsigned char v122, signed char v123, unsigned int v124)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed short v127 = -1;
unsigned int v126 = 0U;
signed int v125 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (unsigned short v128, unsigned int v129)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned int v132 = 3U;
unsigned int v131 = 3U;
unsigned int v130 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (unsigned char v133)
{
history[history_index++] = (int)v133;
{
for (;;) {
unsigned char v136 = 1;
unsigned short v135 = 2;
unsigned char v134 = 2;
trace++;
switch (trace)
{
case 3: 
{
signed char v137;
signed char v138;
unsigned short v139;
signed short v140;
signed int v141;
v137 = 2 - 1;
v138 = -4 + -1;
v139 = 5 - v135;
v140 = 2 - 1;
v141 = v27 (v137, v138, v139, v140);
history[history_index++] = (int)v141;
}
break;
case 5: 
{
signed char v142;
signed char v143;
unsigned short v144;
signed short v145;
signed int v146;
v142 = -3 - 1;
v143 = -4 - -2;
v144 = v135 - v135;
v145 = 1 + -3;
v146 = v27 (v142, v143, v144, v145);
history[history_index++] = (int)v146;
}
break;
case 7: 
return v135;
case 11: 
return 0;
default: abort ();
}
}
}
}

void v5 (signed int v147, unsigned int v148, signed char v149)
{
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
{
for (;;) {
signed int v152 = -1;
unsigned short v151 = 2;
signed char v150 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned char v153)
{
history[history_index++] = (int)v153;
{
for (;;) {
signed int v156 = 2;
unsigned char v155 = 0;
unsigned int v154 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
