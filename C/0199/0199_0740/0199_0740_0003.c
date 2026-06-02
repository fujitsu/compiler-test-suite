#include <stdlib.h>
unsigned char v1 (unsigned short, signed char, unsigned char);
unsigned char (*v2) (unsigned short, signed char, unsigned char) = v1;
extern unsigned short v3 (signed char);
extern unsigned short (*v4) (signed char);
void v5 (unsigned char, signed int, unsigned short, signed int);
void (*v6) (unsigned char, signed int, unsigned short, signed int) = v5;
extern void v7 (signed int, unsigned char, signed char);
extern void (*v8) (signed int, unsigned char, signed char);
extern void v11 (signed char);
extern void (*v12) (signed char);
extern signed int v13 (unsigned int, signed int, unsigned int);
extern signed int (*v14) (unsigned int, signed int, unsigned int);
extern unsigned char v15 (unsigned int);
extern unsigned char (*v16) (unsigned int);
extern unsigned char v17 (signed char, unsigned short, signed char);
extern unsigned char (*v18) (signed char, unsigned short, signed char);
extern signed int v19 (unsigned int, unsigned char, unsigned char);
extern signed int (*v20) (unsigned int, unsigned char, unsigned char);
extern void v21 (signed char, signed int);
extern void (*v22) (signed char, signed int);
extern signed short v23 (unsigned int, unsigned short, unsigned int);
extern signed short (*v24) (unsigned int, unsigned short, unsigned int);
extern signed short v27 (unsigned short, unsigned short, unsigned char, signed char);
extern signed short (*v28) (unsigned short, unsigned short, unsigned char, signed char);
signed char v29 (unsigned int, signed short, signed int);
signed char (*v30) (unsigned int, signed short, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v128 = 4;
signed char v127 = 0;
unsigned char v126 = 2;

signed char v29 (unsigned int v129, signed short v130, signed int v131)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed short v134 = -4;
signed int v133 = 0;
unsigned char v132 = 2;
trace++;
switch (trace)
{
case 3: 
return -4;
case 5: 
return 1;
case 8: 
return -4;
default: abort ();
}
}
}
}

void v5 (unsigned char v135, signed int v136, unsigned short v137, signed int v138)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed int v141 = -4;
unsigned short v140 = 3;
signed short v139 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned short v142, signed char v143, unsigned char v144)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
signed char v147 = 3;
signed char v146 = 0;
unsigned int v145 = 2U;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v148;
unsigned short v149;
unsigned char v150;
signed char v151;
signed short v152;
v148 = v142 + 3;
v149 = v142 + v142;
v150 = 6 - 7;
v151 = -4 + v146;
v152 = v27 (v148, v149, v150, v151);
history[history_index++] = (int)v152;
}
break;
case 12: 
return 4;
default: abort ();
}
}
}
}
