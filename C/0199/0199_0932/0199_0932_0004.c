#include <stdlib.h>
void v1 (unsigned int);
void (*v2) (unsigned int) = v1;
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern void v5 (void);
extern void (*v6) (void);
extern signed int v7 (unsigned int, unsigned int, signed short);
extern signed int (*v8) (unsigned int, unsigned int, signed short);
unsigned short v9 (unsigned char, signed short, signed short);
unsigned short (*v10) (unsigned char, signed short, signed short) = v9;
signed char v11 (void);
signed char (*v12) (void) = v11;
extern signed int v13 (void);
extern signed int (*v14) (void);
extern void v15 (signed short);
extern void (*v16) (signed short);
extern unsigned short v17 (unsigned int, unsigned char, signed int, signed char);
extern unsigned short (*v18) (unsigned int, unsigned char, signed int, signed char);
signed char v19 (void);
signed char (*v20) (void) = v19;
extern signed short v21 (unsigned short, signed int, unsigned short);
extern signed short (*v22) (unsigned short, signed int, unsigned short);
extern void v23 (unsigned short);
extern void (*v24) (unsigned short);
extern signed char v25 (signed short, unsigned short, unsigned int);
extern signed char (*v26) (signed short, unsigned short, unsigned int);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern void v29 (signed char, signed int, signed short, signed short);
extern void (*v30) (signed char, signed int, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v120 = 0;
signed int v119 = -3;
signed char v118 = -1;

signed char v19 (void)
{
{
for (;;) {
signed int v123 = -3;
signed int v122 = 1;
unsigned char v121 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (void)
{
{
for (;;) {
unsigned int v126 = 4U;
unsigned char v125 = 6;
unsigned short v124 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (unsigned char v127, signed short v128, signed short v129)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed char v132 = -2;
unsigned char v131 = 2;
signed short v130 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (unsigned int v133)
{
history[history_index++] = (int)v133;
{
for (;;) {
unsigned short v136 = 3;
unsigned short v135 = 1;
unsigned char v134 = 5;
trace++;
switch (trace)
{
case 0: 
return;
case 1: 
{
unsigned int v137;
unsigned int v138;
signed short v139;
signed int v140;
v137 = 7U + 4U;
v138 = 2U - v133;
v139 = -1 + -3;
v140 = v7 (v137, v138, v139);
history[history_index++] = (int)v140;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}
