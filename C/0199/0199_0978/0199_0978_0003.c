#include <stdlib.h>
extern unsigned char v1 (unsigned short, signed char, unsigned short);
extern unsigned char (*v2) (unsigned short, signed char, unsigned short);
extern signed short v3 (unsigned int, signed int, signed char, unsigned short);
extern signed short (*v4) (unsigned int, signed int, signed char, unsigned short);
signed int v5 (signed short);
signed int (*v6) (signed short) = v5;
extern signed int v7 (signed short, unsigned char);
extern signed int (*v8) (signed short, unsigned char);
unsigned int v9 (signed char, signed char, unsigned short);
unsigned int (*v10) (signed char, signed char, unsigned short) = v9;
extern unsigned short v11 (unsigned char);
extern unsigned short (*v12) (unsigned char);
extern unsigned char v13 (signed int, signed char);
extern unsigned char (*v14) (signed int, signed char);
extern signed int v15 (unsigned char, unsigned int);
extern signed int (*v16) (unsigned char, unsigned int);
unsigned char v17 (unsigned short, unsigned int, unsigned char, unsigned char);
unsigned char (*v18) (unsigned short, unsigned int, unsigned char, unsigned char) = v17;
extern unsigned char v19 (unsigned int, signed short, unsigned char, signed int);
extern unsigned char (*v20) (unsigned int, signed short, unsigned char, signed int);
signed int v21 (unsigned char, unsigned int, signed int);
signed int (*v22) (unsigned char, unsigned int, signed int) = v21;
extern signed int v23 (unsigned char);
extern signed int (*v24) (unsigned char);
extern signed int v25 (unsigned int, unsigned int);
extern signed int (*v26) (unsigned int, unsigned int);
extern void v27 (unsigned int, unsigned char, unsigned int);
extern void (*v28) (unsigned int, unsigned char, unsigned int);
extern signed int v29 (signed int);
extern signed int (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v119 = 2;
unsigned char v118 = 2;
unsigned short v117 = 5;

signed int v21 (unsigned char v120, unsigned int v121, signed int v122)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
unsigned short v125 = 7;
unsigned char v124 = 5;
unsigned short v123 = 3;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v126;
unsigned int v127;
signed int v128;
v126 = 5U - v121;
v127 = 4U - v121;
v128 = v25 (v126, v127);
history[history_index++] = (int)v128;
}
break;
case 7: 
{
unsigned char v129;
signed int v130;
v129 = 7 - 0;
v130 = v23 (v129);
history[history_index++] = (int)v130;
}
break;
case 9: 
return v122;
default: abort ();
}
}
}
}

unsigned char v17 (unsigned short v131, unsigned int v132, unsigned char v133, unsigned char v134)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed int v137 = -4;
signed short v136 = 2;
unsigned char v135 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (signed char v138, signed char v139, unsigned short v140)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
signed short v143 = 1;
signed char v142 = 3;
signed short v141 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (signed short v144)
{
history[history_index++] = (int)v144;
{
for (;;) {
signed short v147 = 1;
unsigned short v146 = 1;
signed int v145 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
