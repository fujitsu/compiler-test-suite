#include <stdlib.h>
extern void v1 (signed int, signed int);
extern void (*v2) (signed int, signed int);
extern signed int v3 (unsigned short);
extern signed int (*v4) (unsigned short);
unsigned char v5 (signed short, unsigned int, signed short, unsigned short);
unsigned char (*v6) (signed short, unsigned int, signed short, unsigned short) = v5;
unsigned short v7 (unsigned short, unsigned int, signed short, signed int);
unsigned short (*v8) (unsigned short, unsigned int, signed short, signed int) = v7;
extern unsigned int v9 (signed int, unsigned char);
extern unsigned int (*v10) (signed int, unsigned char);
extern unsigned int v11 (signed char, signed char, unsigned short, signed short);
extern unsigned int (*v12) (signed char, signed char, unsigned short, signed short);
extern unsigned char v13 (unsigned int, unsigned char, signed int);
extern unsigned char (*v14) (unsigned int, unsigned char, signed int);
unsigned char v15 (signed char, unsigned int, unsigned short);
unsigned char (*v16) (signed char, unsigned int, unsigned short) = v15;
extern signed int v17 (unsigned int, unsigned int, unsigned char, signed short);
extern signed int (*v18) (unsigned int, unsigned int, unsigned char, signed short);
unsigned int v19 (unsigned short, unsigned short, unsigned short, unsigned short);
unsigned int (*v20) (unsigned short, unsigned short, unsigned short, unsigned short) = v19;
extern unsigned short v21 (signed char);
extern unsigned short (*v22) (signed char);
extern signed short v23 (unsigned int, signed int);
extern signed short (*v24) (unsigned int, signed int);
extern unsigned char v25 (unsigned char, signed char, unsigned int, signed short);
extern unsigned char (*v26) (unsigned char, signed char, unsigned int, signed short);
unsigned int v27 (unsigned int, unsigned int);
unsigned int (*v28) (unsigned int, unsigned int) = v27;
extern signed char v29 (signed char);
extern signed char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v125 = -4;
unsigned int v124 = 4U;
signed char v123 = -1;

unsigned int v27 (unsigned int v126, unsigned int v127)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
signed int v130 = 1;
unsigned int v129 = 6U;
unsigned short v128 = 2;
trace++;
switch (trace)
{
case 9: 
return 5U;
case 11: 
return v127;
default: abort ();
}
}
}
}

unsigned int v19 (unsigned short v131, unsigned short v132, unsigned short v133, unsigned short v134)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed int v137 = -4;
signed int v136 = -4;
signed short v135 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (signed char v138, unsigned int v139, unsigned short v140)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
unsigned char v143 = 1;
signed int v142 = -3;
signed char v141 = -2;
trace++;
switch (trace)
{
case 4: 
{
signed int v144;
unsigned char v145;
unsigned int v146;
v144 = v142 + v142;
v145 = 1 - v143;
v146 = v9 (v144, v145);
history[history_index++] = (int)v146;
}
break;
case 6: 
{
signed char v147;
signed char v148;
unsigned short v149;
signed short v150;
unsigned int v151;
v147 = v141 + v141;
v148 = v138 - v138;
v149 = 1 - v140;
v150 = -1 + -1;
v151 = v11 (v147, v148, v149, v150);
history[history_index++] = (int)v151;
}
break;
case 14: 
return v143;
default: abort ();
}
}
}
}

unsigned short v7 (unsigned short v152, unsigned int v153, signed short v154, signed int v155)
{
history[history_index++] = (int)v152;
history[history_index++] = (int)v153;
history[history_index++] = (int)v154;
history[history_index++] = (int)v155;
{
for (;;) {
signed char v158 = -4;
signed int v157 = -3;
unsigned short v156 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (signed short v159, unsigned int v160, signed short v161, unsigned short v162)
{
history[history_index++] = (int)v159;
history[history_index++] = (int)v160;
history[history_index++] = (int)v161;
history[history_index++] = (int)v162;
{
for (;;) {
signed int v165 = 2;
unsigned char v164 = 6;
unsigned int v163 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
