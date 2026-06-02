#include <stdlib.h>
extern signed int v1 (signed short, unsigned char, unsigned short, unsigned int);
extern signed int (*v2) (signed short, unsigned char, unsigned short, unsigned int);
extern unsigned char v5 (unsigned short, unsigned int, unsigned char, unsigned char);
extern unsigned char (*v6) (unsigned short, unsigned int, unsigned char, unsigned char);
unsigned short v7 (signed char, unsigned short);
unsigned short (*v8) (signed char, unsigned short) = v7;
extern signed short v9 (void);
extern signed short (*v10) (void);
extern void v11 (unsigned int, signed int, signed short);
extern void (*v12) (unsigned int, signed int, signed short);
signed short v15 (unsigned int, unsigned char, unsigned char);
signed short (*v16) (unsigned int, unsigned char, unsigned char) = v15;
unsigned int v17 (signed short, signed char, signed short, signed short);
unsigned int (*v18) (signed short, signed char, signed short, signed short) = v17;
extern unsigned char v19 (unsigned char, unsigned int, signed int, unsigned short);
extern unsigned char (*v20) (unsigned char, unsigned int, signed int, unsigned short);
void v21 (signed char, signed int, signed int);
void (*v22) (signed char, signed int, signed int) = v21;
extern signed int v23 (signed short, unsigned short);
extern signed int (*v24) (signed short, unsigned short);
extern signed char v25 (unsigned int, unsigned char);
extern signed char (*v26) (unsigned int, unsigned char);
extern signed char v27 (signed int);
extern signed char (*v28) (signed int);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v122 = 7;
unsigned char v121 = 0;
signed int v120 = 3;

void v21 (signed char v123, signed int v124, signed int v125)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed short v128 = -3;
unsigned short v127 = 6;
unsigned int v126 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (signed short v129, signed char v130, signed short v131, signed short v132)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed short v135 = -4;
unsigned int v134 = 7U;
unsigned int v133 = 1U;
trace++;
switch (trace)
{
case 1: 
return v133;
case 8: 
{
unsigned char v136;
unsigned int v137;
signed int v138;
unsigned short v139;
unsigned char v140;
v136 = 6 - 4;
v137 = v134 + 0U;
v138 = 3 - -1;
v139 = 2 - 1;
v140 = v19 (v136, v137, v138, v139);
history[history_index++] = (int)v140;
}
break;
case 10: 
{
unsigned char v141;
unsigned int v142;
signed int v143;
unsigned short v144;
unsigned char v145;
v141 = 2 - 6;
v142 = v134 + v134;
v143 = -4 - -2;
v144 = 1 - 7;
v145 = v19 (v141, v142, v143, v144);
history[history_index++] = (int)v145;
}
break;
case 12: 
return v134;
default: abort ();
}
}
}
}

signed short v15 (unsigned int v146, unsigned char v147, unsigned char v148)
{
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
{
for (;;) {
signed int v151 = -4;
signed int v150 = -4;
unsigned int v149 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed char v152, unsigned short v153)
{
history[history_index++] = (int)v152;
history[history_index++] = (int)v153;
{
for (;;) {
unsigned int v156 = 3U;
unsigned short v155 = 6;
unsigned char v154 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
