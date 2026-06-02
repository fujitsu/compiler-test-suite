#include <stdlib.h>
unsigned short v1 (signed int);
unsigned short (*v2) (signed int) = v1;
extern signed int v3 (unsigned short);
extern signed int (*v4) (unsigned short);
extern unsigned char v5 (unsigned char, signed short, signed int, unsigned int);
extern unsigned char (*v6) (unsigned char, signed short, signed int, unsigned int);
extern void v7 (unsigned int, signed int, signed short);
extern void (*v8) (unsigned int, signed int, signed short);
extern unsigned short v9 (signed short, signed char);
extern unsigned short (*v10) (signed short, signed char);
extern unsigned int v11 (signed int, unsigned char);
extern unsigned int (*v12) (signed int, unsigned char);
unsigned short v13 (void);
unsigned short (*v14) (void) = v13;
void v15 (unsigned short);
void (*v16) (unsigned short) = v15;
extern unsigned short v17 (unsigned short, signed int, signed int, unsigned int);
extern unsigned short (*v18) (unsigned short, signed int, signed int, unsigned int);
extern unsigned short v19 (signed int);
extern unsigned short (*v20) (signed int);
extern signed char v21 (unsigned char);
extern signed char (*v22) (unsigned char);
unsigned char v23 (unsigned int, unsigned short);
unsigned char (*v24) (unsigned int, unsigned short) = v23;
extern signed char v25 (unsigned short, signed int, signed char, signed short);
extern signed char (*v26) (unsigned short, signed int, signed char, signed short);
extern void v27 (signed char, signed short);
extern void (*v28) (signed char, signed short);
extern void v29 (signed int, signed short);
extern void (*v30) (signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v121 = 6;
signed char v120 = 0;
unsigned short v119 = 3;

unsigned char v23 (unsigned int v122, unsigned short v123)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed short v126 = 1;
signed int v125 = 3;
signed short v124 = 1;
trace++;
switch (trace)
{
case 8: 
return 0;
default: abort ();
}
}
}
}

void v15 (unsigned short v127)
{
history[history_index++] = (int)v127;
{
for (;;) {
signed char v130 = -4;
unsigned short v129 = 7;
signed short v128 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (void)
{
{
for (;;) {
signed int v133 = -2;
unsigned char v132 = 1;
signed int v131 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (signed int v134)
{
history[history_index++] = (int)v134;
{
for (;;) {
signed char v137 = 0;
signed short v136 = -1;
signed short v135 = -1;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v138;
signed short v139;
signed int v140;
unsigned int v141;
unsigned char v142;
v138 = 7 + 1;
v139 = -1 + v136;
v140 = 2 + 1;
v141 = 3U - 1U;
v142 = v5 (v138, v139, v140, v141);
history[history_index++] = (int)v142;
}
break;
case 14: 
return 4;
default: abort ();
}
}
}
}
