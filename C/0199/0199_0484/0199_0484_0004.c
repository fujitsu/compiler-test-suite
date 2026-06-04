#include <stdlib.h>
extern signed int v1 (unsigned short, signed int);
extern signed int (*v2) (unsigned short, signed int);
extern unsigned int v3 (unsigned int);
extern unsigned int (*v4) (unsigned int);
signed short v5 (void);
signed short (*v6) (void) = v5;
void v7 (unsigned int, unsigned int, unsigned char, unsigned short);
void (*v8) (unsigned int, unsigned int, unsigned char, unsigned short) = v7;
unsigned short v9 (unsigned short, signed short);
unsigned short (*v10) (unsigned short, signed short) = v9;
extern unsigned char v11 (unsigned short, unsigned short, signed char, unsigned int);
extern unsigned char (*v12) (unsigned short, unsigned short, signed char, unsigned int);
unsigned int v13 (void);
unsigned int (*v14) (void) = v13;
extern signed int v15 (unsigned short, signed char, signed char, unsigned char);
extern signed int (*v16) (unsigned short, signed char, signed char, unsigned char);
extern signed short v17 (signed char);
extern signed short (*v18) (signed char);
extern void v19 (signed short, unsigned short);
extern void (*v20) (signed short, unsigned short);
signed short v21 (unsigned char, unsigned char);
signed short (*v22) (unsigned char, unsigned char) = v21;
extern signed char v23 (unsigned int);
extern signed char (*v24) (unsigned int);
extern signed char v25 (signed short, unsigned int, unsigned int, unsigned char);
extern signed char (*v26) (signed short, unsigned int, unsigned int, unsigned char);
extern unsigned char v29 (signed int);
extern unsigned char (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v122 = 1U;
signed int v121 = 1;
signed int v120 = -3;

signed short v21 (unsigned char v123, unsigned char v124)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned char v127 = 4;
signed int v126 = -2;
signed char v125 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (void)
{
{
for (;;) {
signed short v130 = 0;
signed int v129 = 0;
signed int v128 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (unsigned short v131, signed short v132)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed int v135 = -2;
unsigned int v134 = 4U;
unsigned int v133 = 5U;
trace++;
switch (trace)
{
case 1: 
{
signed short v136;
unsigned int v137;
unsigned int v138;
unsigned char v139;
signed char v140;
v136 = -3 + -2;
v137 = 4U - 1U;
v138 = 4U - v134;
v139 = 4 - 6;
v140 = v25 (v136, v137, v138, v139);
history[history_index++] = (int)v140;
}
break;
case 15: 
return 4;
default: abort ();
}
}
}
}

void v7 (unsigned int v141, unsigned int v142, unsigned char v143, unsigned short v144)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
unsigned int v147 = 0U;
unsigned int v146 = 5U;
unsigned int v145 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (void)
{
{
for (;;) {
signed short v150 = -4;
unsigned int v149 = 5U;
unsigned short v148 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
