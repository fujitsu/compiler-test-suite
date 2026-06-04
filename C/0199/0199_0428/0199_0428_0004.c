#include <stdlib.h>
signed int v1 (signed char, unsigned short, unsigned char, signed int);
signed int (*v2) (signed char, unsigned short, unsigned char, signed int) = v1;
extern signed char v3 (signed int, unsigned short, signed char);
extern signed char (*v4) (signed int, unsigned short, signed char);
extern unsigned char v5 (signed char, unsigned short, unsigned char);
extern unsigned char (*v6) (signed char, unsigned short, unsigned char);
signed char v7 (unsigned char, signed int, signed short, unsigned int);
signed char (*v8) (unsigned char, signed int, signed short, unsigned int) = v7;
extern unsigned short v9 (unsigned char, unsigned int, unsigned int, signed short);
extern unsigned short (*v10) (unsigned char, unsigned int, unsigned int, signed short);
extern unsigned int v11 (signed short, signed int, unsigned char);
extern unsigned int (*v12) (signed short, signed int, unsigned char);
void v13 (signed short);
void (*v14) (signed short) = v13;
extern signed short v15 (signed int);
extern signed short (*v16) (signed int);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern signed int v19 (signed int, unsigned char, unsigned int);
extern signed int (*v20) (signed int, unsigned char, unsigned int);
unsigned char v21 (void);
unsigned char (*v22) (void) = v21;
extern signed int v23 (signed char);
extern signed int (*v24) (signed char);
extern unsigned char v27 (unsigned int, unsigned char, signed char);
extern unsigned char (*v28) (unsigned int, unsigned char, signed char);
extern unsigned short v29 (unsigned short, signed int, unsigned int, unsigned int);
extern unsigned short (*v30) (unsigned short, signed int, unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v127 = -3;
signed char v126 = -2;
unsigned short v125 = 2;

unsigned char v21 (void)
{
{
for (;;) {
unsigned int v130 = 7U;
unsigned int v129 = 7U;
signed short v128 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (signed short v131)
{
history[history_index++] = (int)v131;
{
for (;;) {
unsigned char v134 = 7;
unsigned short v133 = 5;
unsigned char v132 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (unsigned char v135, signed int v136, signed short v137, unsigned int v138)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
unsigned int v141 = 0U;
signed short v140 = -3;
unsigned char v139 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (signed char v142, unsigned short v143, unsigned char v144, signed int v145)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
{
for (;;) {
unsigned int v148 = 5U;
signed char v147 = -1;
signed int v146 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed short v149;
signed int v150;
unsigned char v151;
unsigned int v152;
v149 = -3 - 2;
v150 = v146 - v146;
v151 = 3 + v144;
v152 = v11 (v149, v150, v151);
history[history_index++] = (int)v152;
}
break;
case 14: 
return v146;
default: abort ();
}
}
}
}
