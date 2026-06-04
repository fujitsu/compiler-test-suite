#include <stdlib.h>
extern unsigned char v3 (signed int);
extern unsigned char (*v4) (signed int);
extern unsigned short v7 (signed char, unsigned char, unsigned int);
extern unsigned short (*v8) (signed char, unsigned char, unsigned int);
unsigned char v9 (unsigned int, signed short);
unsigned char (*v10) (unsigned int, signed short) = v9;
extern unsigned char v11 (unsigned char, signed short, signed char, signed short);
extern unsigned char (*v12) (unsigned char, signed short, signed char, signed short);
unsigned short v13 (unsigned int, signed short, signed char);
unsigned short (*v14) (unsigned int, signed short, signed char) = v13;
signed char v15 (unsigned char);
signed char (*v16) (unsigned char) = v15;
extern unsigned short v17 (unsigned int, signed int);
extern unsigned short (*v18) (unsigned int, signed int);
signed int v19 (unsigned short);
signed int (*v20) (unsigned short) = v19;
unsigned int v21 (unsigned char, unsigned int, unsigned int, signed int);
unsigned int (*v22) (unsigned char, unsigned int, unsigned int, signed int) = v21;
extern void v23 (unsigned short, signed char, signed char);
extern void (*v24) (unsigned short, signed char, signed char);
extern unsigned short v25 (unsigned short, signed int, unsigned int);
extern unsigned short (*v26) (unsigned short, signed int, unsigned int);
signed int v29 (signed char, signed short);
signed int (*v30) (signed char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v119 = 4;
signed short v118 = -3;
unsigned int v117 = 7U;

signed int v29 (signed char v120, signed short v121)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned char v124 = 0;
unsigned char v123 = 7;
unsigned int v122 = 2U;
trace++;
switch (trace)
{
case 9: 
return 0;
default: abort ();
}
}
}
}

unsigned int v21 (unsigned char v125, unsigned int v126, unsigned int v127, signed int v128)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
signed char v131 = -2;
signed int v130 = -4;
signed short v129 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (unsigned short v132)
{
history[history_index++] = (int)v132;
{
for (;;) {
unsigned short v135 = 5;
signed short v134 = -1;
signed short v133 = 3;
trace++;
switch (trace)
{
case 3: 
{
signed char v136;
unsigned char v137;
unsigned int v138;
unsigned short v139;
v136 = -4 + -3;
v137 = 6 - 7;
v138 = 0U - 1U;
v139 = v7 (v136, v137, v138);
history[history_index++] = (int)v139;
}
break;
case 13: 
return 0;
default: abort ();
}
}
}
}

signed char v15 (unsigned char v140)
{
history[history_index++] = (int)v140;
{
for (;;) {
signed char v143 = -4;
signed short v142 = 0;
signed short v141 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (unsigned int v144, signed short v145, signed char v146)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
signed short v149 = -4;
signed short v148 = 3;
unsigned char v147 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (unsigned int v150, signed short v151)
{
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
{
for (;;) {
unsigned int v154 = 2U;
unsigned short v153 = 3;
signed int v152 = -3;
trace++;
switch (trace)
{
case 7: 
{
unsigned short v155;
signed int v156;
unsigned int v157;
unsigned short v158;
v155 = v153 - 6;
v156 = v152 + v152;
v157 = v154 + v150;
v158 = v25 (v155, v156, v157);
history[history_index++] = (int)v158;
}
break;
case 11: 
return 4;
default: abort ();
}
}
}
}
