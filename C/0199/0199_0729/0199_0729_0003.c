#include <stdlib.h>
unsigned int v1 (signed int, signed short, signed char, signed short);
unsigned int (*v2) (signed int, signed short, signed char, signed short) = v1;
signed int v3 (signed int, unsigned int);
signed int (*v4) (signed int, unsigned int) = v3;
extern unsigned int v5 (unsigned char);
extern unsigned int (*v6) (unsigned char);
extern void v7 (signed char, signed char, signed int, unsigned short);
extern void (*v8) (signed char, signed char, signed int, unsigned short);
extern unsigned char v9 (signed int, unsigned short, unsigned char);
extern unsigned char (*v10) (signed int, unsigned short, unsigned char);
extern unsigned int v11 (signed char);
extern unsigned int (*v12) (signed char);
extern unsigned char v13 (unsigned int, unsigned int, signed short, signed int);
extern unsigned char (*v14) (unsigned int, unsigned int, signed short, signed int);
void v15 (signed char, unsigned short, unsigned int);
void (*v16) (signed char, unsigned short, unsigned int) = v15;
unsigned int v17 (signed int);
unsigned int (*v18) (signed int) = v17;
extern unsigned int v19 (signed short, signed char, unsigned int, unsigned int);
extern unsigned int (*v20) (signed short, signed char, unsigned int, unsigned int);
extern signed short v21 (unsigned short, unsigned char, signed char);
extern signed short (*v22) (unsigned short, unsigned char, signed char);
extern signed char v23 (unsigned char, signed char, signed char);
extern signed char (*v24) (unsigned char, signed char, signed char);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern signed int v27 (unsigned short, unsigned int, signed int);
extern signed int (*v28) (unsigned short, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v116 = 4;
unsigned short v115 = 2;
signed char v114 = -1;

unsigned int v17 (signed int v117)
{
history[history_index++] = (int)v117;
{
for (;;) {
signed char v120 = -4;
unsigned short v119 = 1;
signed int v118 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (signed char v121, unsigned short v122, unsigned int v123)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed short v126 = -3;
signed char v125 = 0;
signed int v124 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed int v127, unsigned int v128)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
signed int v131 = -2;
unsigned int v130 = 6U;
signed short v129 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (signed int v132, signed short v133, signed char v134, signed short v135)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
signed int v138 = -2;
unsigned int v137 = 6U;
unsigned short v136 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed char v139;
signed char v140;
signed int v141;
unsigned short v142;
v139 = v134 + -4;
v140 = v134 + v134;
v141 = -3 + v132;
v142 = v136 + v136;
v7 (v139, v140, v141, v142);
}
break;
case 12: 
return 7U;
default: abort ();
}
}
}
}
